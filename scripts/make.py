#!/usr/bin/env python3

from distutils.dir_util import remove_tree
import os
import itertools
import hashlib
import subprocess
import sys
import fileinput
import shutil
import fnmatch
import glob

############
#Options go here.
############

FREE_SPACE = 0xF00000
REBUILD_ASSETS = 0 ##Temporary. To be shifted to config.txt
BUNDLE_ASSETS = 0 ##Temporary. To be shifted to config.txt

#############
#Options end here.
#############

		

def align_offset(offset):
	while (offset % 4) != 0:
		offset += 1
	return offset

def find_offset_to_put(rom, needed_bytes, start_loc):
	offset = start_loc
	found_bytes = 0
	while (found_bytes < needed_bytes):
		for i in range (0, needed_bytes):
			rom.seek(offset + i)
			byte = rom.read(1)
			if (byte):
				if (byte != b'\xFF'):
					offset += i + 1
					offset = align_offset(offset)
					found_bytes = 0
					break
				found_bytes += 1
			else:
				return 0
	return offset
	
def replace_line(file,searchString,replaceString):
    for line in fileinput.input(file, inplace=1):
        if searchString in line:
            line = replaceString + "\n"
        sys.stdout.write(line)

def preprocfile(src,dst):
	preproc = 0
	if src.endswith(".s"):
		preproc = 1
	elif src.endswith(".c"):
		preproc = 1
		
	if preproc == 0:
		shutil.copy(src,dst)
	else:
		p = subprocess.Popen(os.path.join(TOOLS,"preproc.exe") + " " + src + " " + "charmap.txt", stdout=subprocess.PIPE, shell=True)
		(output, err) = p.communicate()
		with open(dst,'wb+') as dest_file:
			dest_file.write(output)

		
def preprocdir(src, dst):
	names = os.listdir(src)
	if not os.path.exists(dst):
		os.makedirs(dst)
	errors = []
	for name in names:
		srcname = os.path.join(src, name)
		dstname = os.path.join(dst, name)
		try:
			if os.path.isdir(srcname):
				preprocdir(srcname, dstname)
			else:
				preprocfile(srcname, dstname)
		except (IOError, os.error) as why:
			errors.append((srcname, dstname, str(why)))
        # catch the Error from the recursive copytree so that we can
        # continue with other files
		except shutil.Error as err:
			errors.extend(err.args[0])
	try:
		shutil.copystat(src, dst)
	except WindowsError:
        # can't copy file access times on Windows
		pass
	except OSError as why:
		errors.extend((src, dst, str(why)))
	if errors:
		raise Error(errors)

def bundle_raws(rootdir,rootfolder):
	names = os.listdir(rootdir)
	bundle_prefix ='.text\n.thumb\n.align 2\n'
	bundle_format='\n.align 2\n.global {}\n{}:\n.incbin "{}"\n'
	bundle_filepath = os.path.join(rootdir,rootfolder+'_bundle.s')
	with open(bundle_filepath,'w') as bundlefile:
		bundlefile.write(bundle_prefix)
		for name in names:
			namepath = os.path.join(rootdir,name)
			if not os.path.isdir(namepath):
				if fnmatch.fnmatch(name, '*.pal'):
					labelname = name.rsplit( ".", 3 )[0] + 'PAL'
					bundlefile.write(bundle_format.format(labelname,labelname,namepath).replace(os.sep,'/'))
				elif fnmatch.fnmatch(name, '*.bin'):
					labelname = name.rsplit( ".", 3 )[0] + 'IMG'
					bundlefile.write(bundle_format.format(labelname,labelname,namepath).replace(os.sep,'/'))
				elif fnmatch.fnmatch(name, '*.raw'):
					labelname = name.rsplit( ".", 3 )[0] + 'RAW'
					bundlefile.write(bundle_format.format(labelname,labelname,namepath).replace(os.sep,'/'))
	img_obj_dst = rootdir.replace(rootdir,os.path.join(BUILD,rootdir))
	if not os.path.exists(img_obj_dst):
		os.makedirs(img_obj_dst)
	subprocess.call(AS + " " + ASFLAGS + " -c " + bundle_filepath + " -o " + os.path.join(img_obj_dst, rootfolder+'_bundle.o'))
	for name in names:
		namepath = os.path.join(rootdir,name)
					#os.path.join(rootdir,name)
		if os.path.isdir(namepath):
			bundle_raws(namepath,name)
		
		
if (os.environ.get('DEVKITARM') == 'None'):
	print("...\nDevkitARM not found.")
	sys.exit(1)
else:
	from sys import platform
	if platform == "linux" or platform == "linux2":
		PATH = os.path.join(os.environ['DEVKITARM'],"bin")
		print("DevkitARM found!")
	elif platform == "win32":
		PATH = os.path.join(os.environ['DEVKITARM'].replace("/c", 'c:', 1),"bin")
		print("DevkitARM found!")
	else:
		PATH = os.path.join(os.environ['DEVKITARM'],"bin")
		print("DevkitARM found!")

PREFIX = 'arm-none-eabi-'
AS = os.path.join(PATH,PREFIX + 'as')
CC = os.path.join(PATH,PREFIX + 'gcc')
LD = os.path.join(PATH,PREFIX + 'ld')
OBJCOPY = os.path.join(PATH,PREFIX + 'objcopy')

ROOT = os.getcwd()
SRC = 'src'
BUILD = 'build'
PREPROC = os.path.join(BUILD,SRC+'_preproc')
OBJ_PREPROC = os.path.join(BUILD,SRC)
LZ77IMAGES = 'imglz77'
ASERIESIMAGES = 'aseries'
OBJ_LZ77IMAGES = os.path.join(BUILD,LZ77IMAGES)
TOOLS = 'tools'

ASFLAGS = '-mthumb'
LDFLAGS = '-z muldefs --relocatable -T BPEE.ld -T linker.ld'
CFLAGS = '-g -O2 -Wall -mthumb -std=c11 -mcpu=arm7tdmi -march=armv4t -mno-thumb-interwork -fno-inline -fno-builtin -mlong-calls'


LINKED = os.path.join(BUILD,'linked.o')
OUTPUT = os.path.join(BUILD,'output.bin')

#Clean

if REBUILD_ASSETS is 1:
	for dirname, dirnames, filenames in os.walk(LZ77IMAGES):
		for filename in filenames:
			if fnmatch.fnmatch(filename, '*.pal') or fnmatch.fnmatch(filename, '*.bin'):
				#print("delete")
				os.remove(os.path.join(dirname,filename))
				
if BUNDLE_ASSETS is 1:
	for dirname, dirnames, filenames in os.walk(LZ77IMAGES):
		for filename in filenames:
			if fnmatch.fnmatch(filename, '*.s'):
				os.remove(os.path.join(dirname,filename))

if os.path.exists(BUILD):
	shutil.rmtree(BUILD)

if not os.path.exists(BUILD):
	os.makedirs(BUILD)

# Perform string preprocessing
	
preprocdir(SRC,PREPROC)	
	
print("\nProcessing images...")
for dirname, dirnames, filenames in os.walk(LZ77IMAGES):
	for filename in filenames:
		if fnmatch.fnmatch(filename, '*.png'):
			image_pal = filename.rsplit( ".", 3 )[0] + '.pal'
			image_bin = filename.rsplit( ".", 3 )[0] + '.bin'
			if REBUILD_ASSETS is 0 and os.path.exists(os.path.join(dirname, image_pal)) and os.path.exists(os.path.join(dirname, image_bin)):
				continue

			#print("Processing " + filename) 
			subprocess.call(os.path.join(TOOLS,'Oat.exe') + " " + os.path.join(dirname,filename) + " -lz77")	
			
for dirname, dirnames, filenames in os.walk(ASERIESIMAGES):
	for filename in filenames:
		if fnmatch.fnmatch(filename, '*.png'):
			image_pal = filename.rsplit( ".", 3 )[0] + '_Normal.pal'
			image_bin = filename.rsplit( ".", 3 )[0] + '_Animation.bin'
			if REBUILD_ASSETS is 0 and os.path.exists(os.path.join(dirname, image_pal)) and os.path.exists(os.path.join(dirname, image_bin)):
				continue

			#print("Processing " + filename)
			if subprocess.call(os.path.join(TOOLS,'Oat.exe') + " " + os.path.join(dirname,filename) + " -aseries") is 1:
                                print(filename)
			
if BUNDLE_ASSETS is 1:
	print("\nBundling and compiling images")
	bundle_raws(LZ77IMAGES,LZ77IMAGES)
	bundle_raws(ASERIESIMAGES,ASERIESIMAGES)
			

			
#Process c files
print("\nCompiling C files...")
for dirname, dirnames, filenames in os.walk(PREPROC):
	for filename in filenames:
		if fnmatch.fnmatch(filename, '*.c'):
			obj_dst = dirname.replace(PREPROC,OBJ_PREPROC)
			if not os.path.exists(obj_dst):
				os.makedirs(obj_dst)
			print("Processing " + filename)
			subprocess.call(CC + " " + CFLAGS + " -c " + os.path.join(dirname, filename) + " -o " + os.path.join(obj_dst, filename.rsplit( ".", 1 )[ 0 ]  + ".o"))
	
#Process s files
for dirname, dirnames, filenames in os.walk(PREPROC):
	for filename in filenames:
		if fnmatch.fnmatch(filename, '*.s'):
			obj_dst = dirname.replace(PREPROC,OBJ_PREPROC)
			if not os.path.exists(obj_dst):
				os.makedirs(obj_dst)
			print("Processing " + filename)
			subprocess.call(AS + " " + ASFLAGS + " -c " + os.path.join(dirname, filename) + " -o " + os.path.join(obj_dst, filename.rsplit( ".", 1 )[ 0 ]  + ".o"))

#Link
FilesToLink = ""
for dirname, dirnames, filenames in os.walk(BUILD):
	if not dirname.endswith(PREPROC):
		for filename in filenames:
			if fnmatch.fnmatch(filename, '*.o'):
				FilesToLink = FilesToLink + '"' + os.path.join(dirname,filename) + '" '

print('\n\nLinking objects...')
subprocess.call(LD + " " + LDFLAGS + " -o " + '"' + LINKED + '" ' + FilesToLink)

print('\nGenerating output...')
subprocess.call(OBJCOPY + " -O " + 'binary "' + LINKED + '" "' + OUTPUT)

print('\nApplying to Rom...')
shutil.copyfile("rom.gba", "test.gba")
with open("test.gba", 'rb+') as rom:
	offset = find_offset_to_put(rom, os.stat(LINKED).st_size, align_offset(FREE_SPACE))
	rom.close()

replace_line("armips.asm",".org 0x08",".org " + hex(offset + 134217728))

#print(offset)

##subprocess.call('armips "armips.asm" -sym "test.sym"')

print("Unless you have an error, the project has compiled and inserted!")


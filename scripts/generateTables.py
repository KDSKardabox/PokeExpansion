#!/usr/bin/env python3

import json

formatStr = '    //{}. {}\n'
formatStr = formatStr + '    {{\n'
formatStr = formatStr + '        /* base_hp */      {},\n'
formatStr = formatStr + '        /* base_atk */     {},\n'
formatStr = formatStr + '        /* base_def*/      {},\n'
formatStr = formatStr + '        /* base_spd */     {},\n'
formatStr = formatStr + '        /* base_spatk */   {},\n'
formatStr = formatStr + '        /* base_spdef */   {},\n'
formatStr = formatStr + '        /* type1 */        {},\n'
formatStr = formatStr + '        /* type2 */        {},\n'
formatStr = formatStr + '        /* catch_rate */   {},\n'
formatStr = formatStr + '        /* exp_yield */    {},\n'
formatStr = formatStr + '        /* evs */          {},{},{},{},{},{},\n'
formatStr = formatStr + '        /* item1 */        {},\n'
formatStr = formatStr + '        /* item2 */        {},\n'
formatStr = formatStr + '        /* gender_ratio */ {},\n'
formatStr = formatStr + '        /* hatching */     {},\n'
formatStr = formatStr + '        /* friendship */   {},\n'
formatStr = formatStr + '        /* exp_curve */    {},\n'
formatStr = formatStr + '        /* egg_group1 */   {},\n'
formatStr = formatStr + '        /* egg_group2 */   {},\n'
formatStr = formatStr + '        /* ability1 */     {},\n'
formatStr = formatStr + '        /* ability2 */     {},\n'
formatStr = formatStr + '        /* flee_rate */    {},\n'
formatStr = formatStr + '        /* dex_colour */   {},{},\n'
formatStr = formatStr + '        /* hidden */       {},\n'
formatStr = formatStr + '        /* padding2 */     {}\n'
formatStr = formatStr + '    }},\n'

dexFormat = '\n    {{  //{}'
dexFormat = dexFormat + '\n        .categoryName = {},'
dexFormat = dexFormat + '\n        .height = {},'
dexFormat = dexFormat + '\n        .weight = {},'
dexFormat = dexFormat + '\n        .description = {},'
dexFormat = dexFormat + '\n        .pokemonScale = {},'
dexFormat = dexFormat + '\n        .pokemonOffset = {},'
dexFormat = dexFormat + '\n        .trainerScale = {},'
dexFormat = dexFormat + '\n        .trainerOffset = {},'
dexFormat = dexFormat + '\n    }},'


with open('jsonInput\\abilities.json','r') as jsonFile:
        abilityDataSet = json.load(jsonFile)

with open('jsonInput\\items.json','r') as jsonFile:
        itemDataSet = json.load(jsonFile)

with open('jsonInput\\types.json','r') as jsonFile:
        typeDataSet = json.load(jsonFile)

with open('jsonInput\\egggroups.json','r') as jsonFile:
        eggGroupDataSet = json.load(jsonFile)

with open('jsonInput\\expcurves.json','r') as jsonFile:
        expCurveDataSet = json.load(jsonFile)

with open('jsonInput\\dexcolors.json','r') as jsonFile:
        dexColorDataSet = json.load(jsonFile)

with open('jsonInput\\baseStats.json','r') as jsonFile:
        baseStatsDataSet = json.load(jsonFile)

with open('jsonInput\\dexData.json','r') as jsonFile:
        dexDataSet = json.load(jsonFile)

with open('jsonInput\\learnset.json','r') as jsonFile:
        learnsetDataSet = json.load(jsonFile)

with open('jsonInput\\TMlist.json','r') as jsonFile:
        TMDataSet = json.load(jsonFile)

with open('jsonInput\\pokemonSlotMaster.json','r') as jsonFile:
        masterSlots = json.load(jsonFile)

##Output Base Stats File
with open('src\\basestats.c','w') as baseStatsSource:
        baseStatsSource.write('#include "defines/pokemon.h"\n')
        baseStatsSource.write('const struct BaseStats gBaseStats[]= {\n')
        for entry in masterSlots:
                index = str(entry["index"])
                name = entry["key"]
                masterKey = name
                baseData = baseStatsDataSet.get(masterKey)
                if baseData is None:
                        baseStatsSource.write("{\n},\n")
                        continue
                hp=str(baseData["stats"]["hp"])
                atk=str(baseData["stats"]["atk"])
                defen=str(baseData["stats"]["def"])
                spd=str(baseData["stats"]["spd"])
                spatk=str(baseData["stats"]["spatk"])
                spdef=str(baseData["stats"]["spdef"])
                type1 = str(typeDataSet.get(baseData["types"][0])["index"]) if typeDataSet.get(baseData["types"][0]) != None else 0
                type2 = str(typeDataSet.get(baseData["types"][1])["index"]) if len(baseData["types"]) == 2 and typeDataSet.get(baseData["types"][1]) != None else type1
                catch_rate = str(baseData["catch_rate"])
                exp_yield = str(baseData["base_exp"])
                evhp=str(baseData["ev_yield"]["hp"])
                evatk=str(baseData["ev_yield"]["atk"])
                evdef=str(baseData["ev_yield"]["def"])
                evspd=str(baseData["ev_yield"]["spd"])
                evspatk=str(baseData["ev_yield"]["spatk"])
                evspdef=str(baseData["ev_yield"]["spdef"])
                item1 = str(itemDataSet.get(baseData["items"][0])["index"]) if itemDataSet.get(baseData["items"][0]) != None else 0
                item2 = str(itemDataSet.get(baseData["items"][1])["index"]) if len(baseData["items"]) == 2 and itemDataSet.get(baseData["items"][1]) != None else 0
                genderratio = str(baseData["gender_ratio"])
                hatching = str(baseData["hatch_cycles"])
                friendship = str(baseData["base_friendship"])
                expcurve = str(expCurveDataSet.get(baseData["exp_curve"])["index"]) if itemDataSet.get(baseData["exp_curve"][0]) != None else 0
                egg_group1 = str(eggGroupDataSet.get(baseData["egg_groups"][0])["index"]) if eggGroupDataSet.get(baseData["egg_groups"][0]) != None else 0
                egg_group2 = str(eggGroupDataSet.get(baseData["egg_groups"][1])["index"]) if len(baseData["egg_groups"]) == 2 and eggGroupDataSet.get(baseData["egg_groups"][1]) != None else egg_group1
                ability1 = str(abilityDataSet.get(baseData["abilities"]["primary"])["index"]) if abilityDataSet.get(baseData["abilities"]["primary"]) !=None else 0
                ability2 = str(abilityDataSet.get(baseData["abilities"]["secondary"])["index"]) if baseData["abilities"].get("secondary") !=None and abilityDataSet.get(baseData["abilities"]["secondary"]) !=None else 0
                flee_rate = str(baseData["escape_rate"])
                dex_color = str(dexColorDataSet.get(baseData["dex_color"])["index"]) if dexColorDataSet.get(baseData["dex_color"][0]) != None else 0
                flip = str(baseData["flip"])
                padding1 = str(abilityDataSet.get(baseData["abilities"]["hidden"])["index"]) if baseData["abilities"].get("hidden") !=None and abilityDataSet.get(baseData["abilities"]["hidden"]) !=None else 0
                padding2 = '0'
                baseStatsSource.write(formatStr.format(index,name,hp,atk,defen,spd,spatk,spdef,type1,type2,catch_rate,exp_yield,evhp,evatk,evdef,evspd,evspatk,evspdef,item1,item2,genderratio,hatching,friendship,expcurve,egg_group1,egg_group2,ability1,ability2,flee_rate,dex_color,flip,padding1,padding2))#,,))
        baseStatsSource.write('};\n')


##Output Dex Data File
with open('src\\dexdata.c','wb+') as baseStatsSource:
        baseStatsSource.write('#include "defines/pokemon.h"\n'.encode('utf-8'))
        
        for entry in masterSlots:
                index = str(entry["index"])
                name = entry["key"]
                masterKey = name
                dexData = dexDataSet.get(masterKey)
                if dexData is None:
                        continue
                description = '_("' + dexData["description"] + '")'
                descriptionIdentifier = "g" + name.title() + "Description"
                res='\nconst u8 ' + descriptionIdentifier + '[] = ' + description + ';\n'
                ##print(res.encode('utf-8'))
                ##break
                baseStatsSource.write(res.encode('utf-8'))

        baseStatsSource.write('\nstatic const struct PokedexEntry gPokedexEntries[]= {\n'.encode('utf-8'))
        for entry in masterSlots:
                index = str(entry["index"])
                name = entry["key"]
                masterKey = name
                dexData = dexDataSet.get(masterKey)
                if dexData is None:
                        continue
                category = ('_("' + dexData["category"] + '")')

                descriptionIdentifier = "g" + name.title() + "Description"
                height = str(int(dexData["height"]*10))
                weight = str(int(dexData["weight"]*10))
                pokemon_scale = str(dexData["pokemon_scale"])
                pokemon_offset = str(dexData["pokemon_offset"])
                trainer_scale = str(dexData["trainer_scale"])
                trainer_offset = str(dexData["trainer_offset"])
                baseStatsSource.write(dexFormat.format(name,category,height,weight,descriptionIdentifier,pokemon_scale,pokemon_offset,trainer_scale,trainer_offset).encode('utf-8'))
        baseStatsSource.write('\n};\n'.encode('utf-8'))

##Output TM Compatibility
with open('src\\tm_compat.s','w') as TMcompaoutput:
        TMcompaoutput.write("\n.align 2\n.global gTMHMLearnsets\ngTMHMLearnsets:\n")
        zeroString = "0" * (64 - len(TMDataSet)) 
        for entry in masterSlots:
                index = str(entry["index"])
                name = entry["key"]
                masterKey = name
                learnsetData = learnsetDataSet.get(masterKey)
                if learnsetData is None:
                        TMcompaoutput.write('.8byte 0b0000000000000000000000000000000000000000000000000000000000000000\n')
                else:
                        learnsetString = '.8byte 0b'

                        levelupList = [d['id'] for d in learnsetData["level"] if 'id' in d]
                        for tmentry in TMDataSet:
                                compatible = False
                                if tmentry in learnsetData["egg"] or tmentry in learnsetData["misc"] or tmentry in levelupList:
                                        compatible = True
                                if compatible:
                                        learnsetString = learnsetString + '1'
                                else:
                                        learnsetString = learnsetString + '0'
                        learnsetString = learnsetString + zeroString + '\n'
                        TMcompaoutput.write(learnsetString)

##Output Dex Ordering
with open('src\\dex_order.c','w') as dexordering:
        dexordering.write('#include "types.h"\n')
        dexordering.write('static const u16 gPokedexOrder_Alphabetical[] = \n{\n')
        dexDataSetByName = sorted(dexDataSet.items(), key=lambda x: x[1]["name"])
        for entry in dexDataSetByName:
                dexordering.write('  ' + str(dexDataSet[entry[0]]["index"])  + ', //' + dexDataSet[entry[0]]["name"]+'\n')
        dexordering.write('};\n')

        dexordering.write('static const u16 gPokedexOrder_Weight[] = \n{\n')
        dexDataSetByWeight = sorted(dexDataSet.items(), key=lambda x: x[1]["weight"])
        for entry in dexDataSetByWeight:
                dexordering.write('  ' + str(dexDataSet[entry[0]]["index"])  + ', //' + dexDataSet[entry[0]]["name"]+'\n')
        dexordering.write('};\n')

        dexordering.write('static const u16 gPokedexOrder_Height[] = \n{\n')
        dexDataSetByHeight = sorted(dexDataSet.items(), key=lambda x: x[1]["height"])
        for entry in dexDataSetByHeight:
                dexordering.write('  ' + str(dexDataSet[entry[0]]["index"])  + ', //' + dexDataSet[entry[0]]["name"]+'\n')
        dexordering.write('};\n')


        

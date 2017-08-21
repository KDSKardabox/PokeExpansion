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
formatStr = formatStr + '        /* evs */          {},{},{},{},{},{}\n'
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
formatStr = formatStr + '    }}\n'




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

with open('jsonInput\\pokemonSlotMaster.json','r') as jsonFile:
        masterSlots = json.load(jsonFile)

##Output Base Stats File
with open('basestats.c','w') as baseStatsSource:
        baseStatsSource.write('#include "defines/pokmemon.h"\n')
        for entry in masterSlots:
                index = str(entry["index"])
                name = entry["key"]
                masterKey = name
                baseData = baseStatsDataSet[masterKey]
                hp=str(baseData["stats"]["hp"])
                atk=str(baseData["stats"]["atk"])
                defen=str(baseData["stats"]["def"])
                spd=str(baseData["stats"]["spd"])
                spatk=str(baseData["stats"]["spatk"])
                spdef=str(baseData["stats"]["spdef"])
                type1 = str(typeDataSet.get(baseData["types"][0])["index"]) if typeDataSet.get(baseData["types"][0]) != None else 0
                type2 = str(typeDataSet.get(baseData["types"][0])["index"]) if typeDataSet.get(baseData["types"][0]) != None else 0
                catch_rate = str(baseData["catch_rate"])
                exp_yield = str(baseData["base_exp"])
                evhp=str(baseData["ev_yield"]["hp"])
                evatk=str(baseData["ev_yield"]["atk"])
                evdef=str(baseData["ev_yield"]["def"])
                evspd=str(baseData["ev_yield"]["spd"])
                evspatk=str(baseData["ev_yield"]["spatk"])
                evspdef=str(baseData["ev_yield"]["spdef"])
                item1 = str(itemDataSet.get(baseData["items"][0])["index"]) if itemDataSet.get(baseData["items"][0]) != None else 0
                item2 = str(itemDataSet.get(baseData["items"][0])["index"]) if itemDataSet.get(baseData["items"][0]) != None else 0
                genderratio = str(baseData["gender_ratio"])
                hatching = str(baseData["hatch_cycles"])
                friendship = str(baseData["base_friendship"])
                expcurve = str(expCurveDataSet.get(baseData["exp_curve"])["index"]) if itemDataSet.get(baseData["exp_curve"][0]) != None else 0
                egg_group1 = str(eggGroupDataSet.get(baseData["egg_groups"][0])["index"]) if eggGroupDataSet.get(baseData["egg_groups"][0]) != None else 0
                egg_group2 = str(eggGroupDataSet.get(baseData["egg_groups"][0])["index"]) if eggGroupDataSet.get(baseData["egg_groups"][0]) != None else 0
                ability1 = str(abilityDataSet.get(baseData["abilities"]["primary"])["index"]) if abilityDataSet.get(baseData["abilities"]["primary"]) !=None else 0
                ability2 = str(abilityDataSet.get(baseData["abilities"]["secondary"])["index"]) if baseData["abilities"].get("secondary") !=None and abilityDataSet.get(baseData["abilities"]["secondary"]) !=None else 0
                flee_rate = str(baseData["escape_rate"])
                dex_color = str(dexColorDataSet.get(baseData["dex_color"])["index"]) if dexColorDataSet.get(baseData["dex_color"][0]) != None else 0
                flip = str(baseData["flip"])
                padding1 = str(abilityDataSet.get(baseData["abilities"]["hidden"])["index"]) if baseData["abilities"].get("hidden") !=None and abilityDataSet.get(baseData["abilities"]["hidden"]) !=None else 0
                padding2 = '0'
                baseStatsSource.write(formatStr.format(index,name,hp,atk,defen,spd,spatk,spdef,type1,type2,catch_rate,exp_yield,evhp,evatk,evdef,evspd,evspatk,evspdef,item1,item2,genderratio,hatching,friendship,expcurve,egg_group1,egg_group2,ability1,ability2,flee_rate,dex_color,flip,padding1,padding2))#,,))
        #

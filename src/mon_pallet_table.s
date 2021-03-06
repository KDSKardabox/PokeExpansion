.macro obj_tiles address, uncompressed_size, tag = 0
.4byte \address
.2byte \uncompressed_size
.2byte \tag
.endm

.macro obj_pal address, tag
.4byte \address
.2byte \tag
.2byte 0@ padding
.endm
    .align 2
.global gMonPaletteTable
gMonPaletteTable:
obj_pal gMonPalette_Dummy , 0
obj_pal gMonPalette_Bulbasaur , 1
obj_pal gMonPalette_Ivysaur , 2
obj_pal gMonPalette_Venusaur , 3
obj_pal gMonPalette_Charmander , 4
obj_pal gMonPalette_Charmeleon , 5
obj_pal gMonPalette_Charizard , 6
obj_pal gMonPalette_Squirtle , 7
obj_pal gMonPalette_Wartortle , 8
obj_pal gMonPalette_Blastoise , 9
obj_pal gMonPalette_Caterpie , 10
obj_pal gMonPalette_Metapod , 11
obj_pal gMonPalette_Butterfree , 12
obj_pal gMonPalette_Weedle , 13
obj_pal gMonPalette_Kakuna , 14
obj_pal gMonPalette_Beedrill , 15
obj_pal gMonPalette_Pidgey , 16
obj_pal gMonPalette_Pidgeotto , 17
obj_pal gMonPalette_Pidgeot , 18
obj_pal gMonPalette_Rattata , 19
obj_pal gMonPalette_Raticate , 20
obj_pal gMonPalette_Spearow , 21
obj_pal gMonPalette_Fearow , 22
obj_pal gMonPalette_Ekans , 23
obj_pal gMonPalette_Arbok , 24
obj_pal gMonPalette_Pikachu , 25
obj_pal gMonPalette_Raichu , 26
obj_pal gMonPalette_Sandshrew , 27
obj_pal gMonPalette_Sandslash , 28
obj_pal gMonPalette_Nidoranf , 29
obj_pal gMonPalette_Nidorina , 30
obj_pal gMonPalette_Nidoqueen , 31
obj_pal gMonPalette_Nidoranm , 32
obj_pal gMonPalette_Nidorino , 33
obj_pal gMonPalette_Nidoking , 34
obj_pal gMonPalette_Clefairy , 35
obj_pal gMonPalette_Clefable , 36
obj_pal gMonPalette_Vulpix , 37
obj_pal gMonPalette_Ninetales , 38
obj_pal gMonPalette_Jigglypuff , 39
obj_pal gMonPalette_Wigglytuff , 40
obj_pal gMonPalette_Zubat , 41
obj_pal gMonPalette_Golbat , 42
obj_pal gMonPalette_Oddish , 43
obj_pal gMonPalette_Gloom , 44
obj_pal gMonPalette_Vileplume , 45
obj_pal gMonPalette_Paras , 46
obj_pal gMonPalette_Parasect , 47
obj_pal gMonPalette_Venonat , 48
obj_pal gMonPalette_Venomoth , 49
obj_pal gMonPalette_Diglett , 50
obj_pal gMonPalette_Dugtrio , 51
obj_pal gMonPalette_Meowth , 52
obj_pal gMonPalette_Persian , 53
obj_pal gMonPalette_Psyduck , 54
obj_pal gMonPalette_Golduck , 55
obj_pal gMonPalette_Mankey , 56
obj_pal gMonPalette_Primeape , 57
obj_pal gMonPalette_Growlithe , 58
obj_pal gMonPalette_Arcanine , 59
obj_pal gMonPalette_Poliwag , 60
obj_pal gMonPalette_Poliwhirl , 61
obj_pal gMonPalette_Poliwrath , 62
obj_pal gMonPalette_Abra , 63
obj_pal gMonPalette_Kadabra , 64
obj_pal gMonPalette_Alakazam , 65
obj_pal gMonPalette_Machop , 66
obj_pal gMonPalette_Machoke , 67
obj_pal gMonPalette_Machamp , 68
obj_pal gMonPalette_Bellsprout , 69
obj_pal gMonPalette_Weepinbell , 70
obj_pal gMonPalette_Victreebel , 71
obj_pal gMonPalette_Tentacool , 72
obj_pal gMonPalette_Tentacruel , 73
obj_pal gMonPalette_Geodude , 74
obj_pal gMonPalette_Graveler , 75
obj_pal gMonPalette_Golem , 76
obj_pal gMonPalette_Ponyta , 77
obj_pal gMonPalette_Rapidash , 78
obj_pal gMonPalette_Slowpoke , 79
obj_pal gMonPalette_Slowbro , 80
obj_pal gMonPalette_Magnemite , 81
obj_pal gMonPalette_Magneton , 82
obj_pal gMonPalette_Farfetchd , 83
obj_pal gMonPalette_Doduo , 84
obj_pal gMonPalette_Dodrio , 85
obj_pal gMonPalette_Seel , 86
obj_pal gMonPalette_Dewgong , 87
obj_pal gMonPalette_Grimer , 88
obj_pal gMonPalette_Muk , 89
obj_pal gMonPalette_Shellder , 90
obj_pal gMonPalette_Cloyster , 91
obj_pal gMonPalette_Gastly , 92
obj_pal gMonPalette_Haunter , 93
obj_pal gMonPalette_Gengar , 94
obj_pal gMonPalette_Onix , 95
obj_pal gMonPalette_Drowzee , 96
obj_pal gMonPalette_Hypno , 97
obj_pal gMonPalette_Krabby , 98
obj_pal gMonPalette_Kingler , 99
obj_pal gMonPalette_Voltorb , 100
obj_pal gMonPalette_Electrode , 101
obj_pal gMonPalette_Exeggcute , 102
obj_pal gMonPalette_Exeggutor , 103
obj_pal gMonPalette_Cubone , 104
obj_pal gMonPalette_Marowak , 105
obj_pal gMonPalette_Hitmonlee , 106
obj_pal gMonPalette_Hitmonchan , 107
obj_pal gMonPalette_Lickitung , 108
obj_pal gMonPalette_Koffing , 109
obj_pal gMonPalette_Weezing , 110
obj_pal gMonPalette_Rhyhorn , 111
obj_pal gMonPalette_Rhydon , 112
obj_pal gMonPalette_Chansey , 113
obj_pal gMonPalette_Tangela , 114
obj_pal gMonPalette_Kangaskhan , 115
obj_pal gMonPalette_Horsea , 116
obj_pal gMonPalette_Seadra , 117
obj_pal gMonPalette_Goldeen , 118
obj_pal gMonPalette_Seaking , 119
obj_pal gMonPalette_Staryu , 120
obj_pal gMonPalette_Starmie , 121
obj_pal gMonPalette_Mrmime , 122
obj_pal gMonPalette_Scyther , 123
obj_pal gMonPalette_Jynx , 124
obj_pal gMonPalette_Electabuzz , 125
obj_pal gMonPalette_Magmar , 126
obj_pal gMonPalette_Pinsir , 127
obj_pal gMonPalette_Tauros , 128
obj_pal gMonPalette_Magikarp , 129
obj_pal gMonPalette_Gyarados , 130
obj_pal gMonPalette_Lapras , 131
obj_pal gMonPalette_Ditto , 132
obj_pal gMonPalette_Eevee , 133
obj_pal gMonPalette_Vaporeon , 134
obj_pal gMonPalette_Jolteon , 135
obj_pal gMonPalette_Flareon , 136
obj_pal gMonPalette_Porygon , 137
obj_pal gMonPalette_Omanyte , 138
obj_pal gMonPalette_Omastar , 139
obj_pal gMonPalette_Kabuto , 140
obj_pal gMonPalette_Kabutops , 141
obj_pal gMonPalette_Aerodactyl , 142
obj_pal gMonPalette_Snorlax , 143
obj_pal gMonPalette_Articuno , 144
obj_pal gMonPalette_Zapdos , 145
obj_pal gMonPalette_Moltres , 146
obj_pal gMonPalette_Dratini , 147
obj_pal gMonPalette_Dragonair , 148
obj_pal gMonPalette_Dragonite , 149
obj_pal gMonPalette_Mewtwo , 150
obj_pal gMonPalette_Mew , 151
obj_pal gMonPalette_Chikorita , 152
obj_pal gMonPalette_Bayleef , 153
obj_pal gMonPalette_Meganium , 154
obj_pal gMonPalette_Cyndaquil , 155
obj_pal gMonPalette_Quilava , 156
obj_pal gMonPalette_Typhlosion , 157
obj_pal gMonPalette_Totodile , 158
obj_pal gMonPalette_Croconaw , 159
obj_pal gMonPalette_Feraligatr , 160
obj_pal gMonPalette_Sentret , 161
obj_pal gMonPalette_Furret , 162
obj_pal gMonPalette_Hoothoot , 163
obj_pal gMonPalette_Noctowl , 164
obj_pal gMonPalette_Ledyba , 165
obj_pal gMonPalette_Ledian , 166
obj_pal gMonPalette_Spinarak , 167
obj_pal gMonPalette_Ariados , 168
obj_pal gMonPalette_Crobat , 169
obj_pal gMonPalette_Chinchou , 170
obj_pal gMonPalette_Lanturn , 171
obj_pal gMonPalette_Pichu , 172
obj_pal gMonPalette_Cleffa , 173
obj_pal gMonPalette_Igglybuff , 174
obj_pal gMonPalette_Togepi , 175
obj_pal gMonPalette_Togetic , 176
obj_pal gMonPalette_Natu , 177
obj_pal gMonPalette_Xatu , 178
obj_pal gMonPalette_Mareep , 179
obj_pal gMonPalette_Flaaffy , 180
obj_pal gMonPalette_Ampharos , 181
obj_pal gMonPalette_Bellossom , 182
obj_pal gMonPalette_Marill , 183
obj_pal gMonPalette_Azumarill , 184
obj_pal gMonPalette_Sudowoodo , 185
obj_pal gMonPalette_Politoed , 186
obj_pal gMonPalette_Hoppip , 187
obj_pal gMonPalette_Skiploom , 188
obj_pal gMonPalette_Jumpluff , 189
obj_pal gMonPalette_Aipom , 190
obj_pal gMonPalette_Sunkern , 191
obj_pal gMonPalette_Sunflora , 192
obj_pal gMonPalette_Yanma , 193
obj_pal gMonPalette_Wooper , 194
obj_pal gMonPalette_Quagsire , 195
obj_pal gMonPalette_Espeon , 196
obj_pal gMonPalette_Umbreon , 197
obj_pal gMonPalette_Murkrow , 198
obj_pal gMonPalette_Slowking , 199
obj_pal gMonPalette_Misdreavus , 200
obj_pal gMonPalette_Unown , 201
obj_pal gMonPalette_Wobbuffet , 202
obj_pal gMonPalette_Girafarig , 203
obj_pal gMonPalette_Pineco , 204
obj_pal gMonPalette_Forretress , 205
obj_pal gMonPalette_Dunsparce , 206
obj_pal gMonPalette_Gligar , 207
obj_pal gMonPalette_Steelix , 208
obj_pal gMonPalette_Snubbull , 209
obj_pal gMonPalette_Granbull , 210
obj_pal gMonPalette_Qwilfish , 211
obj_pal gMonPalette_Scizor , 212
obj_pal gMonPalette_Shuckle , 213
obj_pal gMonPalette_Heracross , 214
obj_pal gMonPalette_Sneasel , 215
obj_pal gMonPalette_Teddiursa , 216
obj_pal gMonPalette_Ursaring , 217
obj_pal gMonPalette_Slugma , 218
obj_pal gMonPalette_Magcargo , 219
obj_pal gMonPalette_Swinub , 220
obj_pal gMonPalette_Piloswine , 221
obj_pal gMonPalette_Corsola , 222
obj_pal gMonPalette_Remoraid , 223
obj_pal gMonPalette_Octillery , 224
obj_pal gMonPalette_Delibird , 225
obj_pal gMonPalette_Mantine , 226
obj_pal gMonPalette_Skarmory , 227
obj_pal gMonPalette_Houndour , 228
obj_pal gMonPalette_Houndoom , 229
obj_pal gMonPalette_Kingdra , 230
obj_pal gMonPalette_Phanpy , 231
obj_pal gMonPalette_Donphan , 232
obj_pal gMonPalette_Porygon2 , 233
obj_pal gMonPalette_Stantler , 234
obj_pal gMonPalette_Smeargle , 235
obj_pal gMonPalette_Tyrogue , 236
obj_pal gMonPalette_Hitmontop , 237
obj_pal gMonPalette_Smoochum , 238
obj_pal gMonPalette_Elekid , 239
obj_pal gMonPalette_Magby , 240
obj_pal gMonPalette_Miltank , 241
obj_pal gMonPalette_Blissey , 242
obj_pal gMonPalette_Raikou , 243
obj_pal gMonPalette_Entei , 244
obj_pal gMonPalette_Suicune , 245
obj_pal gMonPalette_Larvitar , 246
obj_pal gMonPalette_Pupitar , 247
obj_pal gMonPalette_Tyranitar , 248
obj_pal gMonPalette_Lugia , 249
obj_pal gMonPalette_Hooh , 250
obj_pal gMonPalette_Celebi , 251
obj_pal gMonPalette_252 , 252
obj_pal gMonPalette_253 , 253
obj_pal gMonPalette_254 , 254
obj_pal gMonPalette_255 , 255
obj_pal gMonPalette_256 , 256
obj_pal gMonPalette_257 , 257
obj_pal gMonPalette_258 , 258
obj_pal gMonPalette_259 , 259
obj_pal gMonPalette_260 , 260
obj_pal gMonPalette_261 , 261
obj_pal gMonPalette_262 , 262
obj_pal gMonPalette_263 , 263
obj_pal gMonPalette_264 , 264
obj_pal gMonPalette_265 , 265
obj_pal gMonPalette_266 , 266
obj_pal gMonPalette_267 , 267
obj_pal gMonPalette_268 , 268
obj_pal gMonPalette_269 , 269
obj_pal gMonPalette_270 , 270
obj_pal gMonPalette_271 , 271
obj_pal gMonPalette_272 , 272
obj_pal gMonPalette_273 , 273
obj_pal gMonPalette_274 , 274
obj_pal gMonPalette_275 , 275
obj_pal gMonPalette_276 , 276
obj_pal gMonPalette_Treecko , 277
obj_pal gMonPalette_Grovyle , 278
obj_pal gMonPalette_Sceptile , 279
obj_pal gMonPalette_Torchic , 280
obj_pal gMonPalette_Combusken , 281
obj_pal gMonPalette_Blaziken , 282
obj_pal gMonPalette_Mudkip , 283
obj_pal gMonPalette_Marshtomp , 284
obj_pal gMonPalette_Swampert , 285
obj_pal gMonPalette_Poochyena , 286
obj_pal gMonPalette_Mightyena , 287
obj_pal gMonPalette_Zigzagoon , 288
obj_pal gMonPalette_Linoone , 289
obj_pal gMonPalette_Wurmple , 290
obj_pal gMonPalette_Silcoon , 291
obj_pal gMonPalette_Beautifly , 292
obj_pal gMonPalette_Cascoon , 293
obj_pal gMonPalette_Dustox , 294
obj_pal gMonPalette_Lotad , 295
obj_pal gMonPalette_Lombre , 296
obj_pal gMonPalette_Ludicolo , 297
obj_pal gMonPalette_Seedot , 298
obj_pal gMonPalette_Nuzleaf , 299
obj_pal gMonPalette_Shiftry , 300
obj_pal gMonPalette_Nincada , 301
obj_pal gMonPalette_Ninjask , 302
obj_pal gMonPalette_Shedinja , 303
obj_pal gMonPalette_Taillow , 304
obj_pal gMonPalette_Swellow , 305
obj_pal gMonPalette_Shroomish , 306
obj_pal gMonPalette_Breloom , 307
obj_pal gMonPalette_Spinda , 308
obj_pal gMonPalette_Wingull , 309
obj_pal gMonPalette_Pelipper , 310
obj_pal gMonPalette_Surskit , 311
obj_pal gMonPalette_Masquerain , 312
obj_pal gMonPalette_Wailmer , 313
obj_pal gMonPalette_Wailord , 314
obj_pal gMonPalette_Skitty , 315
obj_pal gMonPalette_Delcatty , 316
obj_pal gMonPalette_Kecleon , 317
obj_pal gMonPalette_Baltoy , 318
obj_pal gMonPalette_Claydol , 319
obj_pal gMonPalette_Nosepass , 320
obj_pal gMonPalette_Torkoal , 321
obj_pal gMonPalette_Sableye , 322
obj_pal gMonPalette_Barboach , 323
obj_pal gMonPalette_Whiscash , 324
obj_pal gMonPalette_Luvdisc , 325
obj_pal gMonPalette_Corphish , 326
obj_pal gMonPalette_Crawdaunt , 327
obj_pal gMonPalette_Feebas , 328
obj_pal gMonPalette_Milotic , 329
obj_pal gMonPalette_Carvanha , 330
obj_pal gMonPalette_Sharpedo , 331
obj_pal gMonPalette_Trapinch , 332
obj_pal gMonPalette_Vibrava , 333
obj_pal gMonPalette_Flygon , 334
obj_pal gMonPalette_Makuhita , 335
obj_pal gMonPalette_Hariyama , 336
obj_pal gMonPalette_Electrike , 337
obj_pal gMonPalette_Manectric , 338
obj_pal gMonPalette_Numel , 339
obj_pal gMonPalette_Camerupt , 340
obj_pal gMonPalette_Spheal , 341
obj_pal gMonPalette_Sealeo , 342
obj_pal gMonPalette_Walrein , 343
obj_pal gMonPalette_Cacnea , 344
obj_pal gMonPalette_Cacturne , 345
obj_pal gMonPalette_Snorunt , 346
obj_pal gMonPalette_Glalie , 347
obj_pal gMonPalette_Lunatone , 348
obj_pal gMonPalette_Solrock , 349
obj_pal gMonPalette_Azurill , 350
obj_pal gMonPalette_Spoink , 351
obj_pal gMonPalette_Grumpig , 352
obj_pal gMonPalette_Plusle , 353
obj_pal gMonPalette_Minun , 354
obj_pal gMonPalette_Mawile , 355
obj_pal gMonPalette_Meditite , 356
obj_pal gMonPalette_Medicham , 357
obj_pal gMonPalette_Swablu , 358
obj_pal gMonPalette_Altaria , 359
obj_pal gMonPalette_Wynaut , 360
obj_pal gMonPalette_Duskull , 361
obj_pal gMonPalette_Dusclops , 362
obj_pal gMonPalette_Roselia , 363
obj_pal gMonPalette_Slakoth , 364
obj_pal gMonPalette_Vigoroth , 365
obj_pal gMonPalette_Slaking , 366
obj_pal gMonPalette_Gulpin , 367
obj_pal gMonPalette_Swalot , 368
obj_pal gMonPalette_Tropius , 369
obj_pal gMonPalette_Whismur , 370
obj_pal gMonPalette_Loudred , 371
obj_pal gMonPalette_Exploud , 372
obj_pal gMonPalette_Clamperl , 373
obj_pal gMonPalette_Huntail , 374
obj_pal gMonPalette_Gorebyss , 375
obj_pal gMonPalette_Absol , 376
obj_pal gMonPalette_Shuppet , 377
obj_pal gMonPalette_Banette , 378
obj_pal gMonPalette_Seviper , 379
obj_pal gMonPalette_Zangoose , 380
obj_pal gMonPalette_Relicanth , 381
obj_pal gMonPalette_Aron , 382
obj_pal gMonPalette_Lairon , 383
obj_pal gMonPalette_Aggron , 384
obj_pal gMonPalette_Castform , 385
obj_pal gMonPalette_Volbeat , 386
obj_pal gMonPalette_Illumise , 387
obj_pal gMonPalette_Lileep , 388
obj_pal gMonPalette_Cradily , 389
obj_pal gMonPalette_Anorith , 390
obj_pal gMonPalette_Armaldo , 391
obj_pal gMonPalette_Ralts , 392
obj_pal gMonPalette_Kirlia , 393
obj_pal gMonPalette_Gardevoir , 394
obj_pal gMonPalette_Bagon , 395
obj_pal gMonPalette_Shelgon , 396
obj_pal gMonPalette_Salamence , 397
obj_pal gMonPalette_Beldum , 398
obj_pal gMonPalette_Metang , 399
obj_pal gMonPalette_Metagross , 400
obj_pal gMonPalette_Regirock , 401
obj_pal gMonPalette_Regice , 402
obj_pal gMonPalette_Registeel , 403
obj_pal gMonPalette_Kyogre , 404
obj_pal gMonPalette_Groudon , 405
obj_pal gMonPalette_Rayquaza , 406
obj_pal gMonPalette_Latias , 407
obj_pal gMonPalette_Latios , 408
obj_pal gMonPalette_Jirachi , 409
obj_pal gMonPalette_Deoxys , 410
obj_pal gMonPalette_Chimecho , 411
obj_pal gMonPalette_Badegg , 412
obj_pal gMonPalette_Unownb , 413
obj_pal gMonPalette_Unownc , 414
obj_pal gMonPalette_Unownd , 415
obj_pal gMonPalette_Unowne , 416
obj_pal gMonPalette_Unownf , 417
obj_pal gMonPalette_Unowng , 418
obj_pal gMonPalette_Unownh , 419
obj_pal gMonPalette_Unowni , 420
obj_pal gMonPalette_Unownj , 421
obj_pal gMonPalette_Unownk , 422
obj_pal gMonPalette_Unownl , 423
obj_pal gMonPalette_Unownm , 424
obj_pal gMonPalette_Unownn , 425
obj_pal gMonPalette_Unowno , 426
obj_pal gMonPalette_Unownp , 427
obj_pal gMonPalette_Unownq , 428
obj_pal gMonPalette_Unownr , 429
obj_pal gMonPalette_Unowns , 430
obj_pal gMonPalette_Unownt , 431
obj_pal gMonPalette_Unownu , 432
obj_pal gMonPalette_Unownv , 433
obj_pal gMonPalette_Unownw , 434
obj_pal gMonPalette_Unownx , 435
obj_pal gMonPalette_Unowny , 436
obj_pal gMonPalette_Unownz , 437
obj_pal gMonPalette_Unownexclam , 438
obj_pal gMonPalette_Unowninterro , 439
obj_pal gMonPalette_Turtwig , 440
obj_pal gMonPalette_Grotle , 441
obj_pal gMonPalette_Torterra , 442
obj_pal gMonPalette_Chimchar , 443
obj_pal gMonPalette_Monferno , 444
obj_pal gMonPalette_Infernape , 445
obj_pal gMonPalette_Piplup , 446
obj_pal gMonPalette_Prinplup , 447
obj_pal gMonPalette_Empoleon , 448
obj_pal gMonPalette_Starly , 449
obj_pal gMonPalette_Staravia , 450
obj_pal gMonPalette_Staraptor , 451
obj_pal gMonPalette_Bidoof , 452
obj_pal gMonPalette_Bibarel , 453
obj_pal gMonPalette_Kricketot , 454
obj_pal gMonPalette_Kricketune , 455
obj_pal gMonPalette_Shinx , 456
obj_pal gMonPalette_Luxio , 457
obj_pal gMonPalette_Luxray , 458
obj_pal gMonPalette_Budew , 459
obj_pal gMonPalette_Roserade , 460
obj_pal gMonPalette_Cranidos , 461
obj_pal gMonPalette_Rampardos , 462
obj_pal gMonPalette_Shieldon , 463
obj_pal gMonPalette_Bastiodon , 464
obj_pal gMonPalette_Burmy , 465
obj_pal gMonPalette_Wormadam , 466
obj_pal gMonPalette_Mothim , 467
obj_pal gMonPalette_Combee , 468
obj_pal gMonPalette_Vespiquen , 469
obj_pal gMonPalette_Pachirisu , 470
obj_pal gMonPalette_Buizel , 471
obj_pal gMonPalette_Floatzel , 472
obj_pal gMonPalette_Cherubi , 473
obj_pal gMonPalette_Cherrim , 474
obj_pal gMonPalette_Shellos , 475
obj_pal gMonPalette_Gastrodon , 476
obj_pal gMonPalette_Ambipom , 477
obj_pal gMonPalette_Drifloon , 478
obj_pal gMonPalette_Drifblim , 479
obj_pal gMonPalette_Buneary , 480
obj_pal gMonPalette_Lopunny , 481
obj_pal gMonPalette_Mismagius , 482
obj_pal gMonPalette_Honchkrow , 483
obj_pal gMonPalette_Glameow , 484
obj_pal gMonPalette_Purugly , 485
obj_pal gMonPalette_Chingling , 486
obj_pal gMonPalette_Stunky , 487
obj_pal gMonPalette_Skuntank , 488
obj_pal gMonPalette_Bronzor , 489
obj_pal gMonPalette_Bronzong , 490
obj_pal gMonPalette_Bonsly , 491
obj_pal gMonPalette_Mimejr , 492
obj_pal gMonPalette_Happiny , 493
obj_pal gMonPalette_Chatot , 494
obj_pal gMonPalette_Spiritomb , 495
obj_pal gMonPalette_Gible , 496
obj_pal gMonPalette_Gabite , 497
obj_pal gMonPalette_Garchomp , 498
obj_pal gMonPalette_Munchlax , 499
obj_pal gMonPalette_Riolu , 500
obj_pal gMonPalette_Lucario , 501
obj_pal gMonPalette_Hippopotas , 502
obj_pal gMonPalette_Hippowdon , 503
obj_pal gMonPalette_Skorupi , 504
obj_pal gMonPalette_Drapion , 505
obj_pal gMonPalette_Croagunk , 506
obj_pal gMonPalette_Toxicroak , 507
obj_pal gMonPalette_Carnivine , 508
obj_pal gMonPalette_Finneon , 509
obj_pal gMonPalette_Lumineon , 510
obj_pal gMonPalette_Mantyke , 511
obj_pal gMonPalette_Snover , 512
obj_pal gMonPalette_Abomasnow , 513
obj_pal gMonPalette_Weavile , 514
obj_pal gMonPalette_Magnezone , 515
obj_pal gMonPalette_Lickilicky , 516
obj_pal gMonPalette_Rhyperior , 517
obj_pal gMonPalette_Tangrowth , 518
obj_pal gMonPalette_Electivire , 519
obj_pal gMonPalette_Magmortar , 520
obj_pal gMonPalette_Togekiss , 521
obj_pal gMonPalette_Yanmega , 522
obj_pal gMonPalette_Leafeon , 523
obj_pal gMonPalette_Glaceon , 524
obj_pal gMonPalette_Gliscor , 525
obj_pal gMonPalette_Mamoswine , 526
obj_pal gMonPalette_Porygonz , 527
obj_pal gMonPalette_Gallade , 528
obj_pal gMonPalette_Probopass , 529
obj_pal gMonPalette_Dusknoir , 530
obj_pal gMonPalette_Froslass , 531
obj_pal gMonPalette_Rotom , 532
obj_pal gMonPalette_Uxie , 533
obj_pal gMonPalette_Mesprit , 534
obj_pal gMonPalette_Azelf , 535
obj_pal gMonPalette_Dialga , 536
obj_pal gMonPalette_Palkia , 537
obj_pal gMonPalette_Heatran , 538
obj_pal gMonPalette_Regigigas , 539
obj_pal gMonPalette_Giratina , 540
obj_pal gMonPalette_Cresselia , 541
obj_pal gMonPalette_Phione , 542
obj_pal gMonPalette_Manaphy , 543
obj_pal gMonPalette_Darkrai , 544
obj_pal gMonPalette_Shaymin , 545
obj_pal gMonPalette_Arceus , 546
obj_pal gMonPalette_Victini , 547
obj_pal gMonPalette_Snivy , 548
obj_pal gMonPalette_Servine , 549
obj_pal gMonPalette_Serperior , 550
obj_pal gMonPalette_Tepig , 551
obj_pal gMonPalette_Pignite , 552
obj_pal gMonPalette_Emboar , 553
obj_pal gMonPalette_Oshawott , 554
obj_pal gMonPalette_Dewott , 555
obj_pal gMonPalette_Samurott , 556
obj_pal gMonPalette_Patrat , 557
obj_pal gMonPalette_Watchog , 558
obj_pal gMonPalette_Lillipup , 559
obj_pal gMonPalette_Herdier , 560
obj_pal gMonPalette_Stoutland , 561
obj_pal gMonPalette_Purrloin , 562
obj_pal gMonPalette_Liepard , 563
obj_pal gMonPalette_Pansage , 564
obj_pal gMonPalette_Simisage , 565
obj_pal gMonPalette_Pansear , 566
obj_pal gMonPalette_Simisear , 567
obj_pal gMonPalette_Panpour , 568
obj_pal gMonPalette_Simipour , 569
obj_pal gMonPalette_Munna , 570
obj_pal gMonPalette_Musharna , 571
obj_pal gMonPalette_Pidove , 572
obj_pal gMonPalette_Tranquill , 573
obj_pal gMonPalette_Unfezant , 574
obj_pal gMonPalette_Blitzle , 575
obj_pal gMonPalette_Zebstrika , 576
obj_pal gMonPalette_Roggenrola , 577
obj_pal gMonPalette_Boldore , 578
obj_pal gMonPalette_Gigalith , 579
obj_pal gMonPalette_Woobat , 580
obj_pal gMonPalette_Swoobat , 581
obj_pal gMonPalette_Drilbur , 582
obj_pal gMonPalette_Excadrill , 583
obj_pal gMonPalette_Audino , 584
obj_pal gMonPalette_Timburr , 585
obj_pal gMonPalette_Gurdurr , 586
obj_pal gMonPalette_Conkeldurr , 587
obj_pal gMonPalette_Tympole , 588
obj_pal gMonPalette_Palpitoad , 589
obj_pal gMonPalette_Seismitoad , 590
obj_pal gMonPalette_Throh , 591
obj_pal gMonPalette_Sawk , 592
obj_pal gMonPalette_Sewaddle , 593
obj_pal gMonPalette_Swadloon , 594
obj_pal gMonPalette_Leavanny , 595
obj_pal gMonPalette_Venipede , 596
obj_pal gMonPalette_Whirlipede , 597
obj_pal gMonPalette_Scolipede , 598
obj_pal gMonPalette_Cottonee , 599
obj_pal gMonPalette_Whimsicott , 600
obj_pal gMonPalette_Petilil , 601
obj_pal gMonPalette_Lilligant , 602
obj_pal gMonPalette_Basculin , 603
obj_pal gMonPalette_Sandile , 604
obj_pal gMonPalette_Krokorok , 605
obj_pal gMonPalette_Krookodile , 606
obj_pal gMonPalette_Darumaka , 607
obj_pal gMonPalette_Darmanitan , 608
obj_pal gMonPalette_Maractus , 609
obj_pal gMonPalette_Dwebble , 610
obj_pal gMonPalette_Crustle , 611
obj_pal gMonPalette_Scraggy , 612
obj_pal gMonPalette_Scrafty , 613
obj_pal gMonPalette_Sigilyph , 614
obj_pal gMonPalette_Yamask , 615
obj_pal gMonPalette_Cofagrigus , 616
obj_pal gMonPalette_Tirtouga , 617
obj_pal gMonPalette_Carracosta , 618
obj_pal gMonPalette_Archen , 619
obj_pal gMonPalette_Archeops , 620
obj_pal gMonPalette_Trubbish , 621
obj_pal gMonPalette_Garbodor , 622
obj_pal gMonPalette_Zorua , 623
obj_pal gMonPalette_Zoroark , 624
obj_pal gMonPalette_Minccino , 625
obj_pal gMonPalette_Cinccino , 626
obj_pal gMonPalette_Gothita , 627
obj_pal gMonPalette_Gothorita , 628
obj_pal gMonPalette_Gothitelle , 629
obj_pal gMonPalette_Solosis , 630
obj_pal gMonPalette_Duosion , 631
obj_pal gMonPalette_Reuniclus , 632
obj_pal gMonPalette_Ducklett , 633
obj_pal gMonPalette_Swanna , 634
obj_pal gMonPalette_Vanillite , 635
obj_pal gMonPalette_Vanillish , 636
obj_pal gMonPalette_Vanilluxe , 637
obj_pal gMonPalette_Deerling , 638
obj_pal gMonPalette_Sawsbuck , 639
obj_pal gMonPalette_Emolga , 640
obj_pal gMonPalette_Karrablast , 641
obj_pal gMonPalette_Escavalier , 642
obj_pal gMonPalette_Foongus , 643
obj_pal gMonPalette_Amoonguss , 644
obj_pal gMonPalette_Frillish , 645
obj_pal gMonPalette_Jellicent , 646
obj_pal gMonPalette_Alomomola , 647
obj_pal gMonPalette_Joltik , 648
obj_pal gMonPalette_Galvantula , 649
obj_pal gMonPalette_Ferroseed , 650
obj_pal gMonPalette_Ferrothorn , 651
obj_pal gMonPalette_Klink , 652
obj_pal gMonPalette_Klang , 653
obj_pal gMonPalette_Klinklang , 654
obj_pal gMonPalette_Tynamo , 655
obj_pal gMonPalette_Eelektrik , 656
obj_pal gMonPalette_Eelektross , 657
obj_pal gMonPalette_Elgyem , 658
obj_pal gMonPalette_Beheeyem , 659
obj_pal gMonPalette_Litwick , 660
obj_pal gMonPalette_Lampent , 661
obj_pal gMonPalette_Chandelure , 662
obj_pal gMonPalette_Axew , 663
obj_pal gMonPalette_Fraxure , 664
obj_pal gMonPalette_Haxorus , 665
obj_pal gMonPalette_Cubchoo , 666
obj_pal gMonPalette_Beartic , 667
obj_pal gMonPalette_Cryogonal , 668
obj_pal gMonPalette_Shelmet , 669
obj_pal gMonPalette_Accelgor , 670
obj_pal gMonPalette_Stunfisk , 671
obj_pal gMonPalette_Mienfoo , 672
obj_pal gMonPalette_Mienshao , 673
obj_pal gMonPalette_Druddigon , 674
obj_pal gMonPalette_Golett , 675
obj_pal gMonPalette_Golurk , 676
obj_pal gMonPalette_Pawniard , 677
obj_pal gMonPalette_Bisharp , 678
obj_pal gMonPalette_Bouffalant , 679
obj_pal gMonPalette_Rufflet , 680
obj_pal gMonPalette_Braviary , 681
obj_pal gMonPalette_Vullaby , 682
obj_pal gMonPalette_Mandibuzz , 683
obj_pal gMonPalette_Heatmor , 684
obj_pal gMonPalette_Durant , 685
obj_pal gMonPalette_Deino , 686
obj_pal gMonPalette_Zweilous , 687
obj_pal gMonPalette_Hydreigon , 688
obj_pal gMonPalette_Larvesta , 689
obj_pal gMonPalette_Volcarona , 690
obj_pal gMonPalette_Cobalion , 691
obj_pal gMonPalette_Terrakion , 692
obj_pal gMonPalette_Virizion , 693
obj_pal gMonPalette_Tornadus , 694
obj_pal gMonPalette_Thundurus , 695
obj_pal gMonPalette_Reshiram , 696
obj_pal gMonPalette_Zekrom , 697
obj_pal gMonPalette_Landorus , 698
obj_pal gMonPalette_Kyurem , 699
obj_pal gMonPalette_Keldeo , 700
obj_pal gMonPalette_Meloetta , 701
obj_pal gMonPalette_Genesect , 702
obj_pal gMonPalette_Chespin , 703
obj_pal gMonPalette_Quilladin , 704
obj_pal gMonPalette_Chesnaught , 705
obj_pal gMonPalette_Fennekin , 706
obj_pal gMonPalette_Braixen , 707
obj_pal gMonPalette_Delphox , 708
obj_pal gMonPalette_Froakie , 709
obj_pal gMonPalette_Frogadier , 710
obj_pal gMonPalette_Greninja , 711
obj_pal gMonPalette_Bunnelby , 712
obj_pal gMonPalette_Diggersby , 713
obj_pal gMonPalette_Fletchling , 714
obj_pal gMonPalette_Fletchinder , 715
obj_pal gMonPalette_Talonflame , 716
obj_pal gMonPalette_Scatterbug , 717
obj_pal gMonPalette_Spewpa , 718
obj_pal gMonPalette_Vivillon , 719
obj_pal gMonPalette_Litleo , 720
obj_pal gMonPalette_Pyroar , 721
obj_pal gMonPalette_Flabebe , 722
obj_pal gMonPalette_Floette , 723
obj_pal gMonPalette_Florges , 724
obj_pal gMonPalette_Skiddo , 725
obj_pal gMonPalette_Gogoat , 726
obj_pal gMonPalette_Pancham , 727
obj_pal gMonPalette_Pangoro , 728
obj_pal gMonPalette_Furfrou , 729
obj_pal gMonPalette_Espurr , 730
obj_pal gMonPalette_Meowstic , 731
obj_pal gMonPalette_Honedge , 732
obj_pal gMonPalette_Doublade , 733
obj_pal gMonPalette_Aegislash , 734
obj_pal gMonPalette_Spritzee , 735
obj_pal gMonPalette_Aromatisse , 736
obj_pal gMonPalette_Swirlix , 737
obj_pal gMonPalette_Slurpuff , 738
obj_pal gMonPalette_Inkay , 739
obj_pal gMonPalette_Malamar , 740
obj_pal gMonPalette_Binacle , 741
obj_pal gMonPalette_Barbaracle , 742
obj_pal gMonPalette_Skrelp , 743
obj_pal gMonPalette_Dragalge , 744
obj_pal gMonPalette_Clauncher , 745
obj_pal gMonPalette_Clawitzer , 746
obj_pal gMonPalette_Helioptile , 747
obj_pal gMonPalette_Heliolisk , 748
obj_pal gMonPalette_Tyrunt , 749
obj_pal gMonPalette_Tyrantrum , 750
obj_pal gMonPalette_Amaura , 751
obj_pal gMonPalette_Aurorus , 752
obj_pal gMonPalette_Sylveon , 753
obj_pal gMonPalette_Hawlucha , 754
obj_pal gMonPalette_Dedenne , 755
obj_pal gMonPalette_Carbink , 756
obj_pal gMonPalette_Goomy , 757
obj_pal gMonPalette_Sliggoo , 758
obj_pal gMonPalette_Goodra , 759
obj_pal gMonPalette_Klefki , 760
obj_pal gMonPalette_Phantump , 761
obj_pal gMonPalette_Trevenant , 762
obj_pal gMonPalette_Pumpkaboo , 763
obj_pal gMonPalette_Gourgeist , 764
obj_pal gMonPalette_Bergmite , 765
obj_pal gMonPalette_Avalugg , 766
obj_pal gMonPalette_Noibat , 767
obj_pal gMonPalette_Noivern , 768
obj_pal gMonPalette_Xerneas , 769
obj_pal gMonPalette_Yveltal , 770
obj_pal gMonPalette_Zygarde , 771
obj_pal gMonPalette_Diancie , 772
obj_pal gMonPalette_Hoopa , 773
obj_pal gMonPalette_Volcanion , 774
obj_pal gMonPalette_Rowlet , 775
obj_pal gMonPalette_Dartrix , 776
obj_pal gMonPalette_Decidueye , 777
obj_pal gMonPalette_Litten , 778
obj_pal gMonPalette_Torracat , 779
obj_pal gMonPalette_Incineroar , 780
obj_pal gMonPalette_Popplio , 781
obj_pal gMonPalette_Brionne , 782
obj_pal gMonPalette_Primarina , 783
obj_pal gMonPalette_Pikipek , 784
obj_pal gMonPalette_Trumbeak , 785
obj_pal gMonPalette_Toucannon , 786
obj_pal gMonPalette_Yungoos , 787
obj_pal gMonPalette_Gumshoos , 788
obj_pal gMonPalette_Grubbin , 789
obj_pal gMonPalette_Charjabug , 790
obj_pal gMonPalette_Vikavolt , 791
obj_pal gMonPalette_Crabrawler , 792
obj_pal gMonPalette_Crabominable , 793
obj_pal gMonPalette_Oricorio , 794
obj_pal gMonPalette_Cutiefly , 795
obj_pal gMonPalette_Ribombee , 796
obj_pal gMonPalette_Rockruff , 797
obj_pal gMonPalette_Lycanroc , 798
obj_pal gMonPalette_Wishiwashi , 799
obj_pal gMonPalette_Mareanie , 800
obj_pal gMonPalette_Toxapex , 801
obj_pal gMonPalette_Mudbray , 802
obj_pal gMonPalette_Mudsdale , 803
obj_pal gMonPalette_Dewpider , 804
obj_pal gMonPalette_Araquanid , 805
obj_pal gMonPalette_Fomantis , 806
obj_pal gMonPalette_Lurantis , 807
obj_pal gMonPalette_Morelull , 808
obj_pal gMonPalette_Shiinotic , 809
obj_pal gMonPalette_Salandit , 810
obj_pal gMonPalette_Salazzle , 811
obj_pal gMonPalette_Stufful , 812
obj_pal gMonPalette_Bewear , 813
obj_pal gMonPalette_Bounsweet , 814
obj_pal gMonPalette_Steenee , 815
obj_pal gMonPalette_Tsareena , 816
obj_pal gMonPalette_Comfey , 817
obj_pal gMonPalette_Oranguru , 818
obj_pal gMonPalette_Passimian , 819
obj_pal gMonPalette_Wimpod , 820
obj_pal gMonPalette_Golisopod , 821
obj_pal gMonPalette_Sandygast , 822
obj_pal gMonPalette_Palossand , 823
obj_pal gMonPalette_Pyukumuku , 824
obj_pal gMonPalette_Typenull , 825
obj_pal gMonPalette_Silvally , 826
obj_pal gMonPalette_Miniormeteor , 827
obj_pal gMonPalette_Komala , 828
obj_pal gMonPalette_Turtonator , 829
obj_pal gMonPalette_Togedemaru , 830
obj_pal gMonPalette_Mimikyu , 831
obj_pal gMonPalette_Bruxish , 832
obj_pal gMonPalette_Drampa , 833
obj_pal gMonPalette_Dhelmise , 834
obj_pal gMonPalette_Jangmoo , 835
obj_pal gMonPalette_Hakamoo , 836
obj_pal gMonPalette_Kommoo , 837
obj_pal gMonPalette_Tapukoko , 838
obj_pal gMonPalette_Tapulele , 839
obj_pal gMonPalette_Tapubulu , 840
obj_pal gMonPalette_Tapufini , 841
obj_pal gMonPalette_Cosmog , 842
obj_pal gMonPalette_Cosmoem , 843
obj_pal gMonPalette_Solgaleo , 844
obj_pal gMonPalette_Lunala , 845
obj_pal gMonPalette_Nihilego , 846
obj_pal gMonPalette_Buzzwole , 847
obj_pal gMonPalette_Pheromosa , 848
obj_pal gMonPalette_Xurkitree , 849
obj_pal gMonPalette_Celesteela , 850
obj_pal gMonPalette_Kartana , 851
obj_pal gMonPalette_Guzzlord , 852
obj_pal gMonPalette_Necrozma , 853
obj_pal gMonPalette_Magearna , 854
obj_pal gMonPalette_Marshadow , 855
obj_pal gMonPalette_Deoxysattack , 856
obj_pal gMonPalette_Deoxysdefense , 857
obj_pal gMonPalette_Deoxysspeed , 858
obj_pal gMonPalette_Burmysandy , 859
obj_pal gMonPalette_Burmytrash , 860
obj_pal gMonPalette_Wormadamsandy , 861
obj_pal gMonPalette_Wormadamtrash , 862
obj_pal gMonPalette_Cherrimsunshine , 863
obj_pal gMonPalette_Shelloseast , 864
obj_pal gMonPalette_Gastrodoneast , 865
obj_pal gMonPalette_Rotomheat , 866
obj_pal gMonPalette_Rotomwash , 867
obj_pal gMonPalette_Rotomfrost , 868
obj_pal gMonPalette_Rotomfan , 869
obj_pal gMonPalette_Rotommow , 870
obj_pal gMonPalette_Giratinaorigin , 871
obj_pal gMonPalette_Shayminsky , 872
obj_pal gMonPalette_Arceusfighting , 873
obj_pal gMonPalette_Arceusflying , 874
obj_pal gMonPalette_Arceuspoison , 875
obj_pal gMonPalette_Arceusground , 876
obj_pal gMonPalette_Arceusrock , 877
obj_pal gMonPalette_Arceusbug , 878
obj_pal gMonPalette_Arceusghost , 879
obj_pal gMonPalette_Arceussteel , 880
obj_pal gMonPalette_Arceusegg , 881
obj_pal gMonPalette_Arceusfire , 882
obj_pal gMonPalette_Arceuswater , 883
obj_pal gMonPalette_Arceusgrass , 884
obj_pal gMonPalette_Arceuselectric , 885
obj_pal gMonPalette_Arceuspsychic , 886
obj_pal gMonPalette_Arceusice , 887
obj_pal gMonPalette_Arceusdragon , 888
obj_pal gMonPalette_Arceusdark , 889
obj_pal gMonPalette_Arceusfairy , 890
obj_pal gMonPalette_Pichuspikyeared , 891
obj_pal gMonPalette_Basculinbluestriped , 892
obj_pal gMonPalette_Darmanitanzen , 893
obj_pal gMonPalette_Tornadustherian , 894
obj_pal gMonPalette_Thundurustherian , 895
obj_pal gMonPalette_Landorustherian , 896
obj_pal gMonPalette_Kyuremwhite , 897
obj_pal gMonPalette_Kyuremblack , 898
obj_pal gMonPalette_Keldeoresolute , 899
obj_pal gMonPalette_Meloettapirouette , 900
obj_pal gMonPalette_Genesectburn , 901
obj_pal gMonPalette_Genesectchill , 902
obj_pal gMonPalette_Genesectdouse , 903
obj_pal gMonPalette_Genesectshock , 904
obj_pal gMonPalette_Greninjabattlebond , 905
obj_pal gMonPalette_Greninjaash , 906
obj_pal gMonPalette_Vivillonarchipelago , 907
obj_pal gMonPalette_Vivilloncontinent , 908
obj_pal gMonPalette_Vivillonelegant , 909
obj_pal gMonPalette_Vivillongarden , 910
obj_pal gMonPalette_Vivillonhighplains , 911
obj_pal gMonPalette_Vivillonicysnow , 912
obj_pal gMonPalette_Vivillonjungle , 913
obj_pal gMonPalette_Vivillonmarine , 914
obj_pal gMonPalette_Vivillonmodern , 915
obj_pal gMonPalette_Vivillonmonsoon , 916
obj_pal gMonPalette_Vivillonocean , 917
obj_pal gMonPalette_Vivillonpolar , 918
obj_pal gMonPalette_Vivillonriver , 919
obj_pal gMonPalette_Vivillonsandstorm , 920
obj_pal gMonPalette_Vivillonsavanna , 921
obj_pal gMonPalette_Vivillonsun , 922
obj_pal gMonPalette_Vivillontundra , 923
obj_pal gMonPalette_Vivillonpokeball , 924
obj_pal gMonPalette_Vivillonfancy , 925
obj_pal gMonPalette_Flabebeyellow , 926
obj_pal gMonPalette_Flabebeorange , 927
obj_pal gMonPalette_Flabebeblue , 928
obj_pal gMonPalette_Flabebewhite , 929
obj_pal gMonPalette_Floetteyellow , 930
obj_pal gMonPalette_Floetteorange , 931
obj_pal gMonPalette_Floetteblue , 932
obj_pal gMonPalette_Floettewhite , 933
obj_pal gMonPalette_Floetteeternal , 934
obj_pal gMonPalette_Florgesyellow , 935
obj_pal gMonPalette_Florgesorange , 936
obj_pal gMonPalette_Florgesblue , 937
obj_pal gMonPalette_Florgeswhite , 938
obj_pal gMonPalette_Furfrouheart , 939
obj_pal gMonPalette_Furfroustar , 940
obj_pal gMonPalette_Furfroudiamond , 941
obj_pal gMonPalette_Furfroudebutante , 942
obj_pal gMonPalette_Furfroumaton , 943
obj_pal gMonPalette_Furfroudandy , 944
obj_pal gMonPalette_Furfroulareine , 945
obj_pal gMonPalette_Furfroukabuki , 946
obj_pal gMonPalette_Furfroupharaoh , 947
obj_pal gMonPalette_Meowsticf , 948
obj_pal gMonPalette_Aegislashblade , 949
obj_pal gMonPalette_Pumpkaboosmall , 950
obj_pal gMonPalette_Pumpkaboolarge , 951
obj_pal gMonPalette_Pumpkaboosuper , 952
obj_pal gMonPalette_Gourgeistsmall , 953
obj_pal gMonPalette_Gourgeistlarge , 954
obj_pal gMonPalette_Gourgeistsuper , 955
obj_pal gMonPalette_Zygarde10 , 956
obj_pal gMonPalette_Zygardecomplete , 957
obj_pal gMonPalette_Hoopaunbound , 958
obj_pal gMonPalette_Pikachucosplay , 959
obj_pal gMonPalette_Pikachurs , 960
obj_pal gMonPalette_Pikachub , 961
obj_pal gMonPalette_Pikachups , 962
obj_pal gMonPalette_Pikachuph , 963
obj_pal gMonPalette_Pikachul , 964
obj_pal gMonPalette_Venusaurmega , 965
obj_pal gMonPalette_Charizardmegax , 966
obj_pal gMonPalette_Charizardmegay , 967
obj_pal gMonPalette_Blastoisemega , 968
obj_pal gMonPalette_Beedrillmega , 969
obj_pal gMonPalette_Pidgeotmega , 970
obj_pal gMonPalette_Alakazammega , 971
obj_pal gMonPalette_Slowbromega , 972
obj_pal gMonPalette_Gengarmega , 973
obj_pal gMonPalette_Kangaskhanmega , 974
obj_pal gMonPalette_Pinsirmega , 975
obj_pal gMonPalette_Gyaradosmega , 976
obj_pal gMonPalette_Aerodactylmega , 977
obj_pal gMonPalette_Mewtwomegax , 978
obj_pal gMonPalette_Mewtwomegay , 979
obj_pal gMonPalette_Ampharosmega , 980
obj_pal gMonPalette_Steelixmega , 981
obj_pal gMonPalette_Scizormega , 982
obj_pal gMonPalette_Heracrossmega , 983
obj_pal gMonPalette_Houndoommega , 984
obj_pal gMonPalette_Tyranitarmega , 985
obj_pal gMonPalette_Sceptilemega , 986
obj_pal gMonPalette_Blazikenmega , 987
obj_pal gMonPalette_Swampertmega , 988
obj_pal gMonPalette_Gardevoirmega , 989
obj_pal gMonPalette_Sableyemega , 990
obj_pal gMonPalette_Mawilemega , 991
obj_pal gMonPalette_Aggronmega , 992
obj_pal gMonPalette_Medichammega , 993
obj_pal gMonPalette_Manectricmega , 994
obj_pal gMonPalette_Sharpedomega , 995
obj_pal gMonPalette_Cameruptmega , 996
obj_pal gMonPalette_Altariamega , 997
obj_pal gMonPalette_Banettemega , 998
obj_pal gMonPalette_Absolmega , 999
obj_pal gMonPalette_Glaliemega , 1000
obj_pal gMonPalette_Salamencemega , 1001
obj_pal gMonPalette_Metagrossmega , 1002
obj_pal gMonPalette_Latiasmega , 1003
obj_pal gMonPalette_Latiosmega , 1004
obj_pal gMonPalette_Kyogreprimal , 1005
obj_pal gMonPalette_Groudonprimal , 1006
obj_pal gMonPalette_Rayquazamega , 1007
obj_pal gMonPalette_Lopunnymega , 1008
obj_pal gMonPalette_Garchompmega , 1009
obj_pal gMonPalette_Lucariomega , 1010
obj_pal gMonPalette_Abomasnowmega , 1011
obj_pal gMonPalette_Gallademega , 1012
obj_pal gMonPalette_Audinomega , 1013
obj_pal gMonPalette_Dianciemega , 1014
obj_pal gMonPalette_Oricoriopompom , 1015
obj_pal gMonPalette_Oricoriopau , 1016
obj_pal gMonPalette_Oricoriosensu , 1017
obj_pal gMonPalette_Lycanrocmidnight , 1018
obj_pal gMonPalette_Wishiwashischool , 1019
obj_pal gMonPalette_Silvallyfighting , 1020
obj_pal gMonPalette_Silvallyflying , 1021
obj_pal gMonPalette_Silvallypoison , 1022
obj_pal gMonPalette_Silvallyground , 1023
obj_pal gMonPalette_Silvallyrock , 1024
obj_pal gMonPalette_Silvallybug , 1025
obj_pal gMonPalette_Silvallyghost , 1026
obj_pal gMonPalette_Silvallysteel , 1027
obj_pal gMonPalette_Silvallyfire , 1028
obj_pal gMonPalette_Silvallywater , 1029
obj_pal gMonPalette_Silvallygrass , 1030
obj_pal gMonPalette_Silvallyelectric , 1031
obj_pal gMonPalette_Silvallypsychic , 1032
obj_pal gMonPalette_Silvallyice , 1033
obj_pal gMonPalette_Silvallydragon , 1034
obj_pal gMonPalette_Silvallydark , 1035
obj_pal gMonPalette_Silvallyfairy , 1036
obj_pal gMonPalette_Miniorred , 1037
obj_pal gMonPalette_Minioryellow , 1038
obj_pal gMonPalette_Miniororange , 1039
obj_pal gMonPalette_Miniorgreem , 1040
obj_pal gMonPalette_Miniorblue , 1041
obj_pal gMonPalette_Miniorindigo , 1042
obj_pal gMonPalette_Miniorviolet , 1043
obj_pal gMonPalette_Mimikyubusted , 1044
obj_pal gMonPalette_Solgaleoradiant , 1045
obj_pal gMonPalette_Lunalaradiant , 1046
obj_pal gMonPalette_Rattataalola , 1047
obj_pal gMonPalette_Raticatealola , 1048
obj_pal gMonPalette_Raichualola , 1049
obj_pal gMonPalette_Sandshrewalola , 1050
obj_pal gMonPalette_Sandslashalola , 1051
obj_pal gMonPalette_Vulpixalola , 1052
obj_pal gMonPalette_Ninetalesalola , 1053
obj_pal gMonPalette_Diglettalola , 1054
obj_pal gMonPalette_Dugtrioalola , 1055
obj_pal gMonPalette_Meowthalola , 1056
obj_pal gMonPalette_Persianalola , 1057
obj_pal gMonPalette_Geodudealola , 1058
obj_pal gMonPalette_Graveleralola , 1059
obj_pal gMonPalette_Golemalola , 1060
obj_pal gMonPalette_Grimeralola , 1061
obj_pal gMonPalette_Mukalola , 1062
obj_pal gMonPalette_Exeggutoralola , 1063
obj_pal gMonPalette_Marowakalola , 1064
obj_pal gMonPalette_Pikachuoriginalcap , 1065
obj_pal gMonPalette_Pikachuhoenncap , 1066
obj_pal gMonPalette_Pikachusinnohcap , 1067
obj_pal gMonPalette_Pikachuunovacap , 1068
obj_pal gMonPalette_Pikachukaloscap , 1069
obj_pal gMonPalette_Pikachualolacap , 1070
obj_pal gMonPalette_Pikachuash , 1071

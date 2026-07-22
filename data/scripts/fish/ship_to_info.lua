--[[
From EvilPepperPlayz
]]

-- ship_definitions.lua
-- Explicit table: [ID] = { image_filename, page_number, display_name }
local ship_definitions = {

  -- Page 1
  ["PLAYER_SHIP_MVKESTREL"] = { "ship/mup_mvkestrel_a_base.png", 1, "MV Kestrel Cruiser A", 599, 374 },
  ["PLAYER_SHIP_MVFED"] = { "ship/mup_mvfed_a_base.png", 1, "MV Federation Cruiser A", 666, 351 },
  ["PLAYER_SHIP_MVSTEALTH"] = { "ship/mup_mvstealth_a_base.png", 1, "MV Stealth Cruiser A", 595, 438 },
  ["PLAYER_SHIP_MVENGI"] = { "ship/mup_mvengi_a_base.png", 1, "MV Harmony Cruiser A", 440, 325 },
  ["PLAYER_SHIP_MVCIVILIAN"] = { "ship/mup_mvunion_a_base.png", 1, "MV Union Cruiser A", 540, 377 },
  ["PLAYER_SHIP_MVCRYSTAL"] = { "ship/mup_mvcrystal_a_base.png", 1, "MV Imperial Cruiser A", 721, 457 },
  ["PLAYER_SHIP_MVDYNASTY"] = { "ship/mup_mvdynasty_a_base.png", 1, "MV Spectral Cruiser A", 781, 474 },
  ["PLAYER_SHIP_MVLANIUS"] = { "ship/mup_mvlanius_a_base.png", 1, "MV Augmented Cruiser A", 600, 628 },
  ["PLAYER_SHIP_PROTOMV"] = { "ship/mup_multiverse_a_base.png", 1, "Proto-MV Cruiser A", 530, 520 },
  ["PLAYER_SHIP_PROTOMV_2"] = { "ship/mup_multiverse_b_base.png", 1, "Proto-MV Cruiser B", 530, 520 },
  ["PLAYER_SHIP_PROTOMV_3"] = { "ship/mup_multiverse_c_base.png", 1, "Proto-MV Cruiser C", 530, 520 },
  ["PLAYER_SHIP_FLAGSHIP"] = { "ship/mup_flagship_a_base.png", 1, "Multiverse Flagship (player) A", 530, 537 },
  ["PLAYER_SHIP_FLAGSHIP_2"] = { "ship/mup_flagship_b_base.png", 1, "Multiverse Flagship (player) B", 470, 467 },
  ["PLAYER_SHIP_FLAGSHIP_3"] = { "ship/mup_flagship_c_base.png", 1, "Multiverse Flagship (player) C", 439, 419 },

  -- Page 2
  ["PLAYER_SHIP_UNION"] = { "ship/mup_union_a_base.png", 2, "Union Cruiser A", 540, 377 },
  ["PLAYER_SHIP_UNION_2"] = { "ship/mup_union_b_base.png", 2, "Union Cruiser B", 540, 377 },
  ["PLAYER_SHIP_UNION_3"] = { "ship/mup_union_c_base.png", 2, "Union Cruiser C", 540, 377 },
  ["PLAYER_SHIP_MILITIA"] = { "ship/mup_militia_a_base.png", 2, "Militia Cruiser A", 674, 379 },
  ["PLAYER_SHIP_MILITIA_2"] = { "ship/mup_militia_b_base.png", 2, "Militia Cruiser B", 674, 379 },
  ["PLAYER_SHIP_MILITIA_3"] = { "ship/mup_militia_c_base.png", 2, "Militia Cruiser C", 674, 379 },
  ["PLAYER_SHIP_KESTREL"] = { "ship/mup_kestrel_a_base.png", 2, "Kestrel Cruiser A", 597, 370 },
  ["PLAYER_SHIP_KESTREL_2"] = { "ship/mup_kestrel_b_base.png", 2, "Kestrel Cruiser B", 599, 374 },
  ["PLAYER_SHIP_KESTREL_3"] = { "ship/mup_kestrel_c_base.png", 2, "Kestrel Cruiser C", 599, 374 },
  ["PLAYER_SHIP_FEDERATION"] = { "ship/mup_federation_a_base.png", 2, "Federation Cruiser A", 657, 345 },
  ["PLAYER_SHIP_FEDERATION_2"] = { "ship/mup_federation_b_base.png", 2, "Federation Cruiser B", 657, 345 },
  ["PLAYER_SHIP_FEDERATION_3"] = { "ship/mup_federation_c_base.png", 2, "Federation Cruiser C", 657, 345 },
  ["PLAYER_SHIP_CLOAK"] = { "ship/mup_stealth_a_base.png", 2, "Stealth Cruiser A", 595, 438 },
  ["PLAYER_SHIP_CLOAK_2"] = { "ship/mup_stealth_b_base.png", 2, "Stealth Cruiser B", 595, 438 },
  ["PLAYER_SHIP_CLOAK_3"] = { "ship/mup_stealth_c_base.png", 2, "Stealth Cruiser C", 595, 438 },
  ["PLAYER_SHIP_AUTO_FED"] = { "ship/mup_auto_fed_a_base.png", 2, "Federation Auto-Cruiser A", 511, 491 },
  ["PLAYER_SHIP_AUTO_FED_2"] = { "ship/mup_auto_fed_b_base.png", 2, "Federation Auto-Cruiser B", 511, 491 },
  ["PLAYER_SHIP_AUTO_FED_3"] = { "ship/mup_auto_fed_c_base.png", 2, "Federation Auto-Cruiser C", 511, 491 },
  ["PLAYER_SHIP_HORSE"] = { "ship/mup_pony_a_base.png", 2, "Equinoid Cruiser A", 543, 434 },
  ["PLAYER_SHIP_HORSE_2"] = { "ship/mup_pony_b_base.png", 2, "Equinoid Cruiser B", 543, 434 },
  ["PLAYER_SHIP_HORSE_3"] = { "ship/mup_pony_c_base.png", 2, "Equinoid Cruiser C", 543, 434 },
  ["ELITE_SHIP_MILITIA"] = { "ship/mupe_militia_base.png", 2, "EDC Cruiser", 674, 379 },
  ["ELITE_SHIP_FED"] = { "ship/mupe_federation_base.png", 2, "Unity Cruiser", 657, 345 },

  -- Page 3
  ["PLAYER_SHIP_REBEL"] = { "ship/mup_rebel_a_base.png", 3, "Rebel Cruiser A", 511, 371 },
  ["PLAYER_SHIP_REBEL_2"] = { "ship/mup_rebel_b_base.png", 3, "Rebel Cruiser B", 511, 371 },
  ["PLAYER_SHIP_REBEL_3"] = { "ship/mup_rebel_c_base.png", 3, "Rebel Cruiser C", 511, 371 },
  ["PLAYER_SHIP_ENGINEER"] = { "ship/mup_engineer_a_base.png", 3, "Engineer Cruiser A", 587, 529 },
  ["PLAYER_SHIP_ENGINEER_2"] = { "ship/mup_engineer_b_base.png", 3, "Engineer Cruiser B", 587, 529 },
  ["PLAYER_SHIP_ENGINEER_3"] = { "ship/mup_engineer_c_base.png", 3, "Engineer Cruiser C", 587, 529 },
  ["PLAYER_SHIP_AUTO"] = { "ship/mup_auto_a_base.png", 3, "Auto-Cruiser A", 399, 488 },
  ["PLAYER_SHIP_AUTO_2"] = { "ship/mup_auto_b_base.png", 3, "Auto-Cruiser B", 399, 507 },
  ["PLAYER_SHIP_AUTO_3"] = { "ship/mup_auto_c_base.png", 3, "Auto-Cruiser C", 407, 507 },
  ["PLAYER_SHIP_MVREBEL"] = { "ship/mup_mvrebel_a_base.png", 3, "MV Rebel Cruiser A", 580, 487 },
  ["PLAYER_SHIP_MVREBEL_2"] = { "ship/mup_mvrebel_b_base.png", 3, "MV Rebel Cruiser B", 580, 487 },
  ["PLAYER_SHIP_MVREBEL_3"] = { "ship/mup_mvrebel_c_base.png", 3, "MV Rebel Cruiser C", 580, 487 },
  ["PLAYER_SHIP_MFK"] = { "ship/mup_mfk_a_base.png", 3, "MFK Ace Cruiser A", 528, 480 },
  ["PLAYER_SHIP_MFK_2"] = { "ship/mup_mfk_b_base.png", 3, "MFK Ace Cruiser B", 528, 480 },
  ["PLAYER_SHIP_MFK_3"] = { "ship/mup_mfk_c_base.png", 3, "MFK Ace Cruiser C", 528, 480 },
  ["PLAYER_SHIP_CURA"] = { "ship/mup_cura_a_base.png", 3, "Innovation Cruiser A", 498, 478 },
  ["PLAYER_SHIP_CURA_2"] = { "ship/mup_cura_b_base.png", 3, "Innovation Cruiser B", 498, 478 },
  ["PLAYER_SHIP_CURA_3"] = { "ship/mup_cura_c_base.png", 3, "Innovation Cruiser C", 498, 478 },
  ["PLAYER_SHIP_TECHNICIAN"] = { "ship/mup_tech_a_base.png", 3, "Technician Cruiser A", 648, 447 },
  ["PLAYER_SHIP_TECHNICIAN_2"] = { "ship/mup_tech_b_base.png", 3, "Technician Cruiser B", 648, 447 },
  ["PLAYER_SHIP_TECHNICIAN_3"] = { "ship/mup_tech_c_base.png", 3, "Technician Cruiser C", 648, 447 },
  ["ELITE_SHIP_REBEL"] = { "ship/mupe_rebel_base.png", 3, "Elite Rebel Cruiser", 511, 371 },
  ["ELITE_SHIP_REBEL_2"] = { "ship/mupe_rebel_ace_base.png", 3, "Alt-MFK Cruiser B", 511, 371 },

  -- Page 4
  ["PLAYER_SHIP_PROTOTYPE"] = { "ship/mup_smuggler_a_base.png", 4, "Prototype Cruiser A", 469, 347 },
  ["PLAYER_SHIP_PROTOTYPE_2"] = { "ship/mup_smuggler_b_base.png", 4, "Prototype Cruiser B", 469, 347 },
  ["PLAYER_SHIP_PROTOTYPE_3"] = { "ship/mup_smuggler_c_base.png", 4, "Prototype Cruiser C", 469, 347 },
  ["PLAYER_SHIP_TUCO"] = { "ship/mup_tuco_a_base.png", 4, "Tuco's Cruiser A", 479, 360 },
  ["PLAYER_SHIP_TUCO_2"] = { "ship/mup_tuco_b_base.png", 4, "Tuco's Cruiser B", 479, 479 },
  ["PLAYER_SHIP_TUCO_3"] = { "ship/mup_tuco_c_base.png", 4, "Tuco's Cruiser C", 479, 360 },
  ["PLAYER_SHIP_ANGEL"] = { "ship/mup_angel_a_base.png", 4, "Angel Cruiser A", 503, 406 },
  ["PLAYER_SHIP_ANGEL_2"] = { "ship/mup_angel_b_base.png", 4, "Angel Cruiser B", 503, 406 },
  ["PLAYER_SHIP_ANGEL_3"] = { "ship/mup_angel_c_base.png", 4, "Angel Cruiser C", 503, 406 },
  ["PLAYER_SHIP_BROOD"] = { "ship/mup_brood_a_base.png", 4, "Brood Cruiser A", 583, 481 },
  ["PLAYER_SHIP_BROOD_2"] = { "ship/mup_brood_b_base.png", 4, "Brood Cruiser B", 583, 481 },
  ["PLAYER_SHIP_BROOD_3"] = { "ship/mup_brood_c_base.png", 4, "Brood Cruiser C", 583, 481 },
  ["PLAYER_SHIP_SPIDER"] = { "ship/mup_spider_a_base.png", 4, "Spider Hunter Cruiser A", 454, 470 },
  ["PLAYER_SHIP_SPIDER_2"] = { "ship/mup_spider_b_base.png", 4, "Spider Hunter Cruiser B", 454, 470 },
  ["PLAYER_SHIP_SPIDER_3"] = { "ship/mup_spider_c_base.png", 4, "Spider Hunter Cruiser C", 454, 470 },

  -- Page 5
  ["PLAYER_SHIP_ENGI"] = { "ship/mup_engi_a_base.png", 5, "Engi Cruiser A", 440, 325 },
  ["PLAYER_SHIP_ENGI_2"] = { "ship/mup_engi_b_base.png", 5, "Engi Cruiser B", 440, 325 },
  ["PLAYER_SHIP_ENGI_3"] = { "ship/mup_engi_c_base.png", 5, "Engi Cruiser C", 440, 325 },
  ["PLAYER_SHIP_SEPARATIST"] = { "ship/mup_separatist_a_base.png", 5, "Separatist Cruiser A", 405, 357 },
  ["PLAYER_SHIP_SEPARATIST_2"] = { "ship/mup_separatist_b_base.png", 5, "Separatist Cruiser B", 405, 357 },
  ["PLAYER_SHIP_SEPARATIST_3"] = { "ship/mup_separatist_c_base.png", 5, "Separatist Cruiser C", 405, 357 },
  ["ELITE_SHIP_ENGI"] = { "ship/mupe_engi_base.png", 5, "Harmony Cruiser", 440, 325 },

  -- Page 6
  ["PLAYER_SHIP_ZOLTAN"] = { "ship/mup_zoltan_a_base.png", 6, "Ministry Cruiser A", 630, 348 },
  ["PLAYER_SHIP_ZOLTAN_2"] = { "ship/mup_zoltan_b_base.png", 6, "Ministry Cruiser B", 630, 348 },
  ["PLAYER_SHIP_ZOLTAN_3"] = { "ship/mup_zoltan_c_base.png", 6, "Ministry Cruiser C", 630, 348 },
  ["PLAYER_SHIP_DUSKBRINGER"] = { "ship/mup_dusk_a_base.png", 6, "Duskbringer Cruiser A", 543, 308 },
  ["PLAYER_SHIP_DUSKBRINGER_2"] = { "ship/mup_dusk_b_base.png", 6, "Duskbringer Cruiser B", 543, 308 },
  ["PLAYER_SHIP_DUSKBRINGER_3"] = { "ship/mup_dusk_c_base.png", 6, "Duskbringer Cruiser C", 543, 308 },
  ["PLAYER_SHIP_MONK"] = { "ship/mup_monk_a_base.png", 6, "Illesctrian Cruiser A", 504, 309 },
  ["PLAYER_SHIP_MONK_2"] = { "ship/mup_monk_b_base.png", 6, "Illesctrian Cruiser B", 514, 343 },
  ["PLAYER_SHIP_MONK_3"] = { "ship/mup_monk_c_base.png", 6, "Illesctrian Cruiser C", 504, 355 },
  ["PLAYER_SHIP_PEACEKEEPER"] = { "ship/mup_peace_a_base.png", 6, "Peacekeeping Cruiser A", 580, 267 },
  ["PLAYER_SHIP_PEACEKEEPER_2"] = { "ship/mup_peace_b_base.png", 6, "Peacekeeping Cruiser B", 580, 267 },
  ["PLAYER_SHIP_PEACEKEEPER_3"] = { "ship/mup_peace_c_base.png", 6, "Peacekeeping Cruiser C", 580, 267 },
  ["PLAYER_SHIP_OSMIA"] = { "ship/mup_osmia_a_base.png", 6, "Osmian Cruiser A", 599, 260 },
  ["PLAYER_SHIP_OSMIA_2"] = { "ship/mup_osmia_b_base.png", 6, "Osmian Cruiser B", 599, 260 },
  ["PLAYER_SHIP_OSMIA_3"] = { "ship/mup_osmia_c_base.png", 6, "Osmian Cruiser C", 599, 260 },
  ["ELITE_SHIP_ZOLTAN"] = { "ship/mupe_zoltan_base.png", 6, "Alt-Peacekeeping Cruiser", 630, 348 },
  ["ELITE_SHIP_DUSK"] = { "ship/mupe_duskbringer_base.png", 6, "New Order Cruiser", 545, 308 },

  -- Page 7
  ["PLAYER_SHIP_HIVE"] = { "ship/mup_mantis_a_base.png", 7, "Hive Cruiser A", 650, 469 },
  ["PLAYER_SHIP_HIVE_2"] = { "ship/mup_mantis_b_base.png", 7, "Hive Cruiser B", 650, 469 },
  ["PLAYER_SHIP_HIVE_3"] = { "ship/mup_mantis_c_base.png", 7, "Hive Cruiser C", 650, 469 },
  ["PLAYER_SHIP_FREEMANTIS"] = { "ship/mup_freemantis_a_base.png", 7, "Free Mantis Cruiser A", 521, 470 },
  ["PLAYER_SHIP_FREEMANTIS_2"] = { "ship/mup_freemantis_b_base.png", 7, "Free Mantis Cruiser B", 521, 470 },
  ["PLAYER_SHIP_FREEMANTIS_3"] = { "ship/mup_freemantis_c_base.png", 7, "Free Mantis Cruiser C", 548, 518 },
  ["PLAYER_SHIP_SUZERAIN"] = { "ship/mup_suzerain_a_base.png", 7, "Suzerain Cruiser A", 505, 495 },
  ["PLAYER_SHIP_SUZERAIN_2"] = { "ship/mup_suzerain_b_base.png", 7, "Suzerain Cruiser B", 504, 494 },
  ["PLAYER_SHIP_SUZERAIN_3"] = { "ship/mup_suzerain_c_base.png", 7, "Suzerain Cruiser C", 504, 494 },
  ["PLAYER_SHIP_BISHOP"] = { "ship/mup_bishop_a_base.png", 7, "Bishop Cruiser A", 650, 469 },
  ["PLAYER_SHIP_BISHOP_2"] = { "ship/mup_bishop_b_base.png", 7, "Bishop Cruiser B", 650, 469 },
  ["PLAYER_SHIP_BISHOP_3"] = { "ship/mup_bishop_c_base.png", 7, "Bishop Cruiser C", 650, 469 },
  ["ELITE_SHIP_MANTIS"] = { "ship/mupe_mantis_base.png", 7, "Alt-Suzerain Cruiser", 650, 469 },
  ["ELITE_SHIP_FREEMANTIS"] = { "ship/mupe_freemantis_base.png", 7, "Warlord Cruiser", 521, 470 },

  -- Page 8
  ["PLAYER_SHIP_ROCKMAN"] = { "ship/mup_rock_a_base.png", 8, "Theocracy Cruiser A", 550, 400 },
  ["PLAYER_SHIP_ROCKMAN_2"] = { "ship/mup_rock_b_base.png", 8, "Theocracy Cruiser B", 550, 400 },
  ["PLAYER_SHIP_ROCKMAN_3"] = { "ship/mup_rock_c_base.png", 8, "Theocracy Cruiser C", 550, 400 },
  ["PLAYER_SHIP_OUTCAST"] = { "ship/mup_outcast_a_base.png", 8, "Outcast Cruiser A", 512, 366 },
  ["PLAYER_SHIP_OUTCAST_2"] = { "ship/mup_outcast_b_base.png", 8, "Outcast Cruiser B", 512, 366 },
  ["PLAYER_SHIP_OUTCAST_3"] = { "ship/mup_outcast_c_base.png", 8, "Outcast Cruiser C", 518, 366 },
  ["PLAYER_SHIP_LOSTSUN"] = { "ship/mup_lostsun_a_base.png", 8, "Lost Sun Cruiser A", 488, 410 },
  ["PLAYER_SHIP_LOSTSUN_2"] = { "ship/mup_lostsun_b_base.png", 8, "Lost Sun Cruiser B", 488, 410 },
  ["PLAYER_SHIP_LOSTSUN_3"] = { "ship/mup_lostsun_c_base.png", 8, "Lost Sun Cruiser C", 488, 410 },
  ["PLAYER_SHIP_PALADIN"] = { "ship/mup_paladin_a_base.png", 8, "Paladin Cruiser (currently unobtainable without commands) A", 556, 362 },
  ["PLAYER_SHIP_PALADIN_2"] = { "ship/mup_paladin_b_base.png", 8, "Paladin Cruiser (currently unobtainable without commands) B", 556, 362 },
  ["PLAYER_SHIP_PALADIN_3"] = { "ship/mup_paladin_c_base.png", 8, "Paladin Cruiser (currently unobtainable without commands) C", 577, 376 },
  ["PLAYER_SHIP_SALT"] = { "ship/mup_salt_a_base.png", 8, "Sodium Cruiser A", 487, 386 },
  ["PLAYER_SHIP_SALT_2"] = { "ship/mup_salt_b_base.png", 8, "Sodium Cruiser B", 487, 386 },
  ["PLAYER_SHIP_SALT_3"] = { "ship/mup_salt_c_base.png", 8, "Sodium Cruiser C", 487, 386 },
  ["PLAYER_SHIP_SSLG"] = { "ship/mup_sslg_a_base.png", 8, "SSLG Cruiser A", 661, 409 },
  ["PLAYER_SHIP_SSLG_2"] = { "ship/mup_sslg_b_base.png", 8, "SSLG Cruiser B", 661, 409 },
  ["PLAYER_SHIP_SSLG_3"] = { "ship/mup_sslg_c_base.png", 8, "SSLG Cruiser C", 661, 409 },
  ["PLAYER_SHIP_CRYSTALLINE"] = { "ship/mup_crystal_a_base.png", 8, "Imperial Cruiser A", 721, 457 },
  ["PLAYER_SHIP_CRYSTALLINE_2"] = { "ship/mup_crystal_b_base.png", 8, "Imperial Cruiser B", 721, 456 },
  ["PLAYER_SHIP_CRYSTALLINE_3"] = { "ship/mup_crystal_c_base.png", 8, "Imperial Cruiser C", 721, 457 },
  ["PLAYER_SHIP_CULTIST"] = { "ship/mup_cultist_a_base.png", 8, "Ember Cruiser A", 569, 435 },
  ["PLAYER_SHIP_CULTIST_2"] = { "ship/mup_cultist_b_base.png", 8, "Ember Cruiser B", 569, 435 },
  ["PLAYER_SHIP_CULTIST_3"] = { "ship/mup_cultist_c_base.png", 8, "Ember Cruiser C", 569, 435 },
  ["ELITE_SHIP_ROCK"] = { "ship/mupe_rock_base.png", 8, "Inquisition Cruiser", 550, 400 },
  ["ELITE_SHIP_ROCK_2"] = { "ship/mupe_paladin_base.png", 8, "Alt-Paladin Cruiser B", 550, 400 },
  ["ELITE_SHIP_CRYSTAL"] = { "ship/mupe_crystal_base.png", 8, "Sentinel Cruiser", 721, 457 },

  -- Page 9
  ["PLAYER_SHIP_SLUG"] = { "ship/mup_slug_a_base.png", 9, "Kleptocracy Cruiser A", 594, 463 },
  ["PLAYER_SHIP_SLUG_2"] = { "ship/mup_slug_b_base.png", 9, "Kleptocracy Cruiser B", 594, 463 },
  ["PLAYER_SHIP_SLUG_3"] = { "ship/mup_slug_c_base.png", 9, "Kleptocracy Cruiser C", 594, 463 },
  ["PLAYER_SHIP_CLAN"] = { "ship/mup_clan_a_base.png", 9, "Guild Cruiser A", 442, 563 },
  ["PLAYER_SHIP_CLAN_2"] = { "ship/mup_clan_b_base.png", 9, "Guild Cruiser B", 442, 563 },
  ["PLAYER_SHIP_CLAN_3"] = { "ship/mup_clan_c_base.png", 9, "Guild Cruiser C", 445, 575 },
  ["PLAYER_SHIP_HEKTAR"] = { "ship/mup_hektar_a_base.png", 9, "Hektar Cruiser A", 541, 334 },
  ["PLAYER_SHIP_HEKTAR_2"] = { "ship/mup_hektar_b_base.png", 9, "Hektar Cruiser B", 541, 334 },
  ["PLAYER_SHIP_HEKTAR_3"] = { "ship/mup_hektar_c_base.png", 9, "Hektar Cruiser C", 541, 334 },
  ["PLAYER_SHIP_PLEASURE"] = { "ship/mup_pleasure_a_base.png", 9, "Pleasure Cruiser A", 641, 371 },
  ["PLAYER_SHIP_PLEASURE_2"] = { "ship/mup_pleasure_b_base.png", 9, "Pleasure Cruiser B", 641, 393 },
  ["PLAYER_SHIP_PLEASURE_3"] = { "ship/mup_pleasure_c_base.png", 9, "Pleasure Cruiser C", 641, 371 },
  ["PLAYER_SHIP_HACKER"] = { "ship/mup_hacker_a_base.png", 9, "Hacker Cruiser A", 591, 380 },
  ["PLAYER_SHIP_HACKER_2"] = { "ship/mup_hacker_b_base.png", 9, "Hacker Cruiser B", 591, 380 },
  ["PLAYER_SHIP_HACKER_3"] = { "ship/mup_hacker_c_base.png", 9, "Hacker Cruiser C", 591, 380 },
  ["PLAYER_SHIP_KNIGHT"] = { "ship/mup_knight_a_base.png", 9, "Knighted Cruiser A", 411, 378 },
  ["PLAYER_SHIP_KNIGHT_2"] = { "ship/mup_knight_b_base.png", 9, "Knighted Cruiser B", 411, 378 },
  ["PLAYER_SHIP_KNIGHT_3"] = { "ship/mup_knight_c_base.png", 9, "Knighted Cruiser C", 411, 378 },
  ["PLAYER_SHIP_SYLVAN"] = { "ship/mup_sylvan_a_base.png", 9, "Sylvan Cruiser A", 681, 283 },
  ["PLAYER_SHIP_SYLVAN_2"] = { "ship/mup_sylvan_b_base.png", 9, "Sylvan Cruiser B", 681, 283 },
  ["PLAYER_SHIP_SYLVAN_3"] = { "ship/mup_sylvan_c_base.png", 9, "Sylvan Cruiser C", 681, 299 },
  ["PLAYER_SHIP_CEL"] = { "ship/mup_cel_a_base.png", 9, "C.E.L. Cruiser A", 610, 488 },
  ["PLAYER_SHIP_CEL_2"] = { "ship/mup_cel_b_base.png", 9, "C.E.L. Cruiser B", 610, 488 },
  ["PLAYER_SHIP_CEL_3"] = { "ship/mup_cel_c_base.png", 9, "C.E.L. Cruiser C", 634, 536 },
  ["ELITE_SHIP_SLUG"] = { "ship/mupe_slug_base.png", 9, "Clairvoyant Cruiser", 594, 463 },
  ["ELITE_SHIP_SLUG_2"] = { "ship/mupe_knight_base.png", 9, "Alt-Knight Cruiser B", 594, 463 },

  -- Page 10
  ["PLAYER_SHIP_ORCHID"] = { "ship/mup_orchid_a_base.png", 10, "Gathering Cruiser A", 566, 454 },
  ["PLAYER_SHIP_ORCHID_2"] = { "ship/mup_orchid_b_base.png", 10, "Gathering Cruiser B", 566, 454 },
  ["PLAYER_SHIP_ORCHID_3"] = { "ship/mup_orchid_c_base.png", 10, "Gathering Cruiser C", 566, 454 },
  ["PLAYER_SHIP_VAMPWEED"] = { "ship/mup_vampweed_a_base.png", 10, "Confederate Cruiser A", 606, 603 },
  ["PLAYER_SHIP_VAMPWEED_2"] = { "ship/mup_vampweed_b_base.png", 10, "Confederate Cruiser B", 606, 603 },
  ["PLAYER_SHIP_VAMPWEED_3"] = { "ship/mup_vampweed_c_base.png", 10, "Confederate Cruiser C", 606, 603 },
  ["PLAYER_SHIP_CARETAKER"] = { "ship/mup_caretaker_a_base.png", 10, "Caretaker Cruiser A", 523, 445 },
  ["PLAYER_SHIP_CARETAKER_2"] = { "ship/mup_caretaker_b_base.png", 10, "Caretaker Cruiser B", 523, 445 },
  ["PLAYER_SHIP_CARETAKER_3"] = { "ship/mup_caretaker_c_base.png", 10, "Caretaker Cruiser C", 523, 445 },
  ["PLAYER_SHIP_CULTIVATOR"] = { "ship/mup_cultivator_a_base.png", 10, "Cultivator Cruiser A", 715, 521 },
  ["PLAYER_SHIP_CULTIVATOR_2"] = { "ship/mup_cultivator_b_base.png", 10, "Cultivator Cruiser B", 714, 521 },
  ["PLAYER_SHIP_CULTIVATOR_3"] = { "ship/mup_cultivator_c_base.png", 10, "Cultivator Cruiser C", 714, 521 },
  ["PLAYER_SHIP_AMBASSADOR"] = { "ship/mup_ambassador_a_base.png", 10, "Kadahellian Cruiser A", 544, 557 },
  ["PLAYER_SHIP_AMBASSADOR_2"] = { "ship/mup_ambassador_b_base.png", 10, "Kadahellian Cruiser B", 544, 557 },
  ["PLAYER_SHIP_AMBASSADOR_3"] = { "ship/mup_ambassador_c_base.png", 10, "Kadahellian Cruiser C", 544, 557 },
  ["ELITE_SHIP_ORCHID"] = { "ship/mupe_orchid_base.png", 10, "Praetorian Cruiser", 626, 514 },
  ["ELITE_SHIP_VAMPWEED"] = { "ship/mupe_vampweed_base.png", 10, "Alt-Cultivator Cruiser", 606, 603 },

  -- Page 11
  ["PLAYER_SHIP_SHELL"] = { "ship/mup_shell_a_base.png", 11, "Geniocracy Cruiser A", 597, 487 },
  ["PLAYER_SHIP_SHELL_2"] = { "ship/mup_shell_b_base.png", 11, "Geniocracy Cruiser B", 597, 487 },
  ["PLAYER_SHIP_SHELL_3"] = { "ship/mup_shell_c_base.png", 11, "Geniocracy Cruiser C", 597, 487 },
  ["PLAYER_SHIP_SCIENTIST"] = { "ship/mup_scientist_a_base.png", 11, "Geniocracy Science Cruiser A", 508, 416 },
  ["PLAYER_SHIP_SCIENTIST_2"] = { "ship/mup_scientist_b_base.png", 11, "Geniocracy Science Cruiser B", 508, 382 },
  ["PLAYER_SHIP_SCIENTIST_3"] = { "ship/mup_scientist_c_base.png", 11, "Geniocracy Science Cruiser C", 508, 388 },
  ["PLAYER_SHIP_MECHANIC"] = { "ship/mup_mech_a_base.png", 11, "Geniocracy Management Cruiser A", 463, 537 },
  ["PLAYER_SHIP_MECHANIC_2"] = { "ship/mup_mech_b_base.png", 11, "Geniocracy Management Cruiser B", 456, 535 },
  ["PLAYER_SHIP_MECHANIC_3"] = { "ship/mup_mech_c_base.png", 11, "Geniocracy Management Cruiser C", 453, 535 },
  ["PLAYER_SHIP_MORPH"] = { "ship/mup_morph_a_base.png", 11, "Morph Cruiser A", 371, 462 },
  ["PLAYER_SHIP_MORPH_2"] = { "ship/mup_morph_b_base.png", 11, "Morph Cruiser B", 371, 462 },
  ["PLAYER_SHIP_MORPH_3"] = { "ship/mup_morph_c_base.png", 11, "Morph Cruiser C", 379, 453 },
  ["ELITE_SHIP_SHELL"] = { "ship/mupe_shell_base.png", 11, "Radiant Cruiser", 597, 487 },

  -- Page 12
  ["PLAYER_SHIP_LEECH"] = { "ship/mup_leech_a_base.png", 12, "Republican Cruiser A", 501, 437 },
  ["PLAYER_SHIP_LEECH_2"] = { "ship/mup_leech_b_base.png", 12, "Republican Cruiser B", 501, 437 },
  ["PLAYER_SHIP_LEECH_3"] = { "ship/mup_leech_c_base.png", 12, "Republican Cruiser C", 503, 437 },
  ["PLAYER_SHIP_ALKRAM"] = { "ship/mup_alkram_a_base.png", 12, "Revolutionary Cruiser A", 580, 355 },
  ["PLAYER_SHIP_ALKRAM_2"] = { "ship/mup_alkram_b_base.png", 12, "Revolutionary Cruiser B", 580, 355 },
  ["PLAYER_SHIP_ALKRAM_3"] = { "ship/mup_alkram_c_base.png", 12, "Revolutionary Cruiser C", 586, 361 },
  ["PLAYER_SHIP_TONY"] = { "ship/mup_tony_a_base.png", 12, "Retail Cruiser A", 511, 470 },
  ["PLAYER_SHIP_TONY_2"] = { "ship/mup_tony_b_base.png", 12, "Retail Cruiser B", 511, 470 },
  ["PLAYER_SHIP_TONY_3"] = { "ship/mup_tony_c_base.png", 12, "Retail Cruiser C", 511, 470 },
  ["PLAYER_SHIP_COALITION"] = { "ship/mup_coalition_a_base.png", 12, "Coalition Cruiser A", 741, 516 },
  ["PLAYER_SHIP_COALITION_2"] = { "ship/mup_coalition_b_base.png", 12, "Coalition Cruiser B", 741, 516 },
  ["PLAYER_SHIP_COALITION_3"] = { "ship/mup_coalition_c_base.png", 12, "Coalition Cruiser C", 741, 516 },
  ["ELITE_SHIP_LEECH"] = { "ship/mupe_leech_base.png", 12, "Ampere Cruiser", 501, 437 },
  ["ELITE_SHIP_COALITION"] = { "ship/mupe_coalition_base.png", 12, "R.U.E.S. Cruiser", 741, 516 },

  -- Page 13
  ["PLAYER_SHIP_LANIUS"] = { "ship/mup_lanius_a_base.png", 13, "Lanius Cruiser A", 600, 606 },
  ["PLAYER_SHIP_LANIUS_2"] = { "ship/mup_lanius_b_base.png", 13, "Lanius Cruiser B", 600, 606 },
  ["PLAYER_SHIP_LANIUS_3"] = { "ship/mup_lanius_c_base.png", 13, "Lanius Cruiser C", 600, 606 },
  ["PLAYER_SHIP_AUGMENTED"] = { "ship/mup_augmented_a_base.png", 13, "Augmented Cruiser A", 600, 628 },
  ["PLAYER_SHIP_AUGMENTED_2"] = { "ship/mup_augmented_b_base.png", 13, "Augmented Cruiser B", 600, 628 },
  ["PLAYER_SHIP_AUGMENTED_3"] = { "ship/mup_augmented_c_base.png", 13, "Augmented Cruiser C", 600, 628 },
  ["PLAYER_SHIP_DYNASTY"] = { "ship/mup_dynasty_a_base.png", 13, "Spectral Cruiser A", 781, 452 },
  ["PLAYER_SHIP_DYNASTY_2"] = { "ship/mup_dynasty_b_base.png", 13, "Spectral Cruiser B", 781, 452 },
  ["PLAYER_SHIP_DYNASTY_3"] = { "ship/mup_dynasty_c_base.png", 13, "Spectral Cruiser C", 781, 452 },
  ["PLAYER_SHIP_GHOST"] = { "ship/mup_ghostbuster_a_base.png", 13, "Spook Chaser Cruiser A", 619, 619 },
  ["PLAYER_SHIP_GHOST_2"] = { "ship/mup_ghostbuster_b_base.png", 13, "Spook Chaser Cruiser B", 619, 619 },
  ["PLAYER_SHIP_GHOST_3"] = { "ship/mup_ghostbuster_c_base.png", 13, "Spook Chaser Cruiser C", 619, 619 },
  ["PLAYER_SHIP_GUARD"] = { "ship/mup_guard_a_base.png", 13, "Guardian Cruiser (currently unobtainable without commands) A", 471, 491 },
  ["PLAYER_SHIP_GUARD_2"] = { "ship/mup_guard_b_base.png", 13, "Guardian Cruiser (currently unobtainable without commands) B", 482, 491 },
  ["PLAYER_SHIP_GUARD_3"] = { "ship/mup_guard_c_base.png", 13, "Guardian Cruiser (currently unobtainable without commands) C", 485, 491 },
  ["PLAYER_SHIP_ANCIENT"] = { "ship/mup_ancient_a_base.png", 13, "Obelisk Cruiser A", 681, 529 },
  ["PLAYER_SHIP_ANCIENT_2"] = { "ship/mup_ancient_b_base.png", 13, "Obelisk Cruiser B", 681, 529 },
  ["PLAYER_SHIP_ANCIENT_3"] = { "ship/mup_ancient_c_base.png", 13, "Obelisk Cruiser C", 681, 529 },
  ["PLAYER_SHIP_RHYME"] = { "ship/mup_rhyme_a_base.png", 13, "Rhyme Cruiser A", 541, 437 },
  ["PLAYER_SHIP_RHYME_2"] = { "ship/mup_rhyme_b_base.png", 13, "Rhyme Cruiser B", 541, 437 },
  ["PLAYER_SHIP_RHYME_3"] = { "ship/mup_rhyme_c_base.png", 13, "Rhyme Cruiser C", 541, 437 },
  ["ELITE_SHIP_LANIUS"] = { "ship/mupe_lanius_base.png", 13, "Swarm Cruiser", 600, 606 },
  ["ELITE_SHIP_GHOST"] = { "ship/mupe_dynasty_base.png", 13, "Cruising Reaper" },
  ["ELITE_SHIP_GHOST_2"] = { "ship/mupe_ghost_base.png", 13, "Vagabond Cruiser B", 597, 370 },

  -- Page 14
  ["CREW_SHIP_SLOT1"] = { "ship/mupc_haynes_base.png", 14, "Haynes's Crewser", 599, 374 },
  ["CREW_SHIP_SLOT1_2"] = { "ship/mupc_tully_base.png", 14, "Tully's Crewser", 666, 351 },
  ["CREW_SHIP_SLOT1_3"] = { "ship/mupc_a55_base.png", 14, "A5540L3's Crewser", 587, 529 },
  ["CREW_SHIP_SLOT2"] = { "ship/mupc_jerry_base.png", 14, "Jerry's Crewser", 511, 371 },
  ["CREW_SHIP_SLOT2_2"] = { "ship/mupc_anurak_base.png", 14, "Devorak's Crewser", 504, 299 },
  ["CREW_SHIP_SLOT2_3"] = { "ship/mupc_turzil_base.png", 14, "Turzil's Crewser", 440, 325 },
  ["CREW_SHIP_SLOT3"] = { "ship/mupc_alkali_base.png", 14, "Alkali's Crewser", 508, 404 },
  ["CREW_SHIP_SLOT3_2"] = { "ship/mupc_ooj_base.png", 14, "OOJ MAJOO's Crewser", 371, 462 },
  ["CREW_SHIP_SLOT3_3"] = { "ship/mupc_ellie_base.png", 14, "Ellie/Stefan's Crewser", 543, 434 },
  ["CREW_SHIP_SLOT4"] = { "ship/mupc_nights_base.png", 14, "Nights's Crewser", 411, 378 },
  ["CREW_SHIP_SLOT4_2"] = { "ship/mupc_slocknog_base.png", 14, "Slocknog's Crewser", 594, 463 },
  ["CREW_SHIP_SLOT4_3"] = { "ship/mupc_irwin_base.png", 14, "Irwin's Crewser", 442, 563 },
  ["CREW_SHIP_SLOT5"] = { "ship/mupc_alkram_base.png", 14, "Alkram's Crewser", 580, 355 },
  ["CREW_SHIP_SLOT5_2"] = { "ship/mupc_tyrdeo_base.png", 14, "Tyrdeo's Crewser", 501, 437 },
  ["CREW_SHIP_SLOT5_3"] = { "ship/mupc_mafan_base.png", 14, "Mafan's Crewser", 577, 292 },
  ["CREW_SHIP_SLOT6"] = { "ship/mupc_freddy_base.png", 14, "Freddy's Crewser", 521, 470 },
  ["CREW_SHIP_SLOT6_2"] = { "ship/mupc_kaz_base.png", 14, "Kazaaakplethkilik's Crewser", 650, 469 },
  ["CREW_SHIP_SLOT6_3"] = { "ship/mupc_dianesh_base.png", 14, "Dianesh's Crewser", 661, 409 },
  ["CREW_SHIP_SLOT7"] = { "ship/mupc_ariadne_base.png", 14, "Ariadne's Crewser", 488, 410 },
  ["CREW_SHIP_SLOT7_2"] = { "ship/mupc_ruwen_base.png", 14, "Ruwen's Crewser", 721, 457 },
  ["CREW_SHIP_SLOT7_3"] = { "ship/mupc_tuco_base.png", 14, "Tuco's Crewser", 512, 366 },
  ["CREW_SHIP_SLOT8"] = { "ship/mupc_eater_base.png", 14, "Beacon Eater's Crewser", 600, 606 },
  ["CREW_SHIP_SLOT8_2"] = { "ship/mupc_anointed_base.png", 14, "Anointed's Crewser", 600, 628 },
  ["CREW_SHIP_SLOT8_3"] = { "ship/mupc_dessius_base.png", 14, "Dessius's Crewser", 781, 452 },
  ["CREW_SHIP_SLOTA"] = { "ship/mupc_vortigon_base.png", 14, "Vortigon's Crewser", 569, 435 },
  ["CREW_SHIP_SLOTA_2"] = { "ship/mupc_billy_base.png", 14, "Sylvan-Billy's Crewser", 681, 283 },
  ["CREW_SHIP_SLOTA_3"] = { "ship/mupc_lizard_base.png", 14, "Guntput-Metyunt's Crewser", 541, 334 },
  ["CREW_SHIP_SLOTB"] = { "ship/mupc_queen_base.png", 14, "Spider Queen's Crewser", 470, 454 },
  ["CREW_SHIP_SLOTB_2"] = { "ship/mupc_obyn_base.png", 14, "Obyn's Crewser", 487, 386 },
  ["CREW_SHIP_SLOTB_3"] = { "ship/mupc_symbiote_base.png", 14, "Symbiote-Tony Sr's Crewser", 550, 400 },

  -- Page 15
  ["CREW_SHIP_ORCHID"] = { "ship/mupc_mayeb_base.png", 15, "Mayeb's Crewser", 523, 445 },
  ["CREW_SHIP_ORCHID_2"] = { "ship/mupc_ivar_base.png", 15, "Ivar's Crewser", 717, 521 },
  ["CREW_SHIP_ORCHID_3"] = { "ship/mupc_tyerel_base.png", 15, "Ty'E'Rel's Crewser", 544, 557 },

  -- Page 16
  ["VANILLA_SHIP_KESTREL"] = { "ship/mupv_kestrel_a_base.png", 16, "Vanilla Kestrel Cruiser A", 652, 418 },
  ["VANILLA_SHIP_KESTREL_2"] = { "ship/mupv_kestrel_b_base.png", 16, "Vanilla Kestrel Cruiser B", 652, 418 },
  ["VANILLA_SHIP_KESTREL_3"] = { "ship/mupv_kestrel_c_base.png", 16, "Vanilla Kestrel Cruiser C", 652, 418 },
  ["VANILLA_SHIP_ENGI"] = { "ship/mupv_engi_a_base.png", 16, "Vanilla Engi Cruiser A", 440, 325 },
  ["VANILLA_SHIP_ENGI_2"] = { "ship/mupv_engi_b_base.png", 16, "Vanilla Engi Cruiser B", 440, 325 },
  ["VANILLA_SHIP_ENGI_3"] = { "ship/mupv_engi_c_base.png", 16, "Vanilla Engi Cruiser C", 440, 325 },
  ["VANILLA_SHIP_FED"] = { "ship/mupv_fed_base.png", 16, "Vanilla Federation Cruiser", 710, 401 },
  ["VANILLA_SHIP_FED_2"] = { "ship/mupv_fed_b_base.png", 16, "Vanilla Federation Cruiser B", 710, 401 },
  ["VANILLA_SHIP_FED_3"] = { "ship/mupv_fed_c_base.png", 16, "Vanilla Federation Cruiser C", 710, 401 },
  ["VANILLA_SHIP_ZOLTAN"] = { "ship/mupv_zoltan_a_base.png", 16, "Vanilla Zoltan Cruiser A", 630, 348 },
  ["VANILLA_SHIP_ZOLTAN_2"] = { "ship/mupv_zoltan_b_base.png", 16, "Vanilla Zoltan Cruiser B", 630, 348 },
  ["VANILLA_SHIP_ZOLTAN_3"] = { "ship/mupv_zoltan_c_base.png", 16, "Vanilla Zoltan Cruiser C", 630, 348 },
  ["VANILLA_SHIP_MANTIS"] = { "ship/mupv_mantis_a_base.png", 16, "Vanilla Mantis Cruiser A", 650, 469 },
  ["VANILLA_SHIP_MANTIS_2"] = { "ship/mupv_mantis_b_base.png", 16, "Vanilla Mantis Cruiser B", 650, 469 },
  ["VANILLA_SHIP_MANTIS_3"] = { "ship/mupv_mantis_c_base.png", 16, "Vanilla Mantis Cruiser C", 650, 469 },
  ["VANILLA_SHIP_SLUG"] = { "ship/mupv_slug_a_base.png", 16, "Vanilla Slug Cruiser A", 594, 463 },
  ["VANILLA_SHIP_SLUG_2"] = { "ship/mupv_slug_b_base.png", 16, "Vanilla Slug Cruiser B", 594, 463 },
  ["VANILLA_SHIP_SLUG_3"] = { "ship/mupv_slug_c_base.png", 16, "Vanilla Slug Cruiser C", 594, 463 },
  ["VANILLA_SHIP_ROCK"] = { "ship/mupv_rock_a_base.png", 16, "Vanilla Rock Cruiser A", 550, 400 },
  ["VANILLA_SHIP_ROCK_2"] = { "ship/mupv_rock_b_base.png", 16, "Vanilla Rock Cruiser B", 550, 400 },
  ["VANILLA_SHIP_ROCK_3"] = { "ship/mupv_rock_c_base.png", 16, "Vanilla Rock Cruiser C", 550, 400 },
  ["VANILLA_SHIP_STEALTH"] = { "ship/mupv_stealth_a_base.png", 16, "Vanilla Stealth Cruiser A", 595, 438 },
  ["VANILLA_SHIP_STEALTH_2"] = { "ship/mupv_stealth_b_base.png", 16, "Vanilla Stealth Cruiser B", 595, 438 },
  ["VANILLA_SHIP_STEALTH_3"] = { "ship/mupv_stealth_c_base.png", 16, "Vanilla Stealth Cruiser C", 595, 438 },
  ["VANILLA_SHIP_LANIUS"] = { "ship/mupv_lanius_a_base.png", 16, "Vanilla Lanius Cruiser A", 600, 606 },
  ["VANILLA_SHIP_LANIUS_2"] = { "ship/mupv_lanius_b_base.png", 16, "Vanilla Lanius Cruiser B", 600, 606 },
  ["VANILLA_SHIP_CRYSTAL"] = { "ship/mupv_crystal_a_base.png", 16, "Vanilla Crystal Cruiser A", 721, 457 },
  ["VANILLA_SHIP_CRYSTAL_2"] = { "ship/mupv_crystal_b_base.png", 16, "Vanilla Crystal Cruiser B", 721, 457 },

  -- Page 17
  ["PLAYER_SHIP_VANILLA"] = { "ship/mup_vanilla_base.png", 17, "Alpha Kestrel Cruiser", 652, 418 },
  ["PLAYER_SHIP_PLEASUREFLAG"] = { "ship/mupe_pleasure_base.png", 17, "The Pleasure Flagship", 641, 371 },
  ["PLAYER_SHIP_LIMIT"] = { "ship/mup_limit_base.png", 17, "Unoptimized Cruiser", 674, 379 },
  ["PLAYER_SHIP_STUPIDGHOST"] = { "ship/mup_stupidghost_base.png", 17, "Wrecked Bomber", 400, 362 },
  ["PLAYER_SHIP_GOLD"] = { "ship/mup_gold_base.png", 17, "Pimped Out Cruiser (Beacon Eater)", 613, 561 },
  ["PLAYER_SHIP_GOLD_2"] = { "ship/mup_gold_b_base.png", 17, "Pimped Out Cruiser (LaRoache) B", 511, 470 },
  ["CREW_SHIP_WITHER"] = { "ship/mup_wither_base.png", 17, "Aenwithe's Crewser", 681, 529 },
  ["CREW_SHIP_WITHER_2"] = { "ship/mupc_child_base.png", 17, "Child Crewser", 626, 514 },
  ["PLAYER_SHIP_SYLVAN_TRANSPORT"] = { "ship/mup_sylvantrans_base.png", 17, "Merchant Transport", 490, 277 },
  ["PLAYER_SHIP_LIMIT_4"] = { "ship/mup_limit_4_base.png", 17, "Unoptimized Cruiser Mk IV", 674, 379 },
}

local ship_order = {
  "PLAYER_SHIP_MVKESTREL",
  "PLAYER_SHIP_MVFED",
  "PLAYER_SHIP_MVSTEALTH",
  "PLAYER_SHIP_MVENGI",
  "PLAYER_SHIP_MVCIVILIAN",
  "PLAYER_SHIP_MVCRYSTAL",
  "PLAYER_SHIP_MVDYNASTY",
  "PLAYER_SHIP_MVLANIUS",
  "PLAYER_SHIP_PROTOMV",
  "PLAYER_SHIP_PROTOMV_2",
  "PLAYER_SHIP_PROTOMV_3",
  "PLAYER_SHIP_FLAGSHIP",
  "PLAYER_SHIP_FLAGSHIP_2",
  "PLAYER_SHIP_FLAGSHIP_3",
  "PLAYER_SHIP_UNION",
  "PLAYER_SHIP_UNION_2",
  "PLAYER_SHIP_UNION_3",
  "PLAYER_SHIP_MILITIA",
  "PLAYER_SHIP_MILITIA_2",
  "PLAYER_SHIP_MILITIA_3",
  "PLAYER_SHIP_KESTREL",
  "PLAYER_SHIP_KESTREL_2",
  "PLAYER_SHIP_KESTREL_3",
  "PLAYER_SHIP_FEDERATION",
  "PLAYER_SHIP_FEDERATION_2",
  "PLAYER_SHIP_FEDERATION_3",
  "PLAYER_SHIP_CLOAK",
  "PLAYER_SHIP_CLOAK_2",
  "PLAYER_SHIP_CLOAK_3",
  "PLAYER_SHIP_AUTO_FED",
  "PLAYER_SHIP_AUTO_FED_2",
  "PLAYER_SHIP_AUTO_FED_3",
  "PLAYER_SHIP_HORSE",
  "PLAYER_SHIP_HORSE_2",
  "PLAYER_SHIP_HORSE_3",
  "ELITE_SHIP_MILITIA",
  "ELITE_SHIP_FED",
  "PLAYER_SHIP_REBEL",
  "PLAYER_SHIP_REBEL_2",
  "PLAYER_SHIP_REBEL_3",
  "PLAYER_SHIP_ENGINEER",
  "PLAYER_SHIP_ENGINEER_2",
  "PLAYER_SHIP_ENGINEER_3",
  "PLAYER_SHIP_AUTO",
  "PLAYER_SHIP_AUTO_2",
  "PLAYER_SHIP_AUTO_3",
  "PLAYER_SHIP_MVREBEL",
  "PLAYER_SHIP_MVREBEL_2",
  "PLAYER_SHIP_MVREBEL_3",
  "PLAYER_SHIP_MFK",
  "PLAYER_SHIP_MFK_2",
  "PLAYER_SHIP_MFK_3",
  "PLAYER_SHIP_CURA",
  "PLAYER_SHIP_CURA_2",
  "PLAYER_SHIP_CURA_3",
  "PLAYER_SHIP_TECHNICIAN",
  "PLAYER_SHIP_TECHNICIAN_2",
  "PLAYER_SHIP_TECHNICIAN_3",
  "ELITE_SHIP_REBEL",
  "ELITE_SHIP_REBEL_2",
  "PLAYER_SHIP_PROTOTYPE",
  "PLAYER_SHIP_PROTOTYPE_2",
  "PLAYER_SHIP_PROTOTYPE_3",
  "PLAYER_SHIP_TUCO",
  "PLAYER_SHIP_TUCO_2",
  "PLAYER_SHIP_TUCO_3",
  "PLAYER_SHIP_ANGEL",
  "PLAYER_SHIP_ANGEL_2",
  "PLAYER_SHIP_ANGEL_3",
  "PLAYER_SHIP_BROOD",
  "PLAYER_SHIP_BROOD_2",
  "PLAYER_SHIP_BROOD_3",
  "PLAYER_SHIP_SPIDER",
  "PLAYER_SHIP_SPIDER_2",
  "PLAYER_SHIP_SPIDER_3",
  "PLAYER_SHIP_ENGI",
  "PLAYER_SHIP_ENGI_2",
  "PLAYER_SHIP_ENGI_3",
  "PLAYER_SHIP_SEPARATIST",
  "PLAYER_SHIP_SEPARATIST_2",
  "PLAYER_SHIP_SEPARATIST_3",
  "ELITE_SHIP_ENGI",
  "PLAYER_SHIP_ZOLTAN",
  "PLAYER_SHIP_ZOLTAN_2",
  "PLAYER_SHIP_ZOLTAN_3",
  "PLAYER_SHIP_DUSKBRINGER",
  "PLAYER_SHIP_DUSKBRINGER_2",
  "PLAYER_SHIP_DUSKBRINGER_3",
  "PLAYER_SHIP_MONK",
  "PLAYER_SHIP_MONK_2",
  "PLAYER_SHIP_MONK_3",
  "PLAYER_SHIP_PEACEKEEPER",
  "PLAYER_SHIP_PEACEKEEPER_2",
  "PLAYER_SHIP_PEACEKEEPER_3",
  "PLAYER_SHIP_OSMIA",
  "PLAYER_SHIP_OSMIA_2",
  "PLAYER_SHIP_OSMIA_3",
  "ELITE_SHIP_ZOLTAN",
  "ELITE_SHIP_DUSK",
  "PLAYER_SHIP_HIVE",
  "PLAYER_SHIP_HIVE_2",
  "PLAYER_SHIP_HIVE_3",
  "PLAYER_SHIP_FREEMANTIS",
  "PLAYER_SHIP_FREEMANTIS_2",
  "PLAYER_SHIP_FREEMANTIS_3",
  "PLAYER_SHIP_SUZERAIN",
  "PLAYER_SHIP_SUZERAIN_2",
  "PLAYER_SHIP_SUZERAIN_3",
  "PLAYER_SHIP_BISHOP",
  "PLAYER_SHIP_BISHOP_2",
  "PLAYER_SHIP_BISHOP_3",
  "ELITE_SHIP_MANTIS",
  "ELITE_SHIP_FREEMANTIS",
  "PLAYER_SHIP_ROCKMAN",
  "PLAYER_SHIP_ROCKMAN_2",
  "PLAYER_SHIP_ROCKMAN_3",
  "PLAYER_SHIP_OUTCAST",
  "PLAYER_SHIP_OUTCAST_2",
  "PLAYER_SHIP_OUTCAST_3",
  "PLAYER_SHIP_LOSTSUN",
  "PLAYER_SHIP_LOSTSUN_2",
  "PLAYER_SHIP_LOSTSUN_3",
  "PLAYER_SHIP_PALADIN",
  "PLAYER_SHIP_PALADIN_2",
  "PLAYER_SHIP_PALADIN_3",
  "PLAYER_SHIP_SALT",
  "PLAYER_SHIP_SALT_2",
  "PLAYER_SHIP_SALT_3",
  "PLAYER_SHIP_SSLG",
  "PLAYER_SHIP_SSLG_2",
  "PLAYER_SHIP_SSLG_3",
  "PLAYER_SHIP_CRYSTALLINE",
  "PLAYER_SHIP_CRYSTALLINE_2",
  "PLAYER_SHIP_CRYSTALLINE_3",
  "PLAYER_SHIP_CULTIST",
  "PLAYER_SHIP_CULTIST_2",
  "PLAYER_SHIP_CULTIST_3",
  "ELITE_SHIP_ROCK",
  "ELITE_SHIP_ROCK_2",
  "ELITE_SHIP_CRYSTAL",
  "PLAYER_SHIP_SLUG",
  "PLAYER_SHIP_SLUG_2",
  "PLAYER_SHIP_SLUG_3",
  "PLAYER_SHIP_CLAN",
  "PLAYER_SHIP_CLAN_2",
  "PLAYER_SHIP_CLAN_3",
  "PLAYER_SHIP_HEKTAR",
  "PLAYER_SHIP_HEKTAR_2",
  "PLAYER_SHIP_HEKTAR_3",
  "PLAYER_SHIP_PLEASURE",
  "PLAYER_SHIP_PLEASURE_2",
  "PLAYER_SHIP_PLEASURE_3",
  "PLAYER_SHIP_HACKER",
  "PLAYER_SHIP_HACKER_2",
  "PLAYER_SHIP_HACKER_3",
  "PLAYER_SHIP_KNIGHT",
  "PLAYER_SHIP_KNIGHT_2",
  "PLAYER_SHIP_KNIGHT_3",
  "PLAYER_SHIP_SYLVAN",
  "PLAYER_SHIP_SYLVAN_2",
  "PLAYER_SHIP_SYLVAN_3",
  "PLAYER_SHIP_CEL",
  "PLAYER_SHIP_CEL_2",
  "PLAYER_SHIP_CEL_3",
  "ELITE_SHIP_SLUG",
  "ELITE_SHIP_SLUG_2",
  "PLAYER_SHIP_ORCHID",
  "PLAYER_SHIP_ORCHID_2",
  "PLAYER_SHIP_ORCHID_3",
  "PLAYER_SHIP_VAMPWEED",
  "PLAYER_SHIP_VAMPWEED_2",
  "PLAYER_SHIP_VAMPWEED_3",
  "PLAYER_SHIP_CARETAKER",
  "PLAYER_SHIP_CARETAKER_2",
  "PLAYER_SHIP_CARETAKER_3",
  "PLAYER_SHIP_CULTIVATOR",
  "PLAYER_SHIP_CULTIVATOR_2",
  "PLAYER_SHIP_CULTIVATOR_3",
  "PLAYER_SHIP_AMBASSADOR",
  "PLAYER_SHIP_AMBASSADOR_2",
  "PLAYER_SHIP_AMBASSADOR_3",
  "ELITE_SHIP_ORCHID",
  "ELITE_SHIP_VAMPWEED",
  "PLAYER_SHIP_SHELL",
  "PLAYER_SHIP_SHELL_2",
  "PLAYER_SHIP_SHELL_3",
  "PLAYER_SHIP_SCIENTIST",
  "PLAYER_SHIP_SCIENTIST_2",
  "PLAYER_SHIP_SCIENTIST_3",
  "PLAYER_SHIP_MECHANIC",
  "PLAYER_SHIP_MECHANIC_2",
  "PLAYER_SHIP_MECHANIC_3",
  "PLAYER_SHIP_MORPH",
  "PLAYER_SHIP_MORPH_2",
  "PLAYER_SHIP_MORPH_3",
  "ELITE_SHIP_SHELL",
  "PLAYER_SHIP_LEECH",
  "PLAYER_SHIP_LEECH_2",
  "PLAYER_SHIP_LEECH_3",
  "PLAYER_SHIP_ALKRAM",
  "PLAYER_SHIP_ALKRAM_2",
  "PLAYER_SHIP_ALKRAM_3",
  "PLAYER_SHIP_TONY",
  "PLAYER_SHIP_TONY_2",
  "PLAYER_SHIP_TONY_3",
  "PLAYER_SHIP_COALITION",
  "PLAYER_SHIP_COALITION_2",
  "PLAYER_SHIP_COALITION_3",
  "ELITE_SHIP_LEECH",
  "ELITE_SHIP_COALITION",
  "PLAYER_SHIP_LANIUS",
  "PLAYER_SHIP_LANIUS_2",
  "PLAYER_SHIP_LANIUS_3",
  "PLAYER_SHIP_AUGMENTED",
  "PLAYER_SHIP_AUGMENTED_2",
  "PLAYER_SHIP_AUGMENTED_3",
  "PLAYER_SHIP_DYNASTY",
  "PLAYER_SHIP_DYNASTY_2",
  "PLAYER_SHIP_DYNASTY_3",
  "PLAYER_SHIP_GHOST",
  "PLAYER_SHIP_GHOST_2",
  "PLAYER_SHIP_GHOST_3",
  "PLAYER_SHIP_GUARD",
  "PLAYER_SHIP_GUARD_2",
  "PLAYER_SHIP_GUARD_3",
  "PLAYER_SHIP_ANCIENT",
  "PLAYER_SHIP_ANCIENT_2",
  "PLAYER_SHIP_ANCIENT_3",
  "PLAYER_SHIP_RHYME",
  "PLAYER_SHIP_RHYME_2",
  "PLAYER_SHIP_RHYME_3",
  "ELITE_SHIP_LANIUS",
  "ELITE_SHIP_GHOST",
  "ELITE_SHIP_GHOST_2",
  "CREW_SHIP_SLOT1",
  "CREW_SHIP_SLOT1_2",
  "CREW_SHIP_SLOT1_3",
  "CREW_SHIP_SLOT2",
  "CREW_SHIP_SLOT2_2",
  "CREW_SHIP_SLOT2_3",
  "CREW_SHIP_SLOT3",
  "CREW_SHIP_SLOT3_2",
  "CREW_SHIP_SLOT3_3",
  "CREW_SHIP_SLOT4",
  "CREW_SHIP_SLOT4_2",
  "CREW_SHIP_SLOT4_3",
  "CREW_SHIP_SLOT5",
  "CREW_SHIP_SLOT5_2",
  "CREW_SHIP_SLOT5_3",
  "CREW_SHIP_SLOT6",
  "CREW_SHIP_SLOT6_2",
  "CREW_SHIP_SLOT6_3",
  "CREW_SHIP_SLOT7",
  "CREW_SHIP_SLOT7_2",
  "CREW_SHIP_SLOT7_3",
  "CREW_SHIP_SLOT8",
  "CREW_SHIP_SLOT8_2",
  "CREW_SHIP_SLOT8_3",
  "CREW_SHIP_SLOTA",
  "CREW_SHIP_SLOTA_2",
  "CREW_SHIP_SLOTA_3",
  "CREW_SHIP_SLOTB",
  "CREW_SHIP_SLOTB_2",
  "CREW_SHIP_SLOTB_3",
  "CREW_SHIP_ORCHID",
  "CREW_SHIP_ORCHID_2",
  "CREW_SHIP_ORCHID_3",
  "VANILLA_SHIP_KESTREL",
  "VANILLA_SHIP_KESTREL_2",
  "VANILLA_SHIP_KESTREL_3",
  "VANILLA_SHIP_ENGI",
  "VANILLA_SHIP_ENGI_2",
  "VANILLA_SHIP_ENGI_3",
  "VANILLA_SHIP_FED",
  "VANILLA_SHIP_FED_2",
  "VANILLA_SHIP_FED_3",
  "VANILLA_SHIP_ZOLTAN",
  "VANILLA_SHIP_ZOLTAN_2",
  "VANILLA_SHIP_ZOLTAN_3",
  "VANILLA_SHIP_MANTIS",
  "VANILLA_SHIP_MANTIS_2",
  "VANILLA_SHIP_MANTIS_3",
  "VANILLA_SHIP_SLUG",
  "VANILLA_SHIP_SLUG_2",
  "VANILLA_SHIP_SLUG_3",
  "VANILLA_SHIP_ROCK",
  "VANILLA_SHIP_ROCK_2",
  "VANILLA_SHIP_ROCK_3",
  "VANILLA_SHIP_STEALTH",
  "VANILLA_SHIP_STEALTH_2",
  "VANILLA_SHIP_STEALTH_3",
  "VANILLA_SHIP_LANIUS",
  "VANILLA_SHIP_LANIUS_2",
  "VANILLA_SHIP_CRYSTAL",
  "VANILLA_SHIP_CRYSTAL_2",
  "PLAYER_SHIP_VANILLA",
  "PLAYER_SHIP_PLEASUREFLAG",
  "PLAYER_SHIP_LIMIT",
  "PLAYER_SHIP_STUPIDGHOST",
  "PLAYER_SHIP_GOLD",
  "PLAYER_SHIP_GOLD_2",
  "CREW_SHIP_WITHER",
  "CREW_SHIP_WITHER_2",
  "PLAYER_SHIP_SYLVAN_TRANSPORT",
  "PLAYER_SHIP_LIMIT_4",
}

-- Dynamic ship data parsed from data/blueprints.xml at runtime
local dynamic_ship_definitions = nil
local dynamic_ship_order = nil
local dynamic_ship_is_addon = nil

local function get_node_text(node)
  if not node then return "" end
  local value = node:value()
  if value and value ~= "" then return value end
  local child = node:first_node()
  if child and child:type() == RapidXML.node_data then
    return child:value()
  end
  return ""
end

local function normalize_ship_image(img)
  if not img or img == "" then return "" end
  local path = img
  if not string.find(path, "/") then
    path = "ship/" .. path
  end
  if not string.find(path, "%.png$") then
    if not string.find(path, "_base$") then
      path = path .. "_base"
    end
    path = path .. ".png"
  end
  return path
end

local function apply_variant_id(id, imgPath)
  if not id or id == "" then return id end
  if imgPath and string.find(imgPath, "_b_") and not string.find(id, "_2$") then
    return id .. "_2"
  end
  if imgPath and string.find(imgPath, "_c_") and not string.find(id, "_3$") then
    return id .. "_3"
  end
  return id
end

local function build_dynamic_ship_definitions()
  dynamic_ship_definitions = {}
  dynamic_ship_order = {}
  dynamic_ship_is_addon = {}

  local doc = RapidXML.xml_document()
  doc:parse_file("data/blueprints.xml")

  local function walk(node)
    while node do
      if node:name() == "shipBlueprint" then
        local idAttr = node:first_attribute("name")
        local id = idAttr and idAttr:value() or ""
        if id ~= "" then
          local imgAttr = node:first_attribute("img")
          local img = imgAttr and imgAttr:value() or ""
          if img == "" then
            local imgNode = node:first_node("img")
            img = get_node_text(imgNode)
          end

          local classNode = node:first_node("class")
          local displayName = get_node_text(classNode)
          if displayName == "" then
            displayName = id
          end

          local imgPath = normalize_ship_image(img)
          local keyId = apply_variant_id(id, imgPath)

          local staticEntry = ship_definitions[keyId] or ship_definitions[id]
          local page = (staticEntry and staticEntry[2]) or 99
          local w = staticEntry and staticEntry[4] or nil
          local h = staticEntry and staticEntry[5] or nil

          if not string.find(keyId, "^CREW_SHIP_") then
            if string.find(keyId, "_2$") and not string.find(displayName, " B$") then
              displayName = displayName .. " B"
            elseif string.find(keyId, "_3$") and not string.find(displayName, " C$") then
              displayName = displayName .. " C"
            elseif string.find(imgPath, "_a_") and not string.find(displayName, " [ABC]$") then
              displayName = displayName .. " A"
            end
          end

          if not dynamic_ship_definitions[keyId] then
            dynamic_ship_definitions[keyId] = { imgPath, page, displayName, w, h }
          end
        end
      end

      local child = node:first_node()
      if child then
        walk(child)
      end
      node = node:next_sibling()
    end
  end

  local root = doc:first_node()
  if root then
    walk(root)
  end

  local in_static = {}
  for _, id in ipairs(ship_order) do
    if dynamic_ship_definitions[id] then
      table.insert(dynamic_ship_order, id)
      in_static[id] = true
    end
  end

  local addon_ids = {}
  for id, _ in pairs(dynamic_ship_definitions) do
    if not in_static[id] then
      table.insert(addon_ids, id)
      dynamic_ship_is_addon[id] = true
    end
  end
  table.sort(addon_ids)
  for _, id in ipairs(addon_ids) do
    table.insert(dynamic_ship_order, id)
  end
end

local function init_ship_definitions()
  build_dynamic_ship_definitions()
end

-- simple accessors (no regex, no parsing)
local function getShipInfo(id)
  if not id then return nil end
  local entry = dynamic_ship_definitions and dynamic_ship_definitions[id] or ship_definitions[id]
  if not entry then return nil end
  -- return a table with named fields for convenience
  return { image = entry[1], page = entry[2], name = entry[3] }
end

local function getShipImage(id, default)
  local info = getShipInfo(id)
  if info and info.image then return info.image end
  return default
end

-- returns ordered list of all ships by ID
local function getShipList()
  local ships = {}
  if dynamic_ship_order and dynamic_ship_definitions then
    for _, id in ipairs(dynamic_ship_order) do
      local entry = dynamic_ship_definitions[id]
      if entry then
        table.insert(ships, { id = id, page = entry[2] })
      end
    end
  else
    for _, id in ipairs(ship_order) do
      local entry = ship_definitions[id]
      if entry then
        table.insert(ships, { id = id, page = entry[2] })
      end
    end
  end
  return ships
end


-- Helper: Get width, height by ship ID or filename.
-- id can be:
--  * the ship key used in this table (e.g. "PLAYER_SHIP_MVKESTREL")
--  * the image filename (e.g. "mup_mvkestrel_a_base.png" or "ship/mup_mvkestrel_a_base.png")
-- Returns width, height (numbers) or nil if not available.
local function get_ship_dimensions(id)
  if not id then return nil end
  -- direct lookup by key
  local entry = dynamic_ship_definitions and dynamic_ship_definitions[id] or ship_definitions[id]
  if entry and type(entry) == "table" then
    -- width and height are the 4th and 5th elements if present
    if entry[4] and entry[5] then
      return entry[4], entry[5]
    end
  end
end

if not mods then mods = {} end
mods.no_console = mods.no_console or {}
mods.no_console.ship_to_info = getShipInfo
mods.no_console.get_ship_image = getShipImage
mods.no_console.get_ship_list = getShipList
mods.no_console.get_ship_dimensions = get_ship_dimensions
mods.no_console.init_ship_definitions = init_ship_definitions

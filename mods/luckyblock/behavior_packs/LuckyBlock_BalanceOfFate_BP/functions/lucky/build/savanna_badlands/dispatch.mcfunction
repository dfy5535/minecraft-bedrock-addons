# Dispatch 1 of the 3 distinct structures for terrain: savanna_badlands
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/savanna_badlands/savanna_1_sun_totem_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/savanna_badlands/savanna_2_prospector_outpost
execute if score @s lucky_bldg_id matches 3 run function lucky/build/savanna_badlands/savanna_3_canyon_gold_vault

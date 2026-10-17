# Dispatch 1 of the 3 distinct structures for terrain: swamp
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/swamp/swamp_1_witch_cauldron_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/swamp/swamp_2_stilted_alchemist_room
execute if score @s lucky_bldg_id matches 3 run function lucky/build/swamp/swamp_3_mire_sunken_dungeon

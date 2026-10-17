# Dispatch 1 of the 3 distinct structures for terrain: jungle
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/jungle/jungle_1_vine_totem_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/jungle/jungle_2_canopy_hut
execute if score @s lucky_bldg_id matches 3 run function lucky/build/jungle/jungle_3_temple_puzzle_dungeon

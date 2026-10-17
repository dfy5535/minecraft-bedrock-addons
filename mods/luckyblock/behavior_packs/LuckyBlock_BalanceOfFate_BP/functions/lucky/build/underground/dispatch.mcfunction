# Dispatch 1 of the 3 distinct structures for terrain: underground
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/underground/underground_1_amethyst_geode_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/underground/underground_2_miner_refuge_room
execute if score @s lucky_bldg_id matches 3 run function lucky/build/underground/underground_3_sculk_silent_dungeon

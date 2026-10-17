# Dispatch 1 of the 3 distinct structures for terrain: the_end
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/the_end/end_1_purpur_void_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/the_end/end_2_anti_enderman_pavilion
execute if score @s lucky_bldg_id matches 3 run function lucky/build/the_end/end_3_chorus_warp_dungeon

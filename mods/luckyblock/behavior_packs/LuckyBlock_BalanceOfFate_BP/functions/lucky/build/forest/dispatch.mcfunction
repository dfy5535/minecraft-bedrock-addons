# Dispatch 1 of the 3 distinct structures for terrain: forest
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/forest/forest_1_druid_shrine
execute if score @s lucky_bldg_id matches 2 run function lucky/build/forest/forest_2_ranger_cabin
execute if score @s lucky_bldg_id matches 3 run function lucky/build/forest/forest_3_root_crypt

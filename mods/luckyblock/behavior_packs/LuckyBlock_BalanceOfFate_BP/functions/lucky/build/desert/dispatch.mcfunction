# Dispatch 1 of the 3 distinct structures for terrain: desert
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/desert/desert_1_oasis_obelisk
execute if score @s lucky_bldg_id matches 2 run function lucky/build/desert/desert_2_nomad_station
execute if score @s lucky_bldg_id matches 3 run function lucky/build/desert/desert_3_sunken_tomb

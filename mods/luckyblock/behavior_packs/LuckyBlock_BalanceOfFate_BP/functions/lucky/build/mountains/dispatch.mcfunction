# Dispatch 1 of the 3 distinct structures for terrain: mountains
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/mountains/mountains_1_wind_peak_shrine
execute if score @s lucky_bldg_id matches 2 run function lucky/build/mountains/mountains_2_cliffside_bunker
execute if score @s lucky_bldg_id matches 3 run function lucky/build/mountains/mountains_3_emerald_vein_dungeon

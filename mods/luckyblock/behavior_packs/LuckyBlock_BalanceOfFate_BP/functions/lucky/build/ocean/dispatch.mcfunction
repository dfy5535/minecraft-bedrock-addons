# Dispatch 1 of the 3 distinct structures for terrain: ocean
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/ocean/ocean_1_prismarine_tide_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/ocean/ocean_2_airlock_diving_dome
execute if score @s lucky_bldg_id matches 3 run function lucky/build/ocean/ocean_3_abyssal_shipwreck_vault

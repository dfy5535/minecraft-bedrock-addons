# Dispatch 1 of the 3 distinct structures for terrain: plains
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/plains/plains_1_sun_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/plains/plains_2_wayfarer_cabin
execute if score @s lucky_bldg_id matches 3 run function lucky/build/plains/plains_3_buried_cellar

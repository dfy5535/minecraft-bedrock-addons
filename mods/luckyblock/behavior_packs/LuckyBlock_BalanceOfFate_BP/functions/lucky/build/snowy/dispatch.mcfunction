# Dispatch 1 of the 3 distinct structures for terrain: snowy
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/snowy/snowy_1_frost_spire_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/snowy/snowy_2_arctic_igloo_room
execute if score @s lucky_bldg_id matches 3 run function lucky/build/snowy/snowy_3_permafrost_vault

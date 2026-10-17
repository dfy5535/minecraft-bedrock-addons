# Dispatch 1 of the 3 distinct structures for terrain: nether
scoreboard players random @s lucky_bldg_id 1 3
execute if score @s lucky_bldg_id matches 1 run function lucky/build/nether/nether_1_piglin_gold_altar
execute if score @s lucky_bldg_id matches 2 run function lucky/build/nether/nether_2_ghast_proof_bunker
execute if score @s lucky_bldg_id matches 3 run function lucky/build/nether/nether_3_fortress_blaze_vault

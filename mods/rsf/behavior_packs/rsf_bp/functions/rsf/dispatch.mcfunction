# ============================================================================
# rsf/dispatch —— ★★ 地形分派 ★★
# 执行上下文：@s = 种子，~ 就是建筑原点（它落在哪就在哪种）
#
# 两级判定，且两级【互斥】：
#   阶段 A（主）  种子自带的群系族 theme_XXX —— 87 群系 → 33 地形主题
#                 规则在 entities/rsf_seed.json（47 条两两互斥的标签条件，与评估顺序无关）
#   阶段 B（兜底）模板原生的「脚下那格方块」判据 —— 超平坦 / 自定义维度 / 手动召唤时接管
#   ⚠ 阶段 B 每一行都带 `if score @s rsf_matched matches 0`：
#     否则群系阶段建一座、方块阶段又建一座 —— 同一点两座建筑叠加、宝箱与实体翻倍。
# 每个地形主题各有 128 座建筑，由 rsf/themes/<主题> 等概率抽 1 座。
# ============================================================================
# --- 阶段 A：87 群系 → 33 地形（精准）---
scoreboard players set @s rsf_matched 0
execute if score @s rsf_matched matches 0 if entity @s[family=theme_bamboo_jungle] run scoreboard players set @s rsf_matched 1
execute if score @s rsf_matched matches 0 if entity @s[family=theme_basalt_deltas] run scoreboard players set @s rsf_matched 2
execute if score @s rsf_matched matches 0 if entity @s[family=theme_beach] run scoreboard players set @s rsf_matched 3
execute if score @s rsf_matched matches 0 if entity @s[family=theme_birch_forest] run scoreboard players set @s rsf_matched 4
execute if score @s rsf_matched matches 0 if entity @s[family=theme_cherry_grove] run scoreboard players set @s rsf_matched 5
execute if score @s rsf_matched matches 0 if entity @s[family=theme_cold_taiga] run scoreboard players set @s rsf_matched 6
execute if score @s rsf_matched matches 0 if entity @s[family=theme_crimson_forest] run scoreboard players set @s rsf_matched 7
execute if score @s rsf_matched matches 0 if entity @s[family=theme_deep_dark] run scoreboard players set @s rsf_matched 8
execute if score @s rsf_matched matches 0 if entity @s[family=theme_desert] run scoreboard players set @s rsf_matched 9
execute if score @s rsf_matched matches 0 if entity @s[family=theme_dripstone_caves] run scoreboard players set @s rsf_matched 10
execute if score @s rsf_matched matches 0 if entity @s[family=theme_forest] run scoreboard players set @s rsf_matched 11
execute if score @s rsf_matched matches 0 if entity @s[family=theme_frozen_ocean] run scoreboard players set @s rsf_matched 12
execute if score @s rsf_matched matches 0 if entity @s[family=theme_frozen_peaks] run scoreboard players set @s rsf_matched 13
execute if score @s rsf_matched matches 0 if entity @s[family=theme_ice_plains] run scoreboard players set @s rsf_matched 14
execute if score @s rsf_matched matches 0 if entity @s[family=theme_jungle] run scoreboard players set @s rsf_matched 15
execute if score @s rsf_matched matches 0 if entity @s[family=theme_lush_caves] run scoreboard players set @s rsf_matched 16
execute if score @s rsf_matched matches 0 if entity @s[family=theme_mangrove_swamp] run scoreboard players set @s rsf_matched 17
execute if score @s rsf_matched matches 0 if entity @s[family=theme_meadow] run scoreboard players set @s rsf_matched 18
execute if score @s rsf_matched matches 0 if entity @s[family=theme_mesa] run scoreboard players set @s rsf_matched 19
execute if score @s rsf_matched matches 0 if entity @s[family=theme_mushroom_island] run scoreboard players set @s rsf_matched 20
execute if score @s rsf_matched matches 0 if entity @s[family=theme_nether_wastes] run scoreboard players set @s rsf_matched 21
execute if score @s rsf_matched matches 0 if entity @s[family=theme_pale_garden] run scoreboard players set @s rsf_matched 22
execute if score @s rsf_matched matches 0 if entity @s[family=theme_plains] run scoreboard players set @s rsf_matched 23
execute if score @s rsf_matched matches 0 if entity @s[family=theme_river] run scoreboard players set @s rsf_matched 24
execute if score @s rsf_matched matches 0 if entity @s[family=theme_roofed_forest] run scoreboard players set @s rsf_matched 25
execute if score @s rsf_matched matches 0 if entity @s[family=theme_savanna] run scoreboard players set @s rsf_matched 26
execute if score @s rsf_matched matches 0 if entity @s[family=theme_soulsand_valley] run scoreboard players set @s rsf_matched 27
execute if score @s rsf_matched matches 0 if entity @s[family=theme_stony_peaks] run scoreboard players set @s rsf_matched 28
execute if score @s rsf_matched matches 0 if entity @s[family=theme_swampland] run scoreboard players set @s rsf_matched 29
execute if score @s rsf_matched matches 0 if entity @s[family=theme_taiga] run scoreboard players set @s rsf_matched 30
execute if score @s rsf_matched matches 0 if entity @s[family=theme_the_end] run scoreboard players set @s rsf_matched 31
execute if score @s rsf_matched matches 0 if entity @s[family=theme_warm_ocean] run scoreboard players set @s rsf_matched 32
execute if score @s rsf_matched matches 0 if entity @s[family=theme_warped_forest] run scoreboard players set @s rsf_matched 33
execute if score @s rsf_matched matches 1 run function rsf/themes/bamboo_jungle
execute if score @s rsf_matched matches 2 run function rsf/themes/basalt_deltas
execute if score @s rsf_matched matches 3 run function rsf/themes/beach
execute if score @s rsf_matched matches 4 run function rsf/themes/birch_forest
execute if score @s rsf_matched matches 5 run function rsf/themes/cherry_grove
execute if score @s rsf_matched matches 6 run function rsf/themes/cold_taiga
execute if score @s rsf_matched matches 7 run function rsf/themes/crimson_forest
execute if score @s rsf_matched matches 8 run function rsf/themes/deep_dark
execute if score @s rsf_matched matches 9 run function rsf/themes/desert
execute if score @s rsf_matched matches 10 run function rsf/themes/dripstone_caves
execute if score @s rsf_matched matches 11 run function rsf/themes/forest
execute if score @s rsf_matched matches 12 run function rsf/themes/frozen_ocean
execute if score @s rsf_matched matches 13 run function rsf/themes/frozen_peaks
execute if score @s rsf_matched matches 14 run function rsf/themes/ice_plains
execute if score @s rsf_matched matches 15 run function rsf/themes/jungle
execute if score @s rsf_matched matches 16 run function rsf/themes/lush_caves
execute if score @s rsf_matched matches 17 run function rsf/themes/mangrove_swamp
execute if score @s rsf_matched matches 18 run function rsf/themes/meadow
execute if score @s rsf_matched matches 19 run function rsf/themes/mesa
execute if score @s rsf_matched matches 20 run function rsf/themes/mushroom_island
execute if score @s rsf_matched matches 21 run function rsf/themes/nether_wastes
execute if score @s rsf_matched matches 22 run function rsf/themes/pale_garden
execute if score @s rsf_matched matches 23 run function rsf/themes/plains
execute if score @s rsf_matched matches 24 run function rsf/themes/river
execute if score @s rsf_matched matches 25 run function rsf/themes/roofed_forest
execute if score @s rsf_matched matches 26 run function rsf/themes/savanna
execute if score @s rsf_matched matches 27 run function rsf/themes/soulsand_valley
execute if score @s rsf_matched matches 28 run function rsf/themes/stony_peaks
execute if score @s rsf_matched matches 29 run function rsf/themes/swampland
execute if score @s rsf_matched matches 30 run function rsf/themes/taiga
execute if score @s rsf_matched matches 31 run function rsf/themes/the_end
execute if score @s rsf_matched matches 32 run function rsf/themes/warm_ocean
execute if score @s rsf_matched matches 33 run function rsf/themes/warped_forest

# --- 阶段 B：脚下方块兜底（模板原生判据，改调对应地形主题）---
# 末地
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ end_stone           run function rsf/themes/the_end
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ purpur_block        run function rsf/themes/the_end
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ obsidian            run function rsf/themes/the_end
# 下界
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ netherrack          run function rsf/themes/nether_wastes
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ soul_sand           run function rsf/themes/soulsand_valley
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ soul_soil           run function rsf/themes/soulsand_valley
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ basalt              run function rsf/themes/basalt_deltas
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ blackstone          run function rsf/themes/basalt_deltas
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ crimson_nylium      run function rsf/themes/crimson_forest
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ warped_nylium       run function rsf/themes/warped_forest
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ magma               run function rsf/themes/basalt_deltas
# 沙漠 / 恶地
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ sand                run function rsf/themes/desert
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ sandstone           run function rsf/themes/desert
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ red_sand            run function rsf/themes/mesa
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ hardened_clay       run function rsf/themes/mesa
# 雪原 / 冰
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ snow                run function rsf/themes/ice_plains
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ ice                 run function rsf/themes/ice_plains
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ packed_ice          run function rsf/themes/frozen_peaks
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ blue_ice            run function rsf/themes/frozen_ocean
# 洞穴
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ sculk               run function rsf/themes/deep_dark
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ dripstone_block     run function rsf/themes/dripstone_caves
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ moss_block          run function rsf/themes/lush_caves
# 蘑菇岛 / 沼泽 / 苍白花园
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ mycelium            run function rsf/themes/mushroom_island
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ mud                 run function rsf/themes/mangrove_swamp
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ mangrove_roots      run function rsf/themes/mangrove_swamp
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ pale_moss_block     run function rsf/themes/pale_garden
# 森林
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ podzol              run function rsf/themes/taiga
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ dirt_with_roots     run function rsf/themes/forest
# 山石
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ stone               run function rsf/themes/stony_peaks
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ calcite             run function rsf/themes/stony_peaks
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ deepslate           run function rsf/themes/stony_peaks
execute if score @s rsf_matched matches 0 if block ~ ~-1 ~ tuff                run function rsf/themes/stony_peaks
# 海洋（种子自己那格是水）
execute if score @s rsf_matched matches 0 if block ~ ~ ~ water                 run function rsf/themes/warm_ocean
# 兜底：脚下不是空气也不是水（草地/泥土/砂砾/叶子…）→ 平原主题
execute if score @s rsf_matched matches 0 unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run function rsf/themes/plains

# 收尾：留下永久隐形地标（防重叠的唯一长期判据）+ 种子退场
summon armor_stand ~ ~8 ~ ~ ~ rsf_site_event "RSF_Mark"
execute positioned ~ ~8 ~ run tag @e[type=armor_stand,name="RSF_Mark",r=4,c=1] add rsf_site
execute positioned ~ ~8 ~ run tag @e[type=armor_stand,name="RSF_Mark",r=4,c=1] add rsf_mark
execute positioned ~ ~8 ~ as @e[type=armor_stand,name="RSF_Mark",r=4,c=1] run effect @s invisibility 999999 1 true
execute positioned ~ ~8 ~ as @e[type=armor_stand,name="RSF_Mark",r=4,c=1] run effect @s resistance 999999 4 true
event entity @s rsf:despawn
kill @s

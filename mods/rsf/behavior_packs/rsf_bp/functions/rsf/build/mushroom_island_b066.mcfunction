# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3010/4224 | 主题内编号: b066/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·崩塌角楼古堡残垣 (mushroom_island_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 red_mushroom_block [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 red_mushroom_block []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-4 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-4 ~4 lantern []
setblock ~3 ~-4 ~-4 lantern []
setblock ~3 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-2 ~4 slot.container 0 spider_eye 9
replaceitem block ~3 ~-2 ~4 slot.container 1 slime_ball 10
replaceitem block ~3 ~-2 ~4 slot.container 2 ender_pearl 7
replaceitem block ~3 ~-2 ~4 slot.container 3 blaze_rod 6
replaceitem block ~3 ~-2 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 5 bone 18
replaceitem block ~3 ~-2 ~4 slot.container 9 mycelium 10
replaceitem block ~3 ~-2 ~4 slot.container 10 red_mushroom 15
replaceitem block ~3 ~-2 ~4 slot.container 11 brown_mushroom 16
replaceitem block ~3 ~-2 ~4 slot.container 12 golden_apple 7
replaceitem block ~3 ~-2 ~4 slot.container 13 diamond 8
replaceitem block ~3 ~-2 ~4 slot.container 14 iron_ingot 8
loot insert ~3 ~-2 ~4 loot "rsf/mushroom_island"
loot insert ~3 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 red_mushroom_block []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~8 ~-5 mushroom_stem []
setblock ~-5 ~9 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~8 ~6 mushroom_stem []
setblock ~-5 ~9 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~8 ~-5 mushroom_stem []
setblock ~4 ~9 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~8 ~6 mushroom_stem []
setblock ~4 ~9 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 mushroom_stem []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 mushroom_stem []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 mushroom_stem []
fill ~6 ~0 ~2 ~6 ~5 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~6 ~0 ~-3 ~6 ~4 ~-3 mushroom_stem []
fill ~5 ~5 ~-4 ~7 ~5 ~-2 red_mushroom_block []
setblock ~6 ~4 ~-2 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 13
replaceitem block ~-4 ~1 ~5 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~5 slot.container 3 slime_ball 13
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 10
replaceitem block ~-4 ~1 ~5 slot.container 5 blaze_rod 9
replaceitem block ~-4 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 10 suspicious_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 11 mycelium 10
replaceitem block ~-4 ~1 ~5 slot.container 12 red_mushroom 15
replaceitem block ~-4 ~1 ~5 slot.container 13 brown_mushroom 16
replaceitem block ~-4 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~5 loot "rsf/mushroom_island"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 15
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 8
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~5 slot.container 3 blaze_rod 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 bone 16
replaceitem block ~4 ~1 ~5 slot.container 9 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 10 suspicious_stew 1
replaceitem block ~4 ~1 ~5 slot.container 11 mycelium 8
replaceitem block ~4 ~1 ~5 slot.container 12 red_mushroom 13
replaceitem block ~4 ~1 ~5 slot.container 13 brown_mushroom 14
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 5
loot insert ~4 ~1 ~5 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon mooshroom ~1 ~1 ~1

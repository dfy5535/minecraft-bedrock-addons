# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3054/4224 | 主题内编号: b110/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双子附魔与酿造实验楼 (mushroom_island_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_mushroom_block [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 red_mushroom_block [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 shroomlight []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 red_mushroom_block []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 red_mushroom_block []
setblock ~0 ~-7 ~0 shroomlight []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 shroomlight []
setblock ~2 ~-6 ~0 shroomlight []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 blaze_rod 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 18
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 string 10
replaceitem block ~0 ~-4 ~-3 slot.container 5 spider_eye 9
replaceitem block ~0 ~-4 ~-3 slot.container 9 suspicious_stew 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 mycelium 14
replaceitem block ~0 ~-4 ~-3 slot.container 11 red_mushroom 12
replaceitem block ~0 ~-4 ~-3 slot.container 12 brown_mushroom 13
replaceitem block ~0 ~-4 ~-3 slot.container 13 golden_apple 4
replaceitem block ~0 ~-4 ~-3 slot.container 14 diamond 5
loot insert ~0 ~-4 ~-3 loot "rsf/mushroom_island"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 red_mushroom_block []
fill ~2 ~1 ~-5 ~6 ~7 ~5 red_mushroom_block []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 mushroom_stem []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 stone_brick_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 brown_mushroom_block []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 stone_brick_slab []
setblock ~0 ~10 ~0 shroomlight []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mushroom_stem []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~0 ~-2 ~7 ~8 ~-2 mushroom_stem []
fill ~6 ~9 ~-3 ~8 ~9 ~-1 red_mushroom_block []
setblock ~7 ~8 ~-1 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 shroomlight []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 1 blaze_rod 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 5 string 13
replaceitem block ~-5 ~1 ~4 slot.container 9 mycelium 10
replaceitem block ~-5 ~1 ~4 slot.container 10 red_mushroom 15
replaceitem block ~-5 ~1 ~4 slot.container 11 brown_mushroom 16
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 13 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~4 loot "rsf/mushroom_island"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 1 bone 16
replaceitem block ~5 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 3 string 16
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 15
replaceitem block ~5 ~1 ~4 slot.container 5 slime_ball 8
replaceitem block ~5 ~1 ~4 slot.container 9 mycelium 8
replaceitem block ~5 ~1 ~4 slot.container 10 red_mushroom 13
replaceitem block ~5 ~1 ~4 slot.container 11 brown_mushroom 14
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~5 ~1 ~4 slot.container 13 diamond 6
replaceitem block ~5 ~1 ~4 slot.container 14 iron_ingot 13
loot insert ~5 ~1 ~4 loot "rsf/mushroom_island"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon mooshroom ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

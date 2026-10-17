# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2987/4224 | 主题内编号: b043/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·十字四门试炼擂台 (mushroom_island_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 brown_mushroom_block [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 mushroom_stem []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~5 ~7 brown_mushroom_block []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 brown_mushroom_block []
fill ~-1 ~1 ~-6 ~1 ~4 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mushroom_stem []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 red_mushroom_block []
fill ~0 ~14 ~0 ~0 ~14 ~0 shroomlight []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 mushroom_stem []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 shroomlight []
setblock ~2 ~4 ~-10 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~7 ~0 ~-1 ~7 ~6 ~-1 mushroom_stem []
fill ~6 ~7 ~-2 ~8 ~7 ~0 red_mushroom_block []
setblock ~7 ~6 ~0 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~6 fletching_table []
setblock ~0 ~1 ~6 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 13
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 13
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 10
replaceitem block ~5 ~1 ~6 slot.container 4 blaze_rod 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 suspicious_stew 1
replaceitem block ~5 ~1 ~6 slot.container 10 mycelium 14
replaceitem block ~5 ~1 ~6 slot.container 11 red_mushroom 12
replaceitem block ~5 ~1 ~6 slot.container 12 brown_mushroom 13
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 14 diamond 5
loot insert ~5 ~1 ~6 loot "rsf/mushroom_island"
summon skeleton ~0 ~1 ~-1
summon mooshroom ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~2 ~0

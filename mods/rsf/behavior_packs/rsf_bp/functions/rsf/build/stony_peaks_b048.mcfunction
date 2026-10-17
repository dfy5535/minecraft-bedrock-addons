# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2352/4224 | 主题内编号: b048/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·阶梯王座巅峰试炼台 (stony_peaks_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 calcite [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 calcite [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 3 spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 coal 19
replaceitem block ~0 ~-3 ~-4 slot.container 10 emerald 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 cooked_beef 13
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 7
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 water_bucket 1
loot insert ~0 ~-3 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 calcite []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 deepslate_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 spruce_log []
setblock ~-7 ~10 ~-6 torch []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 spruce_log []
setblock ~-7 ~10 ~6 torch []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 spruce_log []
setblock ~7 ~10 ~-6 torch []
fill ~7 ~7 ~6 ~7 ~9 ~6 spruce_log []
setblock ~7 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~9 ~0 ~-8 ~9 ~7 ~-8 cobblestone_wall []
setblock ~9 ~8 ~-8 iron_block []
setblock ~9 ~9 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-6 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 3 string 11
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-6 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 11 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 14
replaceitem block ~-6 ~1 ~4 slot.container 14 raw_iron 13
loot insert ~-6 ~1 ~4 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

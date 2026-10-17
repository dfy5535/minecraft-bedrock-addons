# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2360/4224 | 主题内编号: b056/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·隐士半地下避难山居 (stony_peaks_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 1 spider_eye 8
replaceitem block ~3 ~-3 ~2 slot.container 2 ender_pearl 5
replaceitem block ~3 ~-3 ~2 slot.container 3 phantom_membrane 6
replaceitem block ~3 ~-3 ~2 slot.container 4 bone 15
replaceitem block ~3 ~-3 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~-3 ~2 slot.container 9 cooked_beef 12
replaceitem block ~3 ~-3 ~2 slot.container 10 golden_apple 6
replaceitem block ~3 ~-3 ~2 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-3 ~2 slot.container 12 water_bucket 1
replaceitem block ~3 ~-3 ~2 slot.container 13 shield 1
replaceitem block ~3 ~-3 ~2 slot.container 14 lantern 6
loot insert ~3 ~-3 ~2 loot "rsf/stony_peaks"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-4 ~-5 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-4 ~5 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-4 ~4 ~8 ~4 stone_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~7 ~0 ~-5 ~7 ~5 ~-5 cobblestone_wall []
setblock ~7 ~6 ~-5 iron_block []
setblock ~7 ~7 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 11
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 10 raw_iron 10
replaceitem block ~-4 ~1 ~2 slot.container 11 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 12 emerald 10
replaceitem block ~-4 ~1 ~2 slot.container 13 cooked_beef 13
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0

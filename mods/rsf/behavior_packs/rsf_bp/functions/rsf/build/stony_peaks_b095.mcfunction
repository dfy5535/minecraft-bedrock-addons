# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2399/4224 | 主题内编号: b095/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子灯笼守卫神龛 (stony_peaks_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~9 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~8 ~3 stone_bricks []
fill ~2 ~1 ~-3 ~6 ~8 ~3 stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~7 ~2 air []
fill ~3 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 cobblestone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 stone_brick_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 calcite []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 stone_brick_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x4x6) ---
fill ~8 ~0 ~-4 ~8 ~9 ~-4 cobblestone_wall []
setblock ~8 ~10 ~-4 iron_block []
setblock ~8 ~11 ~-4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~1 slot.container 1 bone 10
replaceitem block ~5 ~1 ~1 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~1 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~1 slot.container 4 string 11
replaceitem block ~5 ~1 ~1 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 9 water_bucket 1
replaceitem block ~5 ~1 ~1 slot.container 10 shield 1
replaceitem block ~5 ~1 ~1 slot.container 11 lantern 4
replaceitem block ~5 ~1 ~1 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~1 slot.container 13 raw_iron 10
replaceitem block ~5 ~1 ~1 slot.container 14 coal 19
loot insert ~5 ~1 ~1 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~2 slot.container 2 string 14
replaceitem block ~-5 ~1 ~2 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~2 slot.container 4 spider_eye 6
replaceitem block ~-5 ~1 ~2 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 10 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 11 lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 12 iron_ingot 16
replaceitem block ~-5 ~1 ~2 slot.container 13 raw_iron 8
replaceitem block ~-5 ~1 ~2 slot.container 14 coal 17
loot insert ~-5 ~1 ~2 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~2 ~0

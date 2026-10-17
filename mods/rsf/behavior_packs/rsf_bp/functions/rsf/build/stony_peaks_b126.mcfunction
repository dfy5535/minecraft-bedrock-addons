# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2430/4224 | 主题内编号: b126/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子主塔天桥宫殿与暗牢 (stony_peaks_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 cobblestone [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 cobblestone [] replace water
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 cobblestone_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~10 ~5 cobblestone []
fill ~2 ~1 ~-5 ~7 ~10 ~5 cobblestone []
fill ~-6 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~6 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 mossy_cobblestone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~18 ~0 chiseled_stone_bricks []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~9 ~0 ~-7 ~9 ~5 ~-7 cobblestone_wall []
setblock ~9 ~6 ~-7 iron_block []
setblock ~9 ~7 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-6 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 10
replaceitem block ~-6 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-6 ~1 ~3 slot.container 5 string 11
replaceitem block ~-6 ~1 ~3 slot.container 9 iron_ingot 11
replaceitem block ~-6 ~1 ~3 slot.container 10 raw_iron 10
replaceitem block ~-6 ~1 ~3 slot.container 11 coal 19
replaceitem block ~-6 ~1 ~3 slot.container 12 emerald 10
replaceitem block ~-6 ~1 ~3 slot.container 13 cooked_beef 13
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-6 ~1 ~3 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2312/4224 | 主题内编号: b008/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·凯旋双拱圣物祭坛 (stony_peaks_altar_triumphal_arch)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 calcite [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 calcite [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_deepslate []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 calcite []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 cobblestone_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 spruce_log []
setblock ~-6 ~9 ~-4 torch []
setblock ~-6 ~8 ~4 spruce_log []
setblock ~-6 ~9 ~4 torch []
setblock ~6 ~8 ~-4 spruce_log []
setblock ~6 ~9 ~-4 torch []
setblock ~6 ~8 ~4 spruce_log []
setblock ~6 ~9 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~4 ~-6 chiseled_stone_bricks []
setblock ~-9 ~5 ~-6 lantern []
fill ~-9 ~0 ~6 ~-9 ~4 ~6 chiseled_stone_bricks []
setblock ~-9 ~5 ~6 lantern []
fill ~9 ~0 ~-6 ~9 ~4 ~-6 chiseled_stone_bricks []
setblock ~9 ~5 ~-6 lantern []
fill ~9 ~0 ~6 ~9 ~4 ~6 chiseled_stone_bricks []
setblock ~9 ~5 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~8 ~0 ~-5 ~8 ~7 ~-5 cobblestone_wall []
setblock ~8 ~8 ~-5 iron_block []
setblock ~8 ~9 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~2 slot.container 3 string 11
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 5 spider_eye 11
replaceitem block ~-5 ~1 ~2 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~2 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 12 lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 16
replaceitem block ~-5 ~1 ~2 slot.container 14 raw_iron 8
loot insert ~-5 ~1 ~2 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~2 ~0

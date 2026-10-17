# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2393/4224 | 主题内编号: b089/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·四柱挑檐祈愿凉亭 (stony_peaks_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 11x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~9 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~7 ~3 deepslate_bricks []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 polished_deepslate []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 polished_deepslate []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 polished_deepslate []
fill ~4 ~1 ~3 ~4 ~7 ~3 polished_deepslate []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 deepslate_brick_wall []
setblock ~4 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 deepslate_brick_slab []
fill ~-3 ~8 ~-2 ~3 ~9 ~2 cobblestone []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 cobblestone_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 6x4x5) ---
fill ~6 ~0 ~-4 ~6 ~8 ~-4 cobblestone_wall []
setblock ~6 ~9 ~-4 iron_block []
setblock ~6 ~10 ~-4 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~1 slot.container 1 gunpowder 10
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~1 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~1 slot.container 9 lantern 10
replaceitem block ~3 ~1 ~1 slot.container 10 iron_ingot 10
replaceitem block ~3 ~1 ~1 slot.container 11 raw_iron 9
replaceitem block ~3 ~1 ~1 slot.container 12 coal 18
replaceitem block ~3 ~1 ~1 slot.container 13 emerald 9
replaceitem block ~3 ~1 ~1 slot.container 14 cooked_beef 12
loot insert ~3 ~1 ~1 loot "rsf/stony_peaks"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 6
replaceitem block ~-3 ~1 ~2 slot.container 3 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-3 ~1 ~2 slot.container 9 lantern 8
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 15
replaceitem block ~-3 ~1 ~2 slot.container 11 raw_iron 14
replaceitem block ~-3 ~1 ~2 slot.container 12 coal 16
replaceitem block ~-3 ~1 ~2 slot.container 13 emerald 7
replaceitem block ~-3 ~1 ~2 slot.container 14 cooked_beef 10
loot insert ~-3 ~1 ~2 loot "rsf/stony_peaks"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~2 ~0

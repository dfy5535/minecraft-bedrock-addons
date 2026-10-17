# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2374/4224 | 主题内编号: b070/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·风化坍塌阶梯祭台 (stony_peaks_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 string 8
replaceitem block ~0 ~-2 ~-1 slot.container 1 arrow 17
replaceitem block ~0 ~-2 ~-1 slot.container 2 spider_eye 8
replaceitem block ~0 ~-2 ~-1 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-2 ~-1 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-2 ~-1 slot.container 5 bone 15
replaceitem block ~0 ~-2 ~-1 slot.container 9 water_bucket 1
replaceitem block ~0 ~-2 ~-1 slot.container 10 shield 1
replaceitem block ~0 ~-2 ~-1 slot.container 11 lantern 8
replaceitem block ~0 ~-2 ~-1 slot.container 12 iron_ingot 15
replaceitem block ~0 ~-2 ~-1 slot.container 13 raw_iron 14
replaceitem block ~0 ~-2 ~-1 slot.container 14 coal 16
loot insert ~0 ~-2 ~-1 loot "rsf/stony_peaks"
loot insert ~0 ~-2 ~-1 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cobblestone []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 mossy_cobblestone []
fill ~-4 ~5 ~-3 ~4 ~6 ~3 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 cobblestone_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 emerald_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 emerald_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~8 ~0 ~-8 ~8 ~9 ~-8 cobblestone_wall []
setblock ~8 ~10 ~-8 iron_block []
setblock ~8 ~11 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 coal 17
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 8
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_beef 11
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

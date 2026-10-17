# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2339/4224 | 主题内编号: b035/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·巨石垒砌古战石冢 (stony_peaks_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 chiseled_stone_bricks []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 chiseled_stone_bricks []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 chiseled_stone_bricks []
fill ~4 ~1 ~3 ~4 ~7 ~3 chiseled_stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 cobblestone []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 calcite []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 emerald_block []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_stone_bricks []
setblock ~0 ~4 ~-6 iron_block []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_stone_bricks []
setblock ~0 ~4 ~6 iron_block []
setblock ~0 ~5 ~6 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_stone_bricks []
setblock ~-7 ~4 ~0 iron_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_stone_bricks []
setblock ~7 ~4 ~0 iron_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~7 ~0 ~-5 ~7 ~9 ~-5 cobblestone_wall []
setblock ~7 ~10 ~-5 iron_block []
setblock ~7 ~11 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 string 11
replaceitem block ~4 ~1 ~2 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 4 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 5 bone 10
replaceitem block ~4 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 10 shield 1
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 7
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 13 raw_iron 13
replaceitem block ~4 ~1 ~2 slot.container 14 coal 22
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 spider_eye 6
replaceitem block ~-4 ~1 ~3 slot.container 1 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 2 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 10 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 5
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 13 raw_iron 11
replaceitem block ~-4 ~1 ~3 slot.container 14 coal 20
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-3 ~0

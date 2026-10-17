# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2363/4224 | 主题内编号: b059/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·阶梯金字塔法老墓室 (stony_peaks_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 calcite []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cobblestone []
setblock ~0 ~-6 ~0 iron_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 water_bucket 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 shield 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 lantern 8
replaceitem block ~0 ~-3 ~-4 slot.container 14 iron_ingot 15
loot insert ~0 ~-3 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 cobblestone []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 calcite []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 cobblestone []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 chiseled_stone_bricks []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 chiseled_stone_bricks []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 chiseled_stone_bricks []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 chiseled_stone_bricks []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~9 ~0 ~-7 ~9 ~8 ~-7 cobblestone_wall []
setblock ~9 ~9 ~-7 iron_block []
setblock ~9 ~10 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-6 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 11
replaceitem block ~6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 10
replaceitem block ~6 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~6 ~1 ~4 slot.container 10 iron_ingot 15
replaceitem block ~6 ~1 ~4 slot.container 11 raw_iron 14
replaceitem block ~6 ~1 ~4 slot.container 12 coal 16
replaceitem block ~6 ~1 ~4 slot.container 13 emerald 7
replaceitem block ~6 ~1 ~4 slot.container 14 cooked_beef 10
loot insert ~6 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 6
replaceitem block ~-6 ~1 ~5 slot.container 1 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 9 lantern 6
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_ingot 13
replaceitem block ~-6 ~1 ~5 slot.container 11 raw_iron 12
replaceitem block ~-6 ~1 ~5 slot.container 12 coal 21
replaceitem block ~-6 ~1 ~5 slot.container 13 emerald 12
replaceitem block ~-6 ~1 ~5 slot.container 14 cooked_beef 8
loot insert ~-6 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-3 ~0

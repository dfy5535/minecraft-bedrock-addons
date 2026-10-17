# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2337/4224 | 主题内编号: b033/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·太阳金顶高耸方尖碑 (stony_peaks_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~13 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 deepslate_bricks []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 stone_bricks []
fill ~-2 ~5 ~-1 ~2 ~11 ~1 cobblestone []
fill ~-2 ~1 ~-1 ~2 ~10 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 stone_bricks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 deepslate_bricks []
fill ~0 ~17 ~0 ~0 ~20 ~0 gold_block []
setblock ~0 ~21 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~4 ~-5 polished_deepslate []
setblock ~-6 ~5 ~-5 campfire []
fill ~-6 ~0 ~5 ~-6 ~4 ~5 polished_deepslate []
setblock ~-6 ~5 ~5 campfire []
fill ~6 ~0 ~-5 ~6 ~4 ~-5 polished_deepslate []
setblock ~6 ~5 ~-5 campfire []
fill ~6 ~0 ~5 ~6 ~4 ~5 polished_deepslate []
setblock ~6 ~5 ~5 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~6 ~0 ~-5 ~6 ~7 ~-5 cobblestone_wall []
setblock ~6 ~8 ~-5 iron_block []
setblock ~6 ~9 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~1 slot.container 1 gunpowder 10
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~1 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~1 slot.container 9 raw_iron 14
replaceitem block ~3 ~1 ~1 slot.container 10 coal 16
replaceitem block ~3 ~1 ~1 slot.container 11 emerald 7
replaceitem block ~3 ~1 ~1 slot.container 12 cooked_beef 10
replaceitem block ~3 ~1 ~1 slot.container 13 golden_apple 4
replaceitem block ~3 ~1 ~1 slot.container 14 iron_pickaxe 1
loot insert ~3 ~1 ~1 loot "rsf/stony_peaks"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 6
replaceitem block ~-3 ~1 ~2 slot.container 3 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-3 ~1 ~2 slot.container 9 raw_iron 12
replaceitem block ~-3 ~1 ~2 slot.container 10 coal 21
replaceitem block ~-3 ~1 ~2 slot.container 11 emerald 12
replaceitem block ~-3 ~1 ~2 slot.container 12 cooked_beef 8
replaceitem block ~-3 ~1 ~2 slot.container 13 golden_apple 2
replaceitem block ~-3 ~1 ~2 slot.container 14 iron_pickaxe 1
loot insert ~-3 ~1 ~2 loot "rsf/stony_peaks"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

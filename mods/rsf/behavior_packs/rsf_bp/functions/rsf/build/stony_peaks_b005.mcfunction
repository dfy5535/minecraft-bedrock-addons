# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2309/4224 | 主题内编号: b005/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·下沉圣泉秘宝祭坛 (stony_peaks_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 phantom_membrane 6
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 15
replaceitem block ~-3 ~-3 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-3 ~-3 ~2 slot.container 3 gunpowder 15
replaceitem block ~-3 ~-3 ~2 slot.container 4 string 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 17
replaceitem block ~-3 ~-3 ~2 slot.container 9 emerald 6
replaceitem block ~-3 ~-3 ~2 slot.container 10 cooked_beef 9
replaceitem block ~-3 ~-3 ~2 slot.container 11 golden_apple 3
replaceitem block ~-3 ~-3 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 water_bucket 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 shield 1
loot insert ~-3 ~-3 ~2 loot "rsf/stony_peaks"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 polished_deepslate []
setblock ~-5 ~8 ~-4 campfire []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 polished_deepslate []
setblock ~-5 ~8 ~4 campfire []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 polished_deepslate []
setblock ~5 ~8 ~-4 campfire []
fill ~5 ~5 ~4 ~5 ~7 ~4 polished_deepslate []
setblock ~5 ~8 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~7 ~0 ~-5 ~7 ~9 ~-5 cobblestone_wall []
setblock ~7 ~10 ~-5 iron_block []
setblock ~7 ~11 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 3 bone 10
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 10 shield 1
replaceitem block ~4 ~1 ~2 slot.container 11 lantern 5
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 13 raw_iron 11
replaceitem block ~4 ~1 ~2 slot.container 14 coal 20
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 10 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 13 raw_iron 9
replaceitem block ~-4 ~1 ~3 slot.container 14 coal 18
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-3 ~0

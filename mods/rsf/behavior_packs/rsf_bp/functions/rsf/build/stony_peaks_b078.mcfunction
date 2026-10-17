# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2382/4224 | 主题内编号: b078/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·下沉祭池图腾柱群 (stony_peaks_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 bone 15
replaceitem block ~-4 ~-4 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~-4 ~-4 ~3 slot.container 2 gunpowder 15
replaceitem block ~-4 ~-4 ~3 slot.container 3 string 8
replaceitem block ~-4 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~-4 ~-4 ~3 slot.container 5 spider_eye 8
replaceitem block ~-4 ~-4 ~3 slot.container 9 coal 19
replaceitem block ~-4 ~-4 ~3 slot.container 10 emerald 10
replaceitem block ~-4 ~-4 ~3 slot.container 11 cooked_beef 13
replaceitem block ~-4 ~-4 ~3 slot.container 12 golden_apple 7
replaceitem block ~-4 ~-4 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~-4 ~3 slot.container 14 water_bucket 1
loot insert ~-4 ~-4 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 spruce_log []
setblock ~-6 ~9 ~-5 lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 spruce_log []
setblock ~-6 ~9 ~5 lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 spruce_log []
setblock ~6 ~9 ~-5 lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 spruce_log []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~-7 ~8 ~7 ~-7 cobblestone_wall []
setblock ~8 ~8 ~-7 iron_block []
setblock ~8 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 11 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 9
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 16
replaceitem block ~-5 ~1 ~3 slot.container 14 raw_iron 8
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

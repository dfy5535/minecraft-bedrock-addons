# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2346/4224 | 主题内编号: b042/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·地底铁栏死斗深坑 (stony_peaks_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 spider_eye 8
replaceitem block ~0 ~-3 ~3 slot.container 1 ender_pearl 5
replaceitem block ~0 ~-3 ~3 slot.container 2 phantom_membrane 6
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~0 ~-3 ~3 slot.container 5 gunpowder 15
replaceitem block ~0 ~-3 ~3 slot.container 9 water_bucket 1
replaceitem block ~0 ~-3 ~3 slot.container 10 shield 1
replaceitem block ~0 ~-3 ~3 slot.container 11 lantern 5
replaceitem block ~0 ~-3 ~3 slot.container 12 iron_ingot 12
replaceitem block ~0 ~-3 ~3 slot.container 13 raw_iron 11
replaceitem block ~0 ~-3 ~3 slot.container 14 coal 20
loot insert ~0 ~-3 ~3 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~-3 slot.container 1 ender_pearl 3
replaceitem block ~0 ~-3 ~-3 slot.container 2 phantom_membrane 4
replaceitem block ~0 ~-3 ~-3 slot.container 3 bone 13
replaceitem block ~0 ~-3 ~-3 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-3 ~-3 slot.container 5 gunpowder 13
replaceitem block ~0 ~-3 ~-3 slot.container 9 water_bucket 1
replaceitem block ~0 ~-3 ~-3 slot.container 10 shield 1
replaceitem block ~0 ~-3 ~-3 slot.container 11 lantern 4
replaceitem block ~0 ~-3 ~-3 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-3 ~-3 slot.container 13 raw_iron 10
replaceitem block ~0 ~-3 ~-3 slot.container 14 coal 19
loot insert ~0 ~-3 ~-3 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 spruce_log []
setblock ~-6 ~8 ~-5 lantern []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 spruce_log []
setblock ~-6 ~8 ~5 lantern []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 spruce_log []
setblock ~6 ~8 ~-5 lantern []
fill ~6 ~5 ~5 ~6 ~7 ~5 spruce_log []
setblock ~6 ~8 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~0 ~-7 ~8 ~6 ~-7 cobblestone_wall []
setblock ~8 ~7 ~-7 iron_block []
setblock ~8 ~8 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 12 raw_iron 12
replaceitem block ~-5 ~1 ~3 slot.container 13 coal 21
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 12
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2402/4224 | 主题内编号: b098/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·四角炮楼重装要塞 (stony_peaks_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cobblestone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 lantern []
setblock ~5 ~-6 ~-4 lantern []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 arrow 17
replaceitem block ~5 ~-4 ~4 slot.container 1 spider_eye 8
replaceitem block ~5 ~-4 ~4 slot.container 2 ender_pearl 5
replaceitem block ~5 ~-4 ~4 slot.container 3 phantom_membrane 6
replaceitem block ~5 ~-4 ~4 slot.container 4 bone 15
replaceitem block ~5 ~-4 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~-4 ~4 slot.container 9 shield 1
replaceitem block ~5 ~-4 ~4 slot.container 10 lantern 8
replaceitem block ~5 ~-4 ~4 slot.container 11 iron_ingot 15
replaceitem block ~5 ~-4 ~4 slot.container 12 raw_iron 14
replaceitem block ~5 ~-4 ~4 slot.container 13 coal 16
replaceitem block ~5 ~-4 ~4 slot.container 14 emerald 7
loot insert ~5 ~-4 ~4 loot "rsf/stony_peaks"
loot insert ~5 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 cobblestone []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 mossy_cobblestone []
setblock ~-7 ~10 ~-6 lantern []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 mossy_cobblestone []
setblock ~-7 ~10 ~5 lantern []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 mossy_cobblestone []
setblock ~6 ~10 ~-6 lantern []
fill ~6 ~1 ~5 ~7 ~9 ~6 mossy_cobblestone []
setblock ~6 ~10 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 mossy_cobblestone []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 spruce_log []
setblock ~-7 ~9 ~-6 lantern []
setblock ~-7 ~8 ~6 spruce_log []
setblock ~-7 ~9 ~6 lantern []
setblock ~7 ~8 ~-6 spruce_log []
setblock ~7 ~9 ~-6 lantern []
setblock ~7 ~8 ~6 spruce_log []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~9 ~0 ~-7 ~9 ~7 ~-7 cobblestone_wall []
setblock ~9 ~8 ~-7 iron_block []
setblock ~9 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~-6 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~4 slot.container 5 phantom_membrane 9
replaceitem block ~-6 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~-6 ~1 ~4 slot.container 10 water_bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 11 shield 1
replaceitem block ~-6 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 15
replaceitem block ~-6 ~1 ~4 slot.container 14 raw_iron 14
loot insert ~-6 ~1 ~4 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-4 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2370/4224 | 主题内编号: b066/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·崩塌角楼古堡残垣 (stony_peaks_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-6 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-6 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-6 ~0 torch []
setblock ~5 ~-6 ~0 torch []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 ender_pearl 5
replaceitem block ~0 ~-4 ~4 slot.container 1 phantom_membrane 6
replaceitem block ~0 ~-4 ~4 slot.container 2 bone 15
replaceitem block ~0 ~-4 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~0 ~-4 ~4 slot.container 4 gunpowder 15
replaceitem block ~0 ~-4 ~4 slot.container 5 string 8
replaceitem block ~0 ~-4 ~4 slot.container 9 coal 18
replaceitem block ~0 ~-4 ~4 slot.container 10 emerald 9
replaceitem block ~0 ~-4 ~4 slot.container 11 cooked_beef 12
replaceitem block ~0 ~-4 ~4 slot.container 12 golden_apple 6
replaceitem block ~0 ~-4 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 14 water_bucket 1
loot insert ~0 ~-4 ~4 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-4 slot.container 0 ender_pearl 3
replaceitem block ~0 ~-4 ~-4 slot.container 1 phantom_membrane 4
replaceitem block ~0 ~-4 ~-4 slot.container 2 bone 13
replaceitem block ~0 ~-4 ~-4 slot.container 3 rotten_flesh 14
replaceitem block ~0 ~-4 ~-4 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-4 slot.container 5 string 14
replaceitem block ~0 ~-4 ~-4 slot.container 9 coal 17
replaceitem block ~0 ~-4 ~-4 slot.container 10 emerald 8
replaceitem block ~0 ~-4 ~-4 slot.container 11 cooked_beef 11
replaceitem block ~0 ~-4 ~-4 slot.container 12 golden_apple 5
replaceitem block ~0 ~-4 ~-4 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-4 slot.container 14 water_bucket 1
loot insert ~0 ~-4 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 mossy_cobblestone []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 mossy_cobblestone []
setblock ~-6 ~10 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 mossy_cobblestone []
setblock ~5 ~10 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 mossy_cobblestone []
setblock ~5 ~10 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cobblestone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~8 ~0 ~-7 ~8 ~5 ~-7 cobblestone_wall []
setblock ~8 ~6 ~-7 iron_block []
setblock ~8 ~7 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 10 raw_iron 13
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 22
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_beef 9
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

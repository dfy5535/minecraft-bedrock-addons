# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2318/4224 | 主题内编号: b014/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·暗渠蓄水池秘境地牢 (stony_peaks_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 6格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 water []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 bone 15
replaceitem block ~-4 ~-5 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~-4 ~-5 ~3 slot.container 2 gunpowder 15
replaceitem block ~-4 ~-5 ~3 slot.container 3 string 8
replaceitem block ~-4 ~-5 ~3 slot.container 4 arrow 17
replaceitem block ~-4 ~-5 ~3 slot.container 5 spider_eye 8
replaceitem block ~-4 ~-5 ~3 slot.container 9 iron_ingot 12
replaceitem block ~-4 ~-5 ~3 slot.container 10 raw_iron 11
replaceitem block ~-4 ~-5 ~3 slot.container 11 coal 20
replaceitem block ~-4 ~-5 ~3 slot.container 12 emerald 11
replaceitem block ~-4 ~-5 ~3 slot.container 13 cooked_beef 14
replaceitem block ~-4 ~-5 ~3 slot.container 14 golden_apple 1
loot insert ~-4 ~-5 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~-5 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 calcite []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 emerald_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~0 ~-6 ~8 ~8 ~-6 cobblestone_wall []
setblock ~8 ~9 ~-6 iron_block []
setblock ~8 ~10 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_beef 9
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 10
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-5 ~0

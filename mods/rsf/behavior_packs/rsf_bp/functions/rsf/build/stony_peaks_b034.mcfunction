# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2338/4224 | 主题内编号: b034/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子对称铭文方尖碑 (stony_peaks_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 cobblestone [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 cobblestone [] replace water
fill ~-7 ~1 ~-4 ~7 ~12 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cobblestone []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 15
replaceitem block ~0 ~-3 ~-2 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-3 ~-2 slot.container 3 gunpowder 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 raw_iron 10
replaceitem block ~0 ~-3 ~-2 slot.container 10 coal 19
replaceitem block ~0 ~-3 ~-2 slot.container 11 emerald 10
replaceitem block ~0 ~-3 ~-2 slot.container 12 cooked_beef 13
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 7
replaceitem block ~0 ~-3 ~-2 slot.container 14 iron_pickaxe 1
loot insert ~0 ~-3 ~-2 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 cobblestone []
fill ~2 ~1 ~-3 ~6 ~11 ~3 cobblestone []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 mossy_cobblestone []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_cobblestone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cobblestone []
fill ~0 ~16 ~0 ~0 ~19 ~0 chiseled_stone_bricks []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 mossy_cobblestone []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~0 ~-6 ~8 ~8 ~-6 cobblestone_wall []
setblock ~8 ~9 ~-6 iron_block []
setblock ~8 ~10 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~1 slot.container 1 string 11
replaceitem block ~-5 ~1 ~1 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~1 slot.container 3 spider_eye 11
replaceitem block ~-5 ~1 ~1 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~1 slot.container 5 phantom_membrane 9
replaceitem block ~-5 ~1 ~1 slot.container 9 cooked_beef 8
replaceitem block ~-5 ~1 ~1 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~1 slot.container 11 iron_pickaxe 1
replaceitem block ~-5 ~1 ~1 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~1 slot.container 13 shield 1
replaceitem block ~-5 ~1 ~1 slot.container 14 lantern 9
loot insert ~-5 ~1 ~1 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

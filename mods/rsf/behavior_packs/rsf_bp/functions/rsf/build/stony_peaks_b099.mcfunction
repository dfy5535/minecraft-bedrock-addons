# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2403/4224 | 主题内编号: b099/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·铁闸门瓮城防御堡 (stony_peaks_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 calcite []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 cobblestone []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~-3 ~2 slot.container 1 gunpowder 15
replaceitem block ~-5 ~-3 ~2 slot.container 2 string 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 arrow 17
replaceitem block ~-5 ~-3 ~2 slot.container 4 spider_eye 8
replaceitem block ~-5 ~-3 ~2 slot.container 5 ender_pearl 5
replaceitem block ~-5 ~-3 ~2 slot.container 9 lantern 4
replaceitem block ~-5 ~-3 ~2 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~-3 ~2 slot.container 11 raw_iron 10
replaceitem block ~-5 ~-3 ~2 slot.container 12 coal 19
replaceitem block ~-5 ~-3 ~2 slot.container 13 emerald 10
replaceitem block ~-5 ~-3 ~2 slot.container 14 cooked_beef 13
loot insert ~-5 ~-3 ~2 loot "rsf/stony_peaks"
loot insert ~-5 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 cobblestone []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 cobblestone_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 chiseled_stone_bricks []
setblock ~-6 ~9 ~-4 lantern []
setblock ~-6 ~8 ~4 chiseled_stone_bricks []
setblock ~-6 ~9 ~4 lantern []
setblock ~6 ~8 ~-4 chiseled_stone_bricks []
setblock ~6 ~9 ~-4 lantern []
setblock ~6 ~8 ~4 chiseled_stone_bricks []
setblock ~6 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cobblestone []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~8 ~0 ~-6 ~8 ~8 ~-6 cobblestone_wall []
setblock ~8 ~9 ~-6 iron_block []
setblock ~8 ~10 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 emerald_block []
setblock ~0 ~1 ~0 iron_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 string 11
replaceitem block ~5 ~1 ~2 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~2 slot.container 2 spider_eye 11
replaceitem block ~5 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~2 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 5 bone 10
replaceitem block ~5 ~1 ~2 slot.container 9 lantern 6
replaceitem block ~5 ~1 ~2 slot.container 10 iron_ingot 13
replaceitem block ~5 ~1 ~2 slot.container 11 raw_iron 12
replaceitem block ~5 ~1 ~2 slot.container 12 coal 21
replaceitem block ~5 ~1 ~2 slot.container 13 emerald 12
replaceitem block ~5 ~1 ~2 slot.container 14 cooked_beef 8
loot insert ~5 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 6
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 9 lantern 4
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 11 raw_iron 10
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 13 emerald 10
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_beef 13
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

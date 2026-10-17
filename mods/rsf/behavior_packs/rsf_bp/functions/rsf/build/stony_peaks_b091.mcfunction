# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2395/4224 | 主题内编号: b091/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·跨水拱桥水神小祠 (stony_peaks_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 stone_bricks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~9 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 calcite []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~0 slot.container 1 bone 15
replaceitem block ~4 ~-2 ~0 slot.container 2 rotten_flesh 16
replaceitem block ~4 ~-2 ~0 slot.container 3 gunpowder 15
replaceitem block ~4 ~-2 ~0 slot.container 4 string 8
replaceitem block ~4 ~-2 ~0 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~0 slot.container 9 lantern 10
replaceitem block ~4 ~-2 ~0 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-2 ~0 slot.container 11 raw_iron 9
replaceitem block ~4 ~-2 ~0 slot.container 12 coal 18
replaceitem block ~4 ~-2 ~0 slot.container 13 emerald 9
replaceitem block ~4 ~-2 ~0 slot.container 14 cooked_beef 12
loot insert ~4 ~-2 ~0 loot "rsf/stony_peaks"
loot insert ~4 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~7 ~3 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 stone_brick_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 calcite []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 stone_brick_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 cobblestone []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~0 ~-6 ~8 ~5 ~-6 cobblestone_wall []
setblock ~8 ~6 ~-6 iron_block []
setblock ~8 ~7 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 string 11
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 2 spider_eye 11
replaceitem block ~5 ~1 ~1 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~1 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~1 slot.container 5 bone 10
replaceitem block ~5 ~1 ~1 slot.container 9 golden_apple 2
replaceitem block ~5 ~1 ~1 slot.container 10 iron_pickaxe 1
replaceitem block ~5 ~1 ~1 slot.container 11 water_bucket 1
replaceitem block ~5 ~1 ~1 slot.container 12 shield 1
replaceitem block ~5 ~1 ~1 slot.container 13 lantern 9
replaceitem block ~5 ~1 ~1 slot.container 14 iron_ingot 16
loot insert ~5 ~1 ~1 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 spider_eye 6
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~2 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_pickaxe 1
replaceitem block ~-5 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 12 shield 1
replaceitem block ~-5 ~1 ~2 slot.container 13 lantern 7
replaceitem block ~-5 ~1 ~2 slot.container 14 iron_ingot 14
loot insert ~-5 ~1 ~2 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

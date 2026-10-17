# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2383/4224 | 主题内编号: b079/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·四角结界守护柱阵 (stony_peaks_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 calcite []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 8
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 2 spider_eye 8
replaceitem block ~4 ~-2 ~3 slot.container 3 ender_pearl 5
replaceitem block ~4 ~-2 ~3 slot.container 4 phantom_membrane 6
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 15
replaceitem block ~4 ~-2 ~3 slot.container 9 emerald 12
replaceitem block ~4 ~-2 ~3 slot.container 10 cooked_beef 8
replaceitem block ~4 ~-2 ~3 slot.container 11 golden_apple 2
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 13 water_bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 14 shield 1
loot insert ~4 ~-2 ~3 loot "rsf/stony_peaks"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 cobblestone []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 cobblestone []
setblock ~-6 ~10 ~4 lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 cobblestone []
setblock ~5 ~10 ~-5 lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 cobblestone []
setblock ~5 ~10 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 chiseled_stone_bricks []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 chiseled_stone_bricks []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 chiseled_stone_bricks []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 chiseled_stone_bricks []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_cobblestone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 cobblestone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~8 ~0 ~-8 ~8 ~8 ~-8 cobblestone_wall []
setblock ~8 ~9 ~-8 iron_block []
setblock ~8 ~10 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 1 bone 10
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 11 raw_iron 13
replaceitem block ~5 ~1 ~3 slot.container 12 coal 22
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 6
replaceitem block ~5 ~1 ~3 slot.container 14 cooked_beef 9
loot insert ~5 ~1 ~3 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 6
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 11 raw_iron 11
replaceitem block ~-5 ~1 ~4 slot.container 12 coal 20
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 11
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_beef 14
loot insert ~-5 ~1 ~4 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

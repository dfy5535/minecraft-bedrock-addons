# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2416/4224 | 主题内编号: b112/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·U型回廊学者修道院 (stony_peaks_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 arrow 17
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 8
replaceitem block ~4 ~-3 ~3 slot.container 2 ender_pearl 5
replaceitem block ~4 ~-3 ~3 slot.container 3 phantom_membrane 6
replaceitem block ~4 ~-3 ~3 slot.container 4 bone 15
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~-3 ~3 slot.container 9 coal 20
replaceitem block ~4 ~-3 ~3 slot.container 10 emerald 11
replaceitem block ~4 ~-3 ~3 slot.container 11 cooked_beef 14
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 1
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~-3 ~3 slot.container 14 water_bucket 1
loot insert ~4 ~-3 ~3 loot "rsf/stony_peaks"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 calcite []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 stone_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 calcite []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~-8 ~8 ~6 ~-8 cobblestone_wall []
setblock ~8 ~7 ~-8 iron_block []
setblock ~8 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 9 shield 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 12 raw_iron 12
replaceitem block ~-5 ~1 ~3 slot.container 13 coal 21
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 12
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon silverfish ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

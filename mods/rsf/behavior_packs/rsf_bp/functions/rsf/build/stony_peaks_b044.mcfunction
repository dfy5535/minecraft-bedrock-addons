# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2348/4224 | 主题内编号: b044/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子祭台勇士角斗场 (stony_peaks_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 calcite [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 calcite [] replace water
fill ~-8 ~1 ~-6 ~8 ~8 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 stone_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 polished_deepslate []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 deepslate_bricks []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 bone 15
replaceitem block ~5 ~-3 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~-3 ~3 slot.container 2 gunpowder 15
replaceitem block ~5 ~-3 ~3 slot.container 3 string 8
replaceitem block ~5 ~-3 ~3 slot.container 4 arrow 17
replaceitem block ~5 ~-3 ~3 slot.container 5 spider_eye 8
replaceitem block ~5 ~-3 ~3 slot.container 9 shield 1
replaceitem block ~5 ~-3 ~3 slot.container 10 lantern 4
replaceitem block ~5 ~-3 ~3 slot.container 11 iron_ingot 11
replaceitem block ~5 ~-3 ~3 slot.container 12 raw_iron 10
replaceitem block ~5 ~-3 ~3 slot.container 13 coal 19
replaceitem block ~5 ~-3 ~3 slot.container 14 emerald 10
loot insert ~5 ~-3 ~3 loot "rsf/stony_peaks"
loot insert ~5 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~7 ~5 calcite []
fill ~2 ~1 ~-5 ~7 ~7 ~5 calcite []
fill ~-6 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~6 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-5 ~-7 ~8 ~-5 spruce_log []
setblock ~-7 ~9 ~-5 torch []
fill ~-7 ~6 ~5 ~-7 ~8 ~5 spruce_log []
setblock ~-7 ~9 ~5 torch []
fill ~7 ~6 ~-5 ~7 ~8 ~-5 spruce_log []
setblock ~7 ~9 ~-5 torch []
fill ~7 ~6 ~5 ~7 ~8 ~5 spruce_log []
setblock ~7 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~9 ~0 ~-6 ~9 ~8 ~-6 cobblestone_wall []
setblock ~9 ~9 ~-6 iron_block []
setblock ~9 ~10 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-6 ~1 ~3 slot.container 1 spider_eye 11
replaceitem block ~-6 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-6 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-6 ~1 ~3 slot.container 4 bone 10
replaceitem block ~-6 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~3 slot.container 9 cooked_beef 11
replaceitem block ~-6 ~1 ~3 slot.container 10 golden_apple 5
replaceitem block ~-6 ~1 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~-6 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-6 ~1 ~3 slot.container 13 shield 1
replaceitem block ~-6 ~1 ~3 slot.container 14 lantern 5
loot insert ~-6 ~1 ~3 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~-3 ~0

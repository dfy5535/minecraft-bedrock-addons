# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2334/4224 | 主题内编号: b030/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双坡顶驻军卫戍塔 (stony_peaks_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 lantern []
setblock ~5 ~-7 ~0 lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 15
replaceitem block ~0 ~-5 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-5 ~4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 17
replaceitem block ~0 ~-5 ~4 slot.container 5 spider_eye 8
replaceitem block ~0 ~-5 ~4 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-5 ~4 slot.container 10 golden_apple 5
replaceitem block ~0 ~-5 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-5 ~4 slot.container 12 water_bucket 1
replaceitem block ~0 ~-5 ~4 slot.container 13 shield 1
replaceitem block ~0 ~-5 ~4 slot.container 14 lantern 5
loot insert ~0 ~-5 ~4 loot "rsf/stony_peaks"
loot insert ~0 ~-5 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 13
replaceitem block ~0 ~-5 ~-4 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 23
replaceitem block ~0 ~-5 ~-4 slot.container 5 spider_eye 6
replaceitem block ~0 ~-5 ~-4 slot.container 9 cooked_beef 10
replaceitem block ~0 ~-5 ~-4 slot.container 10 golden_apple 4
replaceitem block ~0 ~-5 ~-4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 water_bucket 1
replaceitem block ~0 ~-5 ~-4 slot.container 13 shield 1
replaceitem block ~0 ~-5 ~-4 slot.container 14 lantern 4
loot insert ~0 ~-5 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-5 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~9 ~4 cobblestone []
fill ~-5 ~1 ~0 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~-1 ~8 ~3 air []
fill ~-1 ~1 ~1 ~4 ~7 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~10 ~-5 ~-6 ~10 ~5 stone_stairs ["weirdo_direction"=0]
fill ~6 ~10 ~-5 ~6 ~10 ~5 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-4 ~-5 ~11 ~4 stone_stairs ["weirdo_direction"=0]
fill ~5 ~11 ~-4 ~5 ~11 ~4 stone_stairs ["weirdo_direction"=1]
fill ~-4 ~11 ~-4 ~4 ~11 ~4 cobblestone_slab []
fill ~0 ~12 ~-5 ~0 ~12 ~5 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~11 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~10 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~12 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~0 ~-6 ~7 ~9 ~-6 cobblestone_wall []
setblock ~7 ~10 ~-6 iron_block []
setblock ~7 ~11 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~0 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~2 slot.container 1 phantom_membrane 9
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 10 emerald 10
replaceitem block ~-4 ~1 ~2 slot.container 11 cooked_beef 13
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-4 ~1 ~2 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

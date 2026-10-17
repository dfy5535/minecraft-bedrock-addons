# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0455/4224 | 主题内编号: b071/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·残破双子哨所遗迹 (roofed_forest_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cracked_stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 mossy_stone_bricks []
fill ~2 ~1 ~-5 ~5 ~8 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 dark_oak_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-6 ~0 ~-2 ~-7 ~3 ~0 iron_bars []
fill ~-6 ~4 ~-2 ~-7 ~4 ~0 dark_oak_slab []
setblock ~-7 ~5 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 totem_of_undying 8
replaceitem block ~4 ~1 ~4 slot.container 1 emerald 6
replaceitem block ~4 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~4 slot.container 3 bone 12
replaceitem block ~4 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~4 ~1 ~4 slot.container 9 experience_bottle 4
replaceitem block ~4 ~1 ~4 slot.container 10 iron_chestplate 1
replaceitem block ~4 ~1 ~4 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~4 slot.container 12 arrow 27
replaceitem block ~4 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~4 ~1 ~4 slot.container 14 dark_oak_log 21
loot insert ~4 ~1 ~4 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0491/4224 | 主题内编号: b107/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·观星高塔与秘术地宫 (roofed_forest_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 deepslate_bricks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 bookshelf []
setblock ~0 ~-7 ~0 soul_lantern []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 spider_eye 6
replaceitem block ~2 ~-4 ~0 slot.container 1 gunpowder 9
replaceitem block ~2 ~-4 ~0 slot.container 2 string 12
replaceitem block ~2 ~-4 ~0 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-4 ~0 slot.container 4 totem_of_undying 5
replaceitem block ~2 ~-4 ~0 slot.container 5 emerald 11
replaceitem block ~2 ~-4 ~0 slot.container 9 lantern 10
replaceitem block ~2 ~-4 ~0 slot.container 10 dark_oak_log 16
replaceitem block ~2 ~-4 ~0 slot.container 11 golden_apple 3
replaceitem block ~2 ~-4 ~0 slot.container 12 mushroom_stew 1
replaceitem block ~2 ~-4 ~0 slot.container 13 iron_ingot 11
replaceitem block ~2 ~-4 ~0 slot.container 14 diamond 6
loot insert ~2 ~-4 ~0 loot "rsf/roofed_forest"
loot insert ~2 ~-4 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 deepslate_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~9 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 dark_oak_planks []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 glass []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-5 ~0 ~-1 ~-6 ~4 ~1 iron_bars []
fill ~-5 ~5 ~-1 ~-6 ~5 ~1 dark_oak_slab []
setblock ~-6 ~6 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 15
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 4 totem_of_undying 8
replaceitem block ~3 ~1 ~4 slot.container 5 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 9 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 10 diamond 4
replaceitem block ~3 ~1 ~4 slot.container 11 experience_bottle 7
replaceitem block ~3 ~1 ~4 slot.container 12 iron_chestplate 1
replaceitem block ~3 ~1 ~4 slot.container 13 crossbow 1
replaceitem block ~3 ~1 ~4 slot.container 14 arrow 30
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-4 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0458/4224 | 主题内编号: b074/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·十字四象图腾柱阵 (roofed_forest_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 bone 17
replaceitem block ~3 ~-2 ~0 slot.container 1 spider_eye 6
replaceitem block ~3 ~-2 ~0 slot.container 2 gunpowder 9
replaceitem block ~3 ~-2 ~0 slot.container 3 string 12
replaceitem block ~3 ~-2 ~0 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 5 totem_of_undying 5
replaceitem block ~3 ~-2 ~0 slot.container 9 dark_oak_log 17
replaceitem block ~3 ~-2 ~0 slot.container 10 golden_apple 4
replaceitem block ~3 ~-2 ~0 slot.container 11 mushroom_stew 1
replaceitem block ~3 ~-2 ~0 slot.container 12 iron_ingot 12
replaceitem block ~3 ~-2 ~0 slot.container 13 diamond 7
replaceitem block ~3 ~-2 ~0 slot.container 14 experience_bottle 10
loot insert ~3 ~-2 ~0 loot "rsf/roofed_forest"
loot insert ~3 ~-2 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 dark_oak_planks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 dark_oak_planks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 dark_oak_fence []
setblock ~5 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~7 ~-6 ~-5 ~9 ~-6 dark_oak_log []
setblock ~-5 ~10 ~-6 lantern []
fill ~-5 ~7 ~6 ~-5 ~9 ~6 dark_oak_log []
setblock ~-5 ~10 ~6 lantern []
fill ~5 ~7 ~-6 ~5 ~9 ~-6 dark_oak_log []
setblock ~5 ~10 ~-6 lantern []
fill ~5 ~7 ~6 ~5 ~9 ~6 dark_oak_log []
setblock ~5 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 dark_oak_planks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 soul_lantern []
setblock ~2 ~4 ~-10 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-6 ~0 ~0 ~-7 ~6 ~2 iron_bars []
fill ~-6 ~7 ~0 ~-7 ~7 ~2 dark_oak_slab []
setblock ~-7 ~8 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 red_mushroom_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 15
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 5 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 9 diamond 5
replaceitem block ~-4 ~1 ~5 slot.container 10 experience_bottle 8
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~-4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~-4 ~1 ~5 slot.container 13 arrow 24
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 5
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 3 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 4 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 diamond 3
replaceitem block ~4 ~1 ~5 slot.container 10 experience_bottle 6
replaceitem block ~4 ~1 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 12 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 13 arrow 29
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 10
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0

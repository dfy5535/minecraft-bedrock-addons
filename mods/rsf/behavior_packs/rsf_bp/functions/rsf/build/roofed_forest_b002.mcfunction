# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0386/4224 | 主题内编号: b002/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·十字拱门祈愿圣殿 (roofed_forest_altar_cross_sanctuary)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 dark_oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 dark_oak_planks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 dark_oak_planks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 dark_oak_fence []
setblock ~5 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 dark_oak_planks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 soul_lantern []
setblock ~2 ~4 ~-10 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-6 ~0 ~0 ~-7 ~4 ~2 iron_bars []
fill ~-6 ~5 ~0 ~-7 ~5 ~2 dark_oak_slab []
setblock ~-7 ~6 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 15
replaceitem block ~-4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 5 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 9 arrow 25
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 6
replaceitem block ~-4 ~1 ~5 slot.container 11 dark_oak_log 19
replaceitem block ~-4 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 14
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 3 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 4 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 9 arrow 30
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 4
replaceitem block ~4 ~1 ~5 slot.container 11 dark_oak_log 17
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 12
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0

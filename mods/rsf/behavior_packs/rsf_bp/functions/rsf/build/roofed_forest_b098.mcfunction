# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0482/4224 | 主题内编号: b098/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·四角炮楼重装要塞 (roofed_forest_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 dark_oak_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 dark_oak_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 dark_oak_planks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~5 lantern []
setblock ~4 ~-5 ~-5 lantern []
setblock ~4 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 9
replaceitem block ~4 ~-3 ~5 slot.container 1 string 12
replaceitem block ~4 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 3 totem_of_undying 5
replaceitem block ~4 ~-3 ~5 slot.container 4 emerald 11
replaceitem block ~4 ~-3 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~4 ~-3 ~5 slot.container 9 arrow 25
replaceitem block ~4 ~-3 ~5 slot.container 10 lantern 6
replaceitem block ~4 ~-3 ~5 slot.container 11 dark_oak_log 19
replaceitem block ~4 ~-3 ~5 slot.container 12 golden_apple 6
replaceitem block ~4 ~-3 ~5 slot.container 13 mushroom_stew 1
replaceitem block ~4 ~-3 ~5 slot.container 14 iron_ingot 14
loot insert ~4 ~-3 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~-3 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 dark_oak_planks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 cobblestone []
setblock ~-6 ~10 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 cobblestone []
setblock ~-6 ~10 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 cobblestone []
setblock ~5 ~10 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~9 ~7 cobblestone []
setblock ~5 ~10 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 dark_oak_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-7 ~0 ~2 ~-8 ~5 ~4 iron_bars []
fill ~-7 ~6 ~2 ~-8 ~6 ~4 dark_oak_slab []
setblock ~-8 ~7 ~3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 15
replaceitem block ~-5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 5 totem_of_undying 8
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_chestplate 1
replaceitem block ~-5 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~6 slot.container 11 arrow 25
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 6
replaceitem block ~-5 ~1 ~6 slot.container 13 dark_oak_log 19
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 6
loot insert ~-5 ~1 ~6 loot "rsf/roofed_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 3 totem_of_undying 3
replaceitem block ~5 ~1 ~6 slot.container 4 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 9 iron_chestplate 1
replaceitem block ~5 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 11 arrow 30
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 13 dark_oak_log 17
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~6 loot "chests/woodland_mansion"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0

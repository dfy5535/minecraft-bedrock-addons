# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0466/4224 | 主题内编号: b082/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·竖井井架矿工物资站 (roofed_forest_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 dark_oak_planks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 dark_oak_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 dark_oak_planks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-6 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-6 ~3 lantern []
setblock ~2 ~-6 ~-3 lantern []
setblock ~2 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-4 ~3 slot.container 0 gunpowder 9
replaceitem block ~2 ~-4 ~3 slot.container 1 string 12
replaceitem block ~2 ~-4 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-4 ~3 slot.container 3 totem_of_undying 5
replaceitem block ~2 ~-4 ~3 slot.container 4 emerald 11
replaceitem block ~2 ~-4 ~3 slot.container 5 rotten_flesh 18
replaceitem block ~2 ~-4 ~3 slot.container 9 dark_oak_log 22
replaceitem block ~2 ~-4 ~3 slot.container 10 golden_apple 2
replaceitem block ~2 ~-4 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~2 ~-4 ~3 slot.container 12 iron_ingot 10
replaceitem block ~2 ~-4 ~3 slot.container 13 diamond 5
replaceitem block ~2 ~-4 ~3 slot.container 14 experience_bottle 8
loot insert ~2 ~-4 ~3 loot "rsf/roofed_forest"
loot insert ~2 ~-4 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~4 ~5 dark_oak_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-5 ~4 ~-6 ~5 ~4 ~6 dark_oak_slab []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 mossy_stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 cobblestone []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 dark_oak_fence []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-5 ~0 ~-1 ~-6 ~4 ~1 iron_bars []
fill ~-5 ~5 ~-1 ~-6 ~5 ~1 dark_oak_slab []
setblock ~-6 ~6 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-3 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-3 ~1 ~4 slot.container 3 string 15
replaceitem block ~-3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 5 totem_of_undying 8
replaceitem block ~-3 ~1 ~4 slot.container 9 arrow 28
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 9
replaceitem block ~-3 ~1 ~4 slot.container 11 dark_oak_log 22
replaceitem block ~-3 ~1 ~4 slot.container 12 golden_apple 2
replaceitem block ~-3 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-3 ~1 ~4 loot "rsf/roofed_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 10
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 3 totem_of_undying 3
replaceitem block ~3 ~1 ~4 slot.container 4 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 9 arrow 26
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 11 dark_oak_log 20
replaceitem block ~3 ~1 ~4 slot.container 12 golden_apple 7
replaceitem block ~3 ~1 ~4 slot.container 13 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~1 ~4 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0414/4224 | 主题内编号: b030/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双坡顶驻军卫戍塔 (roofed_forest_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_oak_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 dark_oak_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 dark_oak_planks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-4 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-4 ~3 lantern []
setblock ~2 ~-4 ~-3 lantern []
setblock ~2 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-2 ~3 slot.container 0 emerald 11
replaceitem block ~2 ~-2 ~3 slot.container 1 rotten_flesh 18
replaceitem block ~2 ~-2 ~3 slot.container 2 bone 17
replaceitem block ~2 ~-2 ~3 slot.container 3 spider_eye 6
replaceitem block ~2 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~2 ~-2 ~3 slot.container 5 string 12
replaceitem block ~2 ~-2 ~3 slot.container 9 diamond 5
replaceitem block ~2 ~-2 ~3 slot.container 10 experience_bottle 8
replaceitem block ~2 ~-2 ~3 slot.container 11 iron_chestplate 1
replaceitem block ~2 ~-2 ~3 slot.container 12 crossbow 1
replaceitem block ~2 ~-2 ~3 slot.container 13 arrow 24
replaceitem block ~2 ~-2 ~3 slot.container 14 lantern 5
loot insert ~2 ~-2 ~3 loot "rsf/roofed_forest"
loot insert ~2 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~9 ~5 dark_oak_planks []
fill ~-4 ~1 ~0 ~4 ~8 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~-1 ~8 ~4 air []
fill ~-1 ~1 ~1 ~3 ~7 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~10 ~-6 ~-5 ~10 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-6 ~5 ~10 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~11 ~-5 ~-4 ~11 ~5 dark_oak_stairs ["weirdo_direction"=0]
fill ~4 ~11 ~-5 ~4 ~11 ~5 dark_oak_stairs ["weirdo_direction"=1]
fill ~-3 ~11 ~-5 ~3 ~11 ~5 dark_oak_slab []
fill ~0 ~12 ~-6 ~0 ~12 ~6 cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 dark_oak_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 dark_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 dark_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 deepslate_brick_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-5 ~0 ~-3 ~-6 ~7 ~-1 iron_bars []
fill ~-5 ~8 ~-3 ~-6 ~8 ~-1 dark_oak_slab []
setblock ~-6 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 1 totem_of_undying 8
replaceitem block ~-3 ~1 ~4 slot.container 2 emerald 6
replaceitem block ~-3 ~1 ~4 slot.container 3 rotten_flesh 13
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 12
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~1 ~4 slot.container 11 diamond 5
replaceitem block ~-3 ~1 ~4 slot.container 12 experience_bottle 8
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~-3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~-3 ~1 ~4 loot "rsf/roofed_forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~3 ~1 ~4 slot.container 2 bone 15
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 12
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 10
replaceitem block ~3 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~3 ~1 ~4 slot.container 11 diamond 3
replaceitem block ~3 ~1 ~4 slot.container 12 experience_bottle 6
replaceitem block ~3 ~1 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~3 ~1 ~4 slot.container 14 crossbow 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
loot insert ~3 ~1 ~4 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

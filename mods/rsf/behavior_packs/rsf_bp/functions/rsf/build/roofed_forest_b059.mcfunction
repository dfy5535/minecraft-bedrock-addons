# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0443/4224 | 主题内编号: b059/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·阶梯金字塔法老墓室 (roofed_forest_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cracked_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 deepslate_bricks []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~-3 ~-4 ~-4 lantern []
setblock ~3 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 gunpowder 9
replaceitem block ~0 ~-2 ~4 slot.container 1 string 12
replaceitem block ~0 ~-2 ~4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-2 ~4 slot.container 3 totem_of_undying 5
replaceitem block ~0 ~-2 ~4 slot.container 4 emerald 11
replaceitem block ~0 ~-2 ~4 slot.container 5 rotten_flesh 18
replaceitem block ~0 ~-2 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~0 ~-2 ~4 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-2 ~4 slot.container 11 diamond 6
replaceitem block ~0 ~-2 ~4 slot.container 12 experience_bottle 9
replaceitem block ~0 ~-2 ~4 slot.container 13 iron_chestplate 1
replaceitem block ~0 ~-2 ~4 slot.container 14 crossbow 1
loot insert ~0 ~-2 ~4 loot "rsf/roofed_forest"
loot insert ~0 ~-2 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mossy_stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 dark_oak_planks []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 deepslate_bricks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 dark_oak_planks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 deepslate_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 bookshelf []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 stripped_dark_oak_log []
setblock ~-8 ~5 ~-9 soul_lantern []
fill ~-8 ~0 ~9 ~-8 ~4 ~9 stripped_dark_oak_log []
setblock ~-8 ~5 ~9 soul_lantern []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 stripped_dark_oak_log []
setblock ~8 ~5 ~-9 soul_lantern []
fill ~8 ~0 ~9 ~8 ~4 ~9 stripped_dark_oak_log []
setblock ~8 ~5 ~9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-7 ~0 ~-2 ~-8 ~6 ~0 iron_bars []
fill ~-7 ~7 ~-2 ~-8 ~7 ~0 dark_oak_slab []
setblock ~-8 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 bookshelf []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 15
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 4 totem_of_undying 8
replaceitem block ~5 ~1 ~6 slot.container 5 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 6
replaceitem block ~5 ~1 ~6 slot.container 10 dark_oak_log 19
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 14
replaceitem block ~5 ~1 ~6 slot.container 14 diamond 2
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-4 ~0

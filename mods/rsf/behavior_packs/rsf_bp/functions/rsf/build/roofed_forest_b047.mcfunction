# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0431/4224 | 主题内编号: b047/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·深渊跨桥决斗长台 (roofed_forest_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cracked_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 dark_oak_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 rotten_flesh 18
replaceitem block ~-4 ~-4 ~3 slot.container 1 bone 17
replaceitem block ~-4 ~-4 ~3 slot.container 2 spider_eye 6
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 9
replaceitem block ~-4 ~-4 ~3 slot.container 4 string 12
replaceitem block ~-4 ~-4 ~3 slot.container 5 ender_pearl 6
replaceitem block ~-4 ~-4 ~3 slot.container 9 lantern 9
replaceitem block ~-4 ~-4 ~3 slot.container 10 dark_oak_log 22
replaceitem block ~-4 ~-4 ~3 slot.container 11 golden_apple 2
replaceitem block ~-4 ~-4 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~-4 ~-4 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-4 ~-4 ~3 slot.container 14 diamond 5
loot insert ~-4 ~-4 ~3 loot "rsf/roofed_forest"
loot insert ~-4 ~-4 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 stripped_dark_oak_log []
setblock ~-8 ~5 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 stripped_dark_oak_log []
setblock ~-8 ~5 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 stripped_dark_oak_log []
setblock ~8 ~5 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 stripped_dark_oak_log []
setblock ~8 ~5 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-7 ~0 ~-1 ~-8 ~4 ~1 iron_bars []
fill ~-7 ~5 ~-1 ~-8 ~5 ~1 dark_oak_slab []
setblock ~-8 ~6 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 totem_of_undying 8
replaceitem block ~5 ~1 ~4 slot.container 1 emerald 6
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~1 ~4 slot.container 3 bone 12
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 10 diamond 7
replaceitem block ~5 ~1 ~4 slot.container 11 experience_bottle 10
replaceitem block ~5 ~1 ~4 slot.container 12 iron_chestplate 1
replaceitem block ~5 ~1 ~4 slot.container 13 crossbow 1
replaceitem block ~5 ~1 ~4 slot.container 14 arrow 26
loot insert ~5 ~1 ~4 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-4 ~0

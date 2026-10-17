# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0472/4224 | 主题内编号: b088/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·矿车铁轨转运仓库 (roofed_forest_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-9 ~6 ~10 ~9 air [] replace leaves
fill ~-6 ~1 ~-9 ~6 ~10 ~9 air [] replace leaves2
fill ~-6 ~1 ~-9 ~6 ~10 ~9 air [] replace log
fill ~-6 ~1 ~-9 ~6 ~10 ~9 air [] replace log2
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 deepslate_bricks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 deepslate_bricks [] replace water
fill ~-5 ~0 ~-8 ~5 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 polished_deepslate []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 cobblestone []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 gunpowder 9
replaceitem block ~2 ~-2 ~5 slot.container 1 string 12
replaceitem block ~2 ~-2 ~5 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 3 totem_of_undying 5
replaceitem block ~2 ~-2 ~5 slot.container 4 emerald 11
replaceitem block ~2 ~-2 ~5 slot.container 5 rotten_flesh 18
replaceitem block ~2 ~-2 ~5 slot.container 9 dark_oak_log 22
replaceitem block ~2 ~-2 ~5 slot.container 10 golden_apple 2
replaceitem block ~2 ~-2 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~2 ~-2 ~5 slot.container 12 iron_ingot 10
replaceitem block ~2 ~-2 ~5 slot.container 13 diamond 5
replaceitem block ~2 ~-2 ~5 slot.container 14 experience_bottle 8
loot insert ~2 ~-2 ~5 loot "rsf/roofed_forest"
loot insert ~2 ~-2 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~6 ~7 deepslate_bricks []
fill ~-3 ~1 ~-6 ~3 ~5 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 dark_oak_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 dark_oak_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 dark_oak_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 dark_oak_fence []
setblock ~4 ~2 ~0 dark_oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 dark_oak_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 dark_oak_planks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x10x4) ---
fill ~-5 ~0 ~-1 ~-6 ~5 ~1 iron_bars []
fill ~-5 ~6 ~-1 ~-6 ~6 ~1 dark_oak_slab []
setblock ~-6 ~7 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-3 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 emerald 6
replaceitem block ~-3 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-3 ~1 ~6 slot.container 2 bone 12
replaceitem block ~-3 ~1 ~6 slot.container 3 spider_eye 9
replaceitem block ~-3 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-3 ~1 ~6 slot.container 5 string 15
replaceitem block ~-3 ~1 ~6 slot.container 9 iron_chestplate 1
replaceitem block ~-3 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~-3 ~1 ~6 slot.container 11 arrow 29
replaceitem block ~-3 ~1 ~6 slot.container 12 lantern 10
replaceitem block ~-3 ~1 ~6 slot.container 13 dark_oak_log 16
replaceitem block ~-3 ~1 ~6 slot.container 14 golden_apple 3
loot insert ~-3 ~1 ~6 loot "rsf/roofed_forest"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 bone 15
replaceitem block ~3 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~3 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~3 ~1 ~6 slot.container 3 string 10
replaceitem block ~3 ~1 ~6 slot.container 4 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 5 totem_of_undying 3
replaceitem block ~3 ~1 ~6 slot.container 9 iron_chestplate 1
replaceitem block ~3 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~3 ~1 ~6 slot.container 11 arrow 27
replaceitem block ~3 ~1 ~6 slot.container 12 lantern 8
replaceitem block ~3 ~1 ~6 slot.container 13 dark_oak_log 21
replaceitem block ~3 ~1 ~6 slot.container 14 golden_apple 8
loot insert ~3 ~1 ~6 loot "rsf/roofed_forest"
loot insert ~3 ~1 ~6 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1

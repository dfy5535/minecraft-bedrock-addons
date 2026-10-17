# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0430/4224 | 主题内编号: b046/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·要塞校场比武演武台 (roofed_forest_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 dark_oak_planks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 dark_oak_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cracked_stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~5 slot.container 0 bone 17
replaceitem block ~4 ~-2 ~5 slot.container 1 spider_eye 6
replaceitem block ~4 ~-2 ~5 slot.container 2 gunpowder 9
replaceitem block ~4 ~-2 ~5 slot.container 3 string 12
replaceitem block ~4 ~-2 ~5 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-2 ~5 slot.container 5 totem_of_undying 5
replaceitem block ~4 ~-2 ~5 slot.container 9 diamond 8
replaceitem block ~4 ~-2 ~5 slot.container 10 experience_bottle 4
replaceitem block ~4 ~-2 ~5 slot.container 11 iron_chestplate 1
replaceitem block ~4 ~-2 ~5 slot.container 12 crossbow 1
replaceitem block ~4 ~-2 ~5 slot.container 13 arrow 27
replaceitem block ~4 ~-2 ~5 slot.container 14 lantern 8
loot insert ~4 ~-2 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~-2 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~6 ~7 dark_oak_planks []
fill ~-5 ~1 ~-6 ~5 ~5 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~8 ~-6 cobblestone []
setblock ~-6 ~9 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~8 ~7 cobblestone []
setblock ~-6 ~9 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~8 ~-6 cobblestone []
setblock ~5 ~9 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~8 ~7 cobblestone []
setblock ~5 ~9 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 cobblestone []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 dark_oak_fence []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 dark_oak_log []
setblock ~-6 ~8 ~-7 lantern []
setblock ~-6 ~7 ~7 dark_oak_log []
setblock ~-6 ~8 ~7 lantern []
setblock ~6 ~7 ~-7 dark_oak_log []
setblock ~6 ~8 ~-7 lantern []
setblock ~6 ~7 ~7 dark_oak_log []
setblock ~6 ~8 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 cobblestone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 dark_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 dark_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 dark_oak_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x10x2) ---
fill ~-7 ~0 ~-1 ~-8 ~3 ~1 iron_bars []
fill ~-7 ~4 ~-1 ~-8 ~4 ~1 dark_oak_slab []
setblock ~-8 ~5 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 1 totem_of_undying 8
replaceitem block ~-5 ~1 ~6 slot.container 2 emerald 6
replaceitem block ~-5 ~1 ~6 slot.container 3 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 9 dark_oak_log 19
replaceitem block ~-5 ~1 ~6 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~6 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_ingot 14
replaceitem block ~-5 ~1 ~6 slot.container 13 diamond 2
replaceitem block ~-5 ~1 ~6 slot.container 14 experience_bottle 5
loot insert ~-5 ~1 ~6 loot "rsf/roofed_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 emerald 9
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~6 slot.container 2 bone 15
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 5 string 10
replaceitem block ~5 ~1 ~6 slot.container 9 dark_oak_log 17
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 11 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 12 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 13 diamond 7
replaceitem block ~5 ~1 ~6 slot.container 14 experience_bottle 10
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~6 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0432/4224 | 主题内编号: b048/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·阶梯王座巅峰试炼台 (roofed_forest_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 deepslate_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 polished_deepslate []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 dark_oak_planks []
setblock ~0 ~-5 ~0 red_mushroom_block []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 bone 17
replaceitem block ~0 ~-2 ~-5 slot.container 1 spider_eye 6
replaceitem block ~0 ~-2 ~-5 slot.container 2 gunpowder 9
replaceitem block ~0 ~-2 ~-5 slot.container 3 string 12
replaceitem block ~0 ~-2 ~-5 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-2 ~-5 slot.container 5 totem_of_undying 5
replaceitem block ~0 ~-2 ~-5 slot.container 9 mushroom_stew 1
replaceitem block ~0 ~-2 ~-5 slot.container 10 iron_ingot 10
replaceitem block ~0 ~-2 ~-5 slot.container 11 diamond 5
replaceitem block ~0 ~-2 ~-5 slot.container 12 experience_bottle 8
replaceitem block ~0 ~-2 ~-5 slot.container 13 iron_chestplate 1
replaceitem block ~0 ~-2 ~-5 slot.container 14 crossbow 1
loot insert ~0 ~-2 ~-5 loot "rsf/roofed_forest"
loot insert ~0 ~-2 ~-5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 deepslate_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 dark_oak_planks []
fill ~-4 ~5 ~-5 ~4 ~7 ~5 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 dark_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dark_oak_slab []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-4 ~11 ~-5 ~4 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 chiseled_stone_bricks []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 dark_oak_log []
setblock ~0 ~4 ~-9 red_mushroom_block []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 dark_oak_log []
setblock ~0 ~4 ~9 red_mushroom_block []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 dark_oak_log []
setblock ~-8 ~4 ~0 red_mushroom_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 dark_oak_log []
setblock ~8 ~4 ~0 red_mushroom_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-7 ~0 ~1 ~-8 ~5 ~3 iron_bars []
fill ~-7 ~6 ~1 ~-8 ~6 ~3 dark_oak_slab []
setblock ~-8 ~7 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 emerald 6
replaceitem block ~-5 ~1 ~6 slot.container 1 rotten_flesh 13
replaceitem block ~-5 ~1 ~6 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 15
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_chestplate 1
replaceitem block ~-5 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~-5 ~1 ~6 slot.container 11 arrow 24
replaceitem block ~-5 ~1 ~6 slot.container 12 lantern 5
replaceitem block ~-5 ~1 ~6 slot.container 13 dark_oak_log 18
replaceitem block ~-5 ~1 ~6 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~6 loot "rsf/roofed_forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 15
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 12
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 5 totem_of_undying 3
replaceitem block ~5 ~1 ~6 slot.container 9 iron_chestplate 1
replaceitem block ~5 ~1 ~6 slot.container 10 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 11 arrow 29
replaceitem block ~5 ~1 ~6 slot.container 12 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 13 dark_oak_log 16
replaceitem block ~5 ~1 ~6 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
loot insert ~5 ~1 ~6 loot "chests/woodland_mansion"
summon vindicator ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

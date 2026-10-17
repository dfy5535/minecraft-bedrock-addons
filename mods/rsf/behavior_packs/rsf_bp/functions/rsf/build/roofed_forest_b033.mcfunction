# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0417/4224 | 主题内编号: b033/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·太阳金顶高耸方尖碑 (roofed_forest_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 9x11 | 地上高度 11格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~15 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_oak_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 dark_oak_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 dark_oak_planks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 spider_eye 6
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 9
replaceitem block ~0 ~-3 ~-2 slot.container 2 string 12
replaceitem block ~0 ~-3 ~-2 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 4 totem_of_undying 5
replaceitem block ~0 ~-3 ~-2 slot.container 5 emerald 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 crossbow 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 arrow 25
replaceitem block ~0 ~-3 ~-2 slot.container 11 lantern 6
replaceitem block ~0 ~-3 ~-2 slot.container 12 dark_oak_log 19
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 6
replaceitem block ~0 ~-3 ~-2 slot.container 14 mushroom_stew 1
loot insert ~0 ~-3 ~-2 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~-2 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 cobblestone []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 dark_oak_planks []
fill ~-1 ~5 ~-2 ~1 ~11 ~2 dark_oak_planks []
fill ~-1 ~1 ~-2 ~1 ~10 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 dark_oak_planks []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 cobblestone []
fill ~0 ~17 ~0 ~0 ~17 ~0 red_mushroom_block []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~-4 ~0 ~-2 ~-5 ~5 ~0 iron_bars []
fill ~-4 ~6 ~-2 ~-5 ~6 ~0 dark_oak_slab []
setblock ~-5 ~7 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 red_mushroom_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 1 bone 12
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 string 15
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~2 ~1 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~2 ~1 ~3 slot.container 11 iron_ingot 14
replaceitem block ~2 ~1 ~3 slot.container 12 diamond 2
replaceitem block ~2 ~1 ~3 slot.container 13 experience_bottle 5
replaceitem block ~2 ~1 ~3 slot.container 14 iron_chestplate 1
loot insert ~2 ~1 ~3 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

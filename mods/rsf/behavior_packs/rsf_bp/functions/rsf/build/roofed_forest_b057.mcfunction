# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0441/4224 | 主题内编号: b057/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·中央石棺帝王地下陵寝 (roofed_forest_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cobblestone [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 cobblestone [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 dark_oak_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 dark_oak_planks []
fill ~-4 ~-6 ~-6 ~4 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 dark_oak_planks []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 spider_eye 6
replaceitem block ~0 ~-4 ~-5 slot.container 1 gunpowder 9
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 12
replaceitem block ~0 ~-4 ~-5 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 4 totem_of_undying 5
replaceitem block ~0 ~-4 ~-5 slot.container 5 emerald 11
replaceitem block ~0 ~-4 ~-5 slot.container 9 lantern 7
replaceitem block ~0 ~-4 ~-5 slot.container 10 dark_oak_log 20
replaceitem block ~0 ~-4 ~-5 slot.container 11 golden_apple 7
replaceitem block ~0 ~-4 ~-5 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-4 ~-5 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-4 ~-5 slot.container 14 diamond 3
loot insert ~0 ~-4 ~-5 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~-5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-7 ~5 ~2 ~7 cobblestone []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 dark_oak_planks []
fill ~0 ~1 ~-7 ~0 ~2 ~7 dark_oak_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~-4 ~8 ~5 dark_oak_stairs ["weirdo_direction"=0]
fill ~4 ~8 ~-5 ~4 ~8 ~5 dark_oak_stairs ["weirdo_direction"=1]
fill ~-3 ~8 ~-5 ~3 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 dark_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 dark_oak_planks []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 dark_oak_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 dark_oak_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 dark_oak_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~-6 ~0 ~-4 ~-7 ~4 ~-2 iron_bars []
fill ~-6 ~5 ~-4 ~-7 ~5 ~-2 dark_oak_slab []
setblock ~-7 ~6 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 red_mushroom_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~6 slot.container 1 bone 12
replaceitem block ~4 ~1 ~6 slot.container 2 spider_eye 9
replaceitem block ~4 ~1 ~6 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~6 slot.container 4 string 15
replaceitem block ~4 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 9 iron_ingot 8
replaceitem block ~4 ~1 ~6 slot.container 10 diamond 3
replaceitem block ~4 ~1 ~6 slot.container 11 experience_bottle 6
replaceitem block ~4 ~1 ~6 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~1 ~6 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~6 slot.container 14 arrow 29
loot insert ~4 ~1 ~6 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

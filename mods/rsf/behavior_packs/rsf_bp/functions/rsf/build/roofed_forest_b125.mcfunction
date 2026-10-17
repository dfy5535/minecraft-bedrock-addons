# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0509/4224 | 主题内编号: b125/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·巨型阶梯金字塔神王殿 (roofed_forest_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[gabled_stairs] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 dark_oak_planks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 red_mushroom_block []
setblock ~0 ~-7 ~0 torch []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 string 12
replaceitem block ~4 ~-4 ~0 slot.container 1 ender_pearl 6
replaceitem block ~4 ~-4 ~0 slot.container 2 totem_of_undying 5
replaceitem block ~4 ~-4 ~0 slot.container 3 emerald 11
replaceitem block ~4 ~-4 ~0 slot.container 4 rotten_flesh 18
replaceitem block ~4 ~-4 ~0 slot.container 5 bone 17
replaceitem block ~4 ~-4 ~0 slot.container 9 iron_ingot 11
replaceitem block ~4 ~-4 ~0 slot.container 10 diamond 6
replaceitem block ~4 ~-4 ~0 slot.container 11 experience_bottle 9
replaceitem block ~4 ~-4 ~0 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~-4 ~0 slot.container 13 crossbow 1
replaceitem block ~4 ~-4 ~0 slot.container 14 arrow 25
loot insert ~4 ~-4 ~0 loot "rsf/roofed_forest"
loot insert ~4 ~-4 ~0 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 cobblestone []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 dark_oak_planks []
fill ~-4 ~5 ~-5 ~4 ~9 ~5 dark_oak_planks []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 dark_oak_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 dark_oak_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 dark_oak_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 dark_oak_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 dark_oak_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 dark_oak_log []
setblock ~0 ~4 ~-9 chiseled_stone_bricks []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 dark_oak_log []
setblock ~0 ~4 ~9 chiseled_stone_bricks []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 dark_oak_log []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 dark_oak_log []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-7 ~0 ~1 ~-8 ~7 ~3 iron_bars []
fill ~-7 ~8 ~1 ~-8 ~8 ~3 dark_oak_slab []
setblock ~-8 ~9 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 red_mushroom_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 15
replaceitem block ~5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 2 totem_of_undying 8
replaceitem block ~5 ~1 ~6 slot.container 3 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 5 bone 12
replaceitem block ~5 ~1 ~6 slot.container 9 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 10 arrow 30
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 12 dark_oak_log 17
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 4
replaceitem block ~5 ~1 ~6 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-4 ~0

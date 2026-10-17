# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0460/4224 | 主题内编号: b076/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·阶梯高台图腾战阵 (roofed_forest_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 deepslate_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 emerald_block []

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
fill ~-5 ~1 ~-6 ~5 ~2 ~6 deepslate_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 dark_oak_planks []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 dark_oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 dark_oak_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 deepslate_bricks []
fill ~0 ~14 ~0 ~0 ~14 ~0 emerald_block []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dark_oak_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 dark_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-6 ~0 ~-4 ~-7 ~3 ~-2 iron_bars []
fill ~-6 ~4 ~-4 ~-7 ~4 ~-2 dark_oak_slab []
setblock ~-7 ~5 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 15
replaceitem block ~-4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 3 totem_of_undying 8
replaceitem block ~-4 ~1 ~5 slot.container 4 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 5 rotten_flesh 13
replaceitem block ~-4 ~1 ~5 slot.container 9 dark_oak_log 21
replaceitem block ~-4 ~1 ~5 slot.container 10 golden_apple 8
replaceitem block ~-4 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~1 ~5 slot.container 13 diamond 4
replaceitem block ~-4 ~1 ~5 slot.container 14 experience_bottle 7
loot insert ~-4 ~1 ~5 loot "rsf/roofed_forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 1 totem_of_undying 3
replaceitem block ~4 ~1 ~5 slot.container 2 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~5 slot.container 4 bone 15
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~4 ~1 ~5 slot.container 9 dark_oak_log 19
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~4 ~1 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 14
replaceitem block ~4 ~1 ~5 slot.container 13 diamond 2
replaceitem block ~4 ~1 ~5 slot.container 14 experience_bottle 5
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
loot insert ~4 ~1 ~5 loot "chests/woodland_mansion"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon vindicator ~1 ~1 ~1

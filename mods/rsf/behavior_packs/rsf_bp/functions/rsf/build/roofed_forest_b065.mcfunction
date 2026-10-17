# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0449/4224 | 主题内编号: b065/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·断柱露天古神庙废墟 (roofed_forest_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 cobblestone [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 cobblestone [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 dark_oak_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 cobblestone []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 emerald 11
replaceitem block ~-2 ~-2 ~3 slot.container 1 rotten_flesh 18
replaceitem block ~-2 ~-2 ~3 slot.container 2 bone 17
replaceitem block ~-2 ~-2 ~3 slot.container 3 spider_eye 6
replaceitem block ~-2 ~-2 ~3 slot.container 4 gunpowder 9
replaceitem block ~-2 ~-2 ~3 slot.container 5 string 12
replaceitem block ~-2 ~-2 ~3 slot.container 9 dark_oak_log 19
replaceitem block ~-2 ~-2 ~3 slot.container 10 golden_apple 6
replaceitem block ~-2 ~-2 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~-2 ~-2 ~3 slot.container 12 iron_ingot 14
replaceitem block ~-2 ~-2 ~3 slot.container 13 diamond 2
replaceitem block ~-2 ~-2 ~3 slot.container 14 experience_bottle 5
loot insert ~-2 ~-2 ~3 loot "rsf/roofed_forest"
loot insert ~-2 ~-2 ~3 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 dark_oak_planks []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 dark_oak_log []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 dark_oak_log []
fill ~-3 ~1 ~-7 ~-3 ~5 ~-7 dark_oak_log []
fill ~-3 ~1 ~7 ~-3 ~5 ~7 dark_oak_log []
fill ~-1 ~1 ~-7 ~-1 ~5 ~-7 dark_oak_log []
fill ~-1 ~1 ~7 ~-1 ~5 ~7 dark_oak_log []
fill ~1 ~1 ~-7 ~1 ~5 ~-7 dark_oak_log []
fill ~1 ~1 ~7 ~1 ~5 ~7 dark_oak_log []
fill ~3 ~1 ~-7 ~3 ~5 ~-7 dark_oak_log []
fill ~3 ~1 ~7 ~3 ~5 ~7 dark_oak_log []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 dark_oak_log []
fill ~5 ~1 ~7 ~5 ~5 ~7 dark_oak_log []
fill ~-5 ~1 ~-5 ~-5 ~5 ~-5 dark_oak_log []
fill ~5 ~1 ~-5 ~5 ~5 ~-5 dark_oak_log []
fill ~-5 ~1 ~-3 ~-5 ~5 ~-3 dark_oak_log []
fill ~5 ~1 ~-3 ~5 ~5 ~-3 dark_oak_log []
fill ~-5 ~1 ~-1 ~-5 ~5 ~-1 dark_oak_log []
fill ~5 ~1 ~-1 ~5 ~5 ~-1 dark_oak_log []
fill ~-5 ~1 ~1 ~-5 ~5 ~1 dark_oak_log []
fill ~5 ~1 ~1 ~5 ~5 ~1 dark_oak_log []
fill ~-5 ~1 ~3 ~-5 ~5 ~3 dark_oak_log []
fill ~5 ~1 ~3 ~5 ~5 ~3 dark_oak_log []
fill ~-5 ~1 ~5 ~-5 ~5 ~5 dark_oak_log []
fill ~5 ~1 ~5 ~5 ~5 ~5 dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-7 ~5 ~6 ~7 dark_oak_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-9 ~-7 ~4 ~-9 dark_oak_log []
setblock ~-7 ~5 ~-9 torch []
fill ~-7 ~0 ~9 ~-7 ~4 ~9 dark_oak_log []
setblock ~-7 ~5 ~9 torch []
fill ~7 ~0 ~-9 ~7 ~4 ~-9 dark_oak_log []
setblock ~7 ~5 ~-9 torch []
fill ~7 ~0 ~9 ~7 ~4 ~9 dark_oak_log []
setblock ~7 ~5 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-6 ~0 ~-3 ~-7 ~7 ~-1 iron_bars []
fill ~-6 ~8 ~-3 ~-7 ~8 ~-1 dark_oak_slab []
setblock ~-7 ~9 ~-2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
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
replaceitem block ~4 ~1 ~6 slot.container 9 crossbow 1
replaceitem block ~4 ~1 ~6 slot.container 10 arrow 26
replaceitem block ~4 ~1 ~6 slot.container 11 lantern 7
replaceitem block ~4 ~1 ~6 slot.container 12 dark_oak_log 20
replaceitem block ~4 ~1 ~6 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~6 slot.container 14 mushroom_stew 1
loot insert ~4 ~1 ~6 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~-3 ~0

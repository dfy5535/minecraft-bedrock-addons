# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0473/4224 | 主题内编号: b089/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·四柱挑檐祈愿凉亭 (roofed_forest_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 9x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~11 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_oak_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~7 ~4 cobblestone []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 dark_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 dark_oak_slab []
fill ~-2 ~8 ~-3 ~2 ~9 ~3 dark_oak_planks []
fill ~-3 ~10 ~-4 ~3 ~10 ~4 dark_oak_slab []
setblock ~0 ~11 ~0 red_mushroom_block []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 mossy_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 5x5x5) ---
fill ~-4 ~0 ~-2 ~-5 ~6 ~0 iron_bars []
fill ~-4 ~7 ~-2 ~-5 ~7 ~0 dark_oak_slab []
setblock ~-5 ~8 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
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
replaceitem block ~2 ~1 ~3 slot.container 9 lantern 8
replaceitem block ~2 ~1 ~3 slot.container 10 dark_oak_log 21
replaceitem block ~2 ~1 ~3 slot.container 11 golden_apple 8
replaceitem block ~2 ~1 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~2 ~1 ~3 slot.container 13 iron_ingot 9
replaceitem block ~2 ~1 ~3 slot.container 14 diamond 4
loot insert ~2 ~1 ~3 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~2 ~0

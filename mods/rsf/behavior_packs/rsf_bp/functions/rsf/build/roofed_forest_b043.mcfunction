# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0427/4224 | 主题内编号: b043/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·十字四门试炼擂台 (roofed_forest_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cracked_stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 mossy_stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 dark_oak_planks []
fill ~-6 ~7 ~-7 ~6 ~7 ~7 cobblestone_wall []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 air []
setblock ~-6 ~7 ~-7 stripped_dark_oak_log []
setblock ~-6 ~8 ~-7 soul_lantern []
setblock ~-6 ~7 ~7 stripped_dark_oak_log []
setblock ~-6 ~8 ~7 soul_lantern []
setblock ~6 ~7 ~-7 stripped_dark_oak_log []
setblock ~6 ~8 ~-7 soul_lantern []
setblock ~6 ~7 ~7 stripped_dark_oak_log []
setblock ~6 ~8 ~7 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 cracked_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x10x4) ---
fill ~-7 ~0 ~-4 ~-8 ~5 ~-2 iron_bars []
fill ~-7 ~6 ~-4 ~-8 ~6 ~-2 dark_oak_slab []
setblock ~-8 ~7 ~-3 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 red_mushroom_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 9
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 15
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 4 totem_of_undying 8
replaceitem block ~5 ~1 ~6 slot.container 5 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 9 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 10 mushroom_stew 1
replaceitem block ~5 ~1 ~6 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~6 slot.container 12 diamond 5
replaceitem block ~5 ~1 ~6 slot.container 13 experience_bottle 8
replaceitem block ~5 ~1 ~6 slot.container 14 iron_chestplate 1
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

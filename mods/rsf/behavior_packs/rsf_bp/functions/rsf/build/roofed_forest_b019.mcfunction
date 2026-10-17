# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0403/4224 | 主题内编号: b019/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·琉璃穹顶圣物秘室 (roofed_forest_chamber_domed_reliquary)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cracked_stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 stripped_dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 stripped_dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 stripped_dark_oak_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 stripped_dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 dark_oak_planks []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 glass []
fill ~-2 ~8 ~-3 ~2 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 stripped_dark_oak_log []
setblock ~-6 ~5 ~-7 soul_lantern []
fill ~-6 ~0 ~7 ~-6 ~4 ~7 stripped_dark_oak_log []
setblock ~-6 ~5 ~7 soul_lantern []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 stripped_dark_oak_log []
setblock ~6 ~5 ~-7 soul_lantern []
fill ~6 ~0 ~7 ~6 ~4 ~7 stripped_dark_oak_log []
setblock ~6 ~5 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-5 ~0 ~1 ~-6 ~6 ~3 iron_bars []
fill ~-5 ~7 ~1 ~-6 ~7 ~3 dark_oak_slab []
setblock ~-6 ~8 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 15
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 4 totem_of_undying 8
replaceitem block ~3 ~1 ~4 slot.container 5 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 10 dark_oak_log 21
replaceitem block ~3 ~1 ~4 slot.container 11 golden_apple 8
replaceitem block ~3 ~1 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 14 diamond 4
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

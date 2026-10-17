# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0411/4224 | 主题内编号: b027/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·双子连廊警戒塔楼 (roofed_forest_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cracked_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~10 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~5 ~10 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 dark_oak_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 dark_oak_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 cobblestone_wall []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 air []
setblock ~-5 ~10 ~-4 stripped_dark_oak_log []
setblock ~-5 ~11 ~-4 soul_lantern []
setblock ~-5 ~10 ~4 stripped_dark_oak_log []
setblock ~-5 ~11 ~4 soul_lantern []
setblock ~5 ~10 ~-4 stripped_dark_oak_log []
setblock ~5 ~11 ~-4 soul_lantern []
setblock ~5 ~10 ~4 stripped_dark_oak_log []
setblock ~5 ~11 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 cracked_stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-6 ~0 ~0 ~-7 ~4 ~2 iron_bars []
fill ~-6 ~5 ~0 ~-7 ~5 ~2 dark_oak_slab []
setblock ~-7 ~6 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 red_mushroom_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 15
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 4 totem_of_undying 8
replaceitem block ~4 ~1 ~3 slot.container 5 emerald 6
replaceitem block ~4 ~1 ~3 slot.container 9 iron_ingot 13
replaceitem block ~4 ~1 ~3 slot.container 10 diamond 8
replaceitem block ~4 ~1 ~3 slot.container 11 experience_bottle 4
replaceitem block ~4 ~1 ~3 slot.container 12 iron_chestplate 1
replaceitem block ~4 ~1 ~3 slot.container 13 crossbow 1
replaceitem block ~4 ~1 ~3 slot.container 14 arrow 27
loot insert ~4 ~1 ~3 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

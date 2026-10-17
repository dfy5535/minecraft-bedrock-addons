# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0493/4224 | 主题内编号: b109/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·环柱能量矩阵奥术厅 (roofed_forest_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 dark_oak_planks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 dark_oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 dark_oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 dark_oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 dark_oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 dark_oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 dark_oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 dark_oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 dark_oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 dark_oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 dark_oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 dark_oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 dark_oak_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 dark_oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 dark_oak_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 dark_oak_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 dark_oak_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 dark_oak_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 dark_oak_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 dark_oak_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 dark_oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 dark_oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 dark_oak_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~14 ~0 red_mushroom_block []
setblock ~0 ~15 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 dark_oak_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 torch []
fill ~0 ~0 ~8 ~0 ~3 ~8 dark_oak_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 torch []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 dark_oak_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 torch []
fill ~7 ~0 ~0 ~7 ~3 ~0 dark_oak_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-6 ~0 ~-1 ~-7 ~6 ~1 iron_bars []
fill ~-6 ~7 ~-1 ~-7 ~7 ~1 dark_oak_slab []
setblock ~-7 ~8 ~0 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 red_mushroom_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 15
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 2 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 3 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 10 dark_oak_log 20
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 12 mushroom_stew 1
replaceitem block ~4 ~1 ~5 slot.container 13 iron_ingot 8
replaceitem block ~4 ~1 ~5 slot.container 14 diamond 3
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

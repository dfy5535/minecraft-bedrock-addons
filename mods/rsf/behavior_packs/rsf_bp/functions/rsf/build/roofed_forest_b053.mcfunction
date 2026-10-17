# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0437/4224 | 主题内编号: b053/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·测绘师观景制图站 (roofed_forest_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 dark_oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~7 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 air []
fill ~4 ~1 ~5 ~4 ~8 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~7 ~-4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~7 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~7 ~4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~7 ~4 dark_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 dark_oak_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 mossy_stone_bricks []
fill ~0 ~14 ~0 ~0 ~14 ~0 bookshelf []
setblock ~0 ~15 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 dark_oak_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 dark_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 dark_oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~-5 ~0 ~0 ~-6 ~5 ~2 iron_bars []
fill ~-5 ~6 ~0 ~-6 ~6 ~2 dark_oak_slab []
setblock ~-6 ~7 ~1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~3 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 15
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 2 totem_of_undying 8
replaceitem block ~3 ~1 ~4 slot.container 3 emerald 6
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 5 bone 12
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~3 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 13
replaceitem block ~3 ~1 ~4 slot.container 12 diamond 8
replaceitem block ~3 ~1 ~4 slot.container 13 experience_bottle 4
replaceitem block ~3 ~1 ~4 slot.container 14 iron_chestplate 1
loot insert ~3 ~1 ~4 loot "rsf/roofed_forest"
summon skeleton ~0 ~1 ~-1
summon vindicator ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon witch ~0 ~2 ~0

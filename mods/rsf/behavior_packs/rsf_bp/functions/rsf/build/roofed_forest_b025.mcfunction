# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0409/4224 | 主题内编号: b025/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·雉堞女墙四方哨塔 (roofed_forest_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 dark_oak_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 bookshelf []
setblock ~-3 ~-6 ~-4 soul_lantern []
setblock ~3 ~-6 ~4 soul_lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 spider_eye 6
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 9
replaceitem block ~0 ~-4 ~4 slot.container 2 string 12
replaceitem block ~0 ~-4 ~4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 4 totem_of_undying 5
replaceitem block ~0 ~-4 ~4 slot.container 5 emerald 11
replaceitem block ~0 ~-4 ~4 slot.container 9 crossbow 1
replaceitem block ~0 ~-4 ~4 slot.container 10 arrow 25
replaceitem block ~0 ~-4 ~4 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~4 slot.container 12 dark_oak_log 19
replaceitem block ~0 ~-4 ~4 slot.container 13 golden_apple 6
replaceitem block ~0 ~-4 ~4 slot.container 14 mushroom_stew 1
loot insert ~0 ~-4 ~4 loot "rsf/roofed_forest"
loot insert ~0 ~-4 ~4 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~10 ~-4 dark_oak_log []
fill ~-3 ~1 ~4 ~-3 ~10 ~4 dark_oak_log []
fill ~3 ~1 ~-4 ~3 ~10 ~-4 dark_oak_log []
fill ~3 ~1 ~4 ~3 ~10 ~4 dark_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-3 ~10 ~-4 ~3 ~10 ~4 dark_oak_planks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 cobblestone_wall []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~-3 ~11 ~-4 dark_oak_log []
setblock ~-3 ~12 ~-4 torch []
setblock ~-3 ~11 ~4 dark_oak_log []
setblock ~-3 ~12 ~4 torch []
setblock ~3 ~11 ~-4 dark_oak_log []
setblock ~3 ~12 ~-4 torch []
setblock ~3 ~11 ~4 dark_oak_log []
setblock ~3 ~12 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 dark_oak_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 dark_oak_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 dark_oak_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 dark_oak_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 5x7x6) ---
fill ~-4 ~0 ~-2 ~-5 ~7 ~0 iron_bars []
fill ~-4 ~8 ~-2 ~-5 ~8 ~0 dark_oak_slab []
setblock ~-5 ~9 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~2 ~1 ~3 slot.container 1 bone 12
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~2 ~1 ~3 slot.container 4 string 15
replaceitem block ~2 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~2 ~1 ~3 slot.container 9 crossbow 1
replaceitem block ~2 ~1 ~3 slot.container 10 arrow 28
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 9
replaceitem block ~2 ~1 ~3 slot.container 12 dark_oak_log 22
replaceitem block ~2 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~2 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~2 ~1 ~3 loot "rsf/roofed_forest"
summon pillager ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

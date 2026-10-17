# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0429/4224 | 主题内编号: b045/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·十二柱神殿试炼场 (roofed_forest_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 dark_oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 red_mushroom_block []
setblock ~-4 ~-5 ~-5 torch []
setblock ~4 ~-5 ~5 torch []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 string 12
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 totem_of_undying 5
replaceitem block ~0 ~-3 ~5 slot.container 3 emerald 11
replaceitem block ~0 ~-3 ~5 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~5 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~5 slot.container 9 lantern 10
replaceitem block ~0 ~-3 ~5 slot.container 10 dark_oak_log 16
replaceitem block ~0 ~-3 ~5 slot.container 11 golden_apple 3
replaceitem block ~0 ~-3 ~5 slot.container 12 mushroom_stew 1
replaceitem block ~0 ~-3 ~5 slot.container 13 iron_ingot 11
replaceitem block ~0 ~-3 ~5 slot.container 14 diamond 6
loot insert ~0 ~-3 ~5 loot "rsf/roofed_forest"
loot insert ~0 ~-3 ~5 loot "chests/woodland_mansion"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 dark_oak_planks []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 dark_oak_log []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 dark_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~6 ~-7 dark_oak_log []
fill ~-4 ~1 ~7 ~-4 ~6 ~7 dark_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~6 ~-7 dark_oak_log []
fill ~-2 ~1 ~7 ~-2 ~6 ~7 dark_oak_log []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 dark_oak_log []
fill ~0 ~1 ~7 ~0 ~6 ~7 dark_oak_log []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 dark_oak_log []
fill ~2 ~1 ~7 ~2 ~6 ~7 dark_oak_log []
fill ~4 ~1 ~-7 ~4 ~6 ~-7 dark_oak_log []
fill ~4 ~1 ~7 ~4 ~6 ~7 dark_oak_log []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 dark_oak_log []
fill ~6 ~1 ~7 ~6 ~6 ~7 dark_oak_log []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 dark_oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 dark_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 dark_oak_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 dark_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 dark_oak_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 dark_oak_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 dark_oak_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 dark_oak_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 dark_oak_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 dark_oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 dark_oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 dark_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 dark_oak_log []
setblock ~-6 ~10 ~-7 torch []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 dark_oak_log []
setblock ~-6 ~10 ~7 torch []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 dark_oak_log []
setblock ~6 ~10 ~-7 torch []
fill ~6 ~7 ~7 ~6 ~9 ~7 dark_oak_log []
setblock ~6 ~10 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 dark_oak_planks []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-7 ~0 ~-2 ~-8 ~7 ~0 iron_bars []
fill ~-7 ~8 ~-2 ~-8 ~8 ~0 dark_oak_slab []
setblock ~-8 ~9 ~-1 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 red_mushroom_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 15
replaceitem block ~5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 2 totem_of_undying 8
replaceitem block ~5 ~1 ~6 slot.container 3 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 5 bone 12
replaceitem block ~5 ~1 ~6 slot.container 9 crossbow 1
replaceitem block ~5 ~1 ~6 slot.container 10 arrow 27
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 8
replaceitem block ~5 ~1 ~6 slot.container 12 dark_oak_log 21
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 8
replaceitem block ~5 ~1 ~6 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~6 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

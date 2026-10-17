# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0405/4224 | 主题内编号: b021/128
# 地形主题 #04: 黑森林与幽暗密林 (roofed_forest) —— 带深色橡木重檐与奼魔囚笼
# 建筑名称: 黑森林暗影系·U型合院天井秘宝房 (roofed_forest_chamber_courtyard_villa)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: roofed_forest, roofed_forest_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 dark_oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 red_mushroom_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 dark_oak_planks []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 dark_oak_slab []
fill ~-4 ~7 ~-5 ~4 ~8 ~5 dark_oak_planks []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 dark_oak_slab []
setblock ~0 ~10 ~0 red_mushroom_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 cracked_stone_bricks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (roofed_forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-6 ~0 ~1 ~-7 ~3 ~3 iron_bars []
fill ~-6 ~4 ~1 ~-7 ~4 ~3 dark_oak_slab []
setblock ~-7 ~5 ~2 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 15
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 2 totem_of_undying 8
replaceitem block ~4 ~1 ~5 slot.container 3 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 12
replaceitem block ~4 ~1 ~5 slot.container 9 experience_bottle 10
replaceitem block ~4 ~1 ~5 slot.container 10 iron_chestplate 1
replaceitem block ~4 ~1 ~5 slot.container 11 crossbow 1
replaceitem block ~4 ~1 ~5 slot.container 12 arrow 26
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 14 dark_oak_log 20
loot insert ~4 ~1 ~5 loot "rsf/roofed_forest"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

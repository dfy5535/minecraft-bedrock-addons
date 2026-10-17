# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0199/4224 | 主题内编号: b071/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·残破双子哨所遗迹 (forest_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~12 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 oak_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~9 ~5 cobblestone []
fill ~2 ~1 ~-5 ~5 ~9 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~4 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mossy_stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-5 ~5 ~8 ~5 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 mossy_cobblestone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~-7 ~-8 ~7 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~7 ~-7 oak_log []
fill ~-8 ~7 ~-7 ~8 ~7 ~-7 moss_block []
setblock ~0 ~8 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~4 slot.container 2 bone 11
replaceitem block ~4 ~1 ~4 slot.container 3 string 12
replaceitem block ~4 ~1 ~4 slot.container 4 spider_eye 8
replaceitem block ~4 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~4 slot.container 9 iron_axe 1
replaceitem block ~4 ~1 ~4 slot.container 10 bow 1
replaceitem block ~4 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~4 ~1 ~4 slot.container 12 honey_bottle 10
replaceitem block ~4 ~1 ~4 slot.container 13 sweet_berries 10
replaceitem block ~4 ~1 ~4 slot.container 14 cooked_porkchop 7
loot insert ~4 ~1 ~4 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

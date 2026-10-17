# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0169/4224 | 主题内编号: b041/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·八角看台古罗马斗技场 (forest_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 oak_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 oak_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 honeycomb_block []
setblock ~-4 ~-5 ~-5 torch []
setblock ~4 ~-5 ~5 torch []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 1 string 17
replaceitem block ~0 ~-3 ~5 slot.container 2 spider_eye 5
replaceitem block ~0 ~-3 ~5 slot.container 3 gunpowder 7
replaceitem block ~0 ~-3 ~5 slot.container 4 arrow 18
replaceitem block ~0 ~-3 ~5 slot.container 5 slime_ball 7
replaceitem block ~0 ~-3 ~5 slot.container 9 lantern 9
replaceitem block ~0 ~-3 ~5 slot.container 10 honey_bottle 10
replaceitem block ~0 ~-3 ~5 slot.container 11 sweet_berries 10
replaceitem block ~0 ~-3 ~5 slot.container 12 cooked_porkchop 7
replaceitem block ~0 ~-3 ~5 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-3 ~5 slot.container 14 oak_log 19
loot insert ~0 ~-3 ~5 loot "rsf/forest"
loot insert ~0 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 oak_planks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 air []
fill ~6 ~1 ~7 ~6 ~8 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 stripped_oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 stripped_oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 stripped_oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 stripped_oak_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-7 ~-6 ~9 ~-7 stripped_oak_log []
setblock ~-6 ~10 ~-7 torch []
fill ~-6 ~7 ~7 ~-6 ~9 ~7 stripped_oak_log []
setblock ~-6 ~10 ~7 torch []
fill ~6 ~7 ~-7 ~6 ~9 ~-7 stripped_oak_log []
setblock ~6 ~10 ~-7 torch []
fill ~6 ~7 ~7 ~6 ~9 ~7 stripped_oak_log []
setblock ~6 ~10 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 stripped_oak_log []
setblock ~-8 ~6 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 stripped_oak_log []
setblock ~-8 ~6 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 stripped_oak_log []
setblock ~8 ~6 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~5 ~9 stripped_oak_log []
setblock ~8 ~6 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x9x5) ---
fill ~-9 ~0 ~-9 ~-9 ~7 ~-9 stripped_oak_log []
fill ~9 ~0 ~-9 ~9 ~7 ~-9 stripped_oak_log []
fill ~-9 ~7 ~-9 ~9 ~7 ~-9 moss_block []
setblock ~2 ~8 ~-9 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 string 12
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 8
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 5 slime_ball 10
replaceitem block ~5 ~1 ~6 slot.container 9 iron_axe 1
replaceitem block ~5 ~1 ~6 slot.container 10 bow 1
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 7
replaceitem block ~5 ~1 ~6 slot.container 12 honey_bottle 8
replaceitem block ~5 ~1 ~6 slot.container 13 sweet_berries 15
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_porkchop 12
loot insert ~5 ~1 ~6 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

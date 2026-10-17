# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0173/4224 | 主题内编号: b045/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·十二柱神殿试炼场 (forest_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
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
replaceitem block ~0 ~-3 ~5 slot.container 0 arrow 18
replaceitem block ~0 ~-3 ~5 slot.container 1 slime_ball 7
replaceitem block ~0 ~-3 ~5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~0 ~-3 ~5 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 5 string 17
replaceitem block ~0 ~-3 ~5 slot.container 9 sweet_berries 12
replaceitem block ~0 ~-3 ~5 slot.container 10 cooked_porkchop 9
replaceitem block ~0 ~-3 ~5 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-3 ~5 slot.container 12 oak_log 21
replaceitem block ~0 ~-3 ~5 slot.container 13 emerald 9
replaceitem block ~0 ~-3 ~5 slot.container 14 golden_apple 1
loot insert ~0 ~-3 ~5 loot "rsf/forest"
loot insert ~0 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 mossy_cobblestone []
fill ~-6 ~1 ~-7 ~-6 ~7 ~-7 stripped_oak_log []
fill ~-6 ~1 ~7 ~-6 ~7 ~7 stripped_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~7 ~-7 stripped_oak_log []
fill ~-4 ~1 ~7 ~-4 ~7 ~7 stripped_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 stripped_oak_log []
fill ~-2 ~1 ~7 ~-2 ~7 ~7 stripped_oak_log []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 stripped_oak_log []
fill ~0 ~1 ~7 ~0 ~7 ~7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~7 ~-7 stripped_oak_log []
fill ~2 ~1 ~7 ~2 ~7 ~7 stripped_oak_log []
fill ~4 ~1 ~-7 ~4 ~7 ~-7 stripped_oak_log []
fill ~4 ~1 ~7 ~4 ~7 ~7 stripped_oak_log []
fill ~6 ~1 ~-7 ~6 ~7 ~-7 stripped_oak_log []
fill ~6 ~1 ~7 ~6 ~7 ~7 stripped_oak_log []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 stripped_oak_log []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 stripped_oak_log []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 stripped_oak_log []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 stripped_oak_log []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 stripped_oak_log []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 stripped_oak_log []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 stripped_oak_log []
fill ~6 ~1 ~1 ~6 ~7 ~1 stripped_oak_log []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 stripped_oak_log []
fill ~6 ~1 ~3 ~6 ~7 ~3 stripped_oak_log []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 stripped_oak_log []
fill ~6 ~1 ~5 ~6 ~7 ~5 stripped_oak_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 stripped_oak_log []
setblock ~-6 ~11 ~-7 torch []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 stripped_oak_log []
setblock ~-6 ~11 ~7 torch []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 stripped_oak_log []
setblock ~6 ~11 ~-7 torch []
fill ~6 ~8 ~7 ~6 ~10 ~7 stripped_oak_log []
setblock ~6 ~11 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 stripped_oak_log []
setblock ~0 ~4 ~-9 bookshelf []
setblock ~0 ~5 ~-9 torch []
fill ~0 ~0 ~9 ~0 ~3 ~9 stripped_oak_log []
setblock ~0 ~4 ~9 bookshelf []
setblock ~0 ~5 ~9 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 stripped_oak_log []
setblock ~-8 ~4 ~0 bookshelf []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 stripped_oak_log []
setblock ~8 ~4 ~0 bookshelf []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x10x4) ---
fill ~-9 ~0 ~-10 ~-9 ~6 ~-10 stripped_oak_log []
fill ~9 ~0 ~-10 ~9 ~6 ~-10 stripped_oak_log []
fill ~-9 ~6 ~-10 ~9 ~6 ~-10 moss_block []
setblock ~0 ~7 ~-10 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 slime_ball 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 10
replaceitem block ~5 ~1 ~6 slot.container 4 bone 11
replaceitem block ~5 ~1 ~6 slot.container 5 string 12
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 9
replaceitem block ~5 ~1 ~6 slot.container 10 honey_bottle 10
replaceitem block ~5 ~1 ~6 slot.container 11 sweet_berries 10
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_porkchop 7
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 8
replaceitem block ~5 ~1 ~6 slot.container 14 oak_log 19
loot insert ~5 ~1 ~6 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0

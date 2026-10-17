# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0129/4224 | 主题内编号: b001/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·三层阶梯圣火祭坛 (forest_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 arrow 18
replaceitem block ~2 ~-3 ~3 slot.container 1 slime_ball 7
replaceitem block ~2 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~2 ~-3 ~3 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~3 slot.container 5 string 17
replaceitem block ~2 ~-3 ~3 slot.container 9 sweet_berries 16
replaceitem block ~2 ~-3 ~3 slot.container 10 cooked_porkchop 6
replaceitem block ~2 ~-3 ~3 slot.container 11 iron_ingot 7
replaceitem block ~2 ~-3 ~3 slot.container 12 oak_log 18
replaceitem block ~2 ~-3 ~3 slot.container 13 emerald 6
replaceitem block ~2 ~-3 ~3 slot.container 14 golden_apple 5
loot insert ~2 ~-3 ~3 loot "rsf/forest"
loot insert ~2 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 oak_planks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 mossy_cobblestone []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~7 ~-5 ~-4 ~9 ~-5 stripped_oak_log []
setblock ~-4 ~10 ~-5 torch []
fill ~-4 ~7 ~5 ~-4 ~9 ~5 stripped_oak_log []
setblock ~-4 ~10 ~5 torch []
fill ~4 ~7 ~-5 ~4 ~9 ~-5 stripped_oak_log []
setblock ~4 ~10 ~-5 torch []
fill ~4 ~7 ~5 ~4 ~9 ~5 stripped_oak_log []
setblock ~4 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~-6 ~-7 ~7 ~-6 stripped_oak_log []
fill ~7 ~0 ~-6 ~7 ~7 ~-6 stripped_oak_log []
fill ~-7 ~7 ~-6 ~7 ~7 ~-6 moss_block []
setblock ~1 ~8 ~-6 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 11
replaceitem block ~3 ~1 ~4 slot.container 1 string 12
replaceitem block ~3 ~1 ~4 slot.container 2 spider_eye 8
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 5 slime_ball 10
replaceitem block ~3 ~1 ~4 slot.container 9 iron_axe 1
replaceitem block ~3 ~1 ~4 slot.container 10 bow 1
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 12 honey_bottle 10
replaceitem block ~3 ~1 ~4 slot.container 13 sweet_berries 10
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_porkchop 7
loot insert ~3 ~1 ~4 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

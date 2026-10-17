# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0151/4224 | 主题内编号: b023/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双层露台阁楼宝室 (forest_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~13 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~13 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~13 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~13 ~8 air [] replace log2
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 cobblestone [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 cobblestone [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 oak_planks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~4 ~6 cobblestone []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-5 ~4 ~-7 ~5 ~4 ~7 stone_brick_slab []
fill ~-3 ~5 ~-5 ~3 ~9 ~5 mossy_stone_bricks []
fill ~-2 ~5 ~-4 ~2 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~9 ~-7 ~5 ~9 ~7 stone_brick_slab []
fill ~-3 ~10 ~-5 ~3 ~11 ~5 mossy_stone_bricks []
fill ~-4 ~12 ~-6 ~4 ~12 ~6 stone_brick_slab []
setblock ~0 ~13 ~0 emerald_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~11 ~2 mossy_stone_bricks []
fill ~5 ~1 ~-1 ~6 ~10 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~12 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~-8 ~-7 ~4 ~-8 oak_log []
fill ~7 ~0 ~-8 ~7 ~4 ~-8 oak_log []
fill ~-7 ~4 ~-8 ~7 ~4 ~-8 moss_block []
setblock ~-1 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 10
replaceitem block ~3 ~1 ~5 slot.container 2 bone 11
replaceitem block ~3 ~1 ~5 slot.container 3 string 12
replaceitem block ~3 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~3 ~1 ~5 slot.container 10 oak_log 21
replaceitem block ~3 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~3 ~1 ~5 slot.container 12 golden_apple 1
replaceitem block ~3 ~1 ~5 slot.container 13 iron_axe 1
replaceitem block ~3 ~1 ~5 slot.container 14 bow 1
loot insert ~3 ~1 ~5 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

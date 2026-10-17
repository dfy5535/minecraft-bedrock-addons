# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0242/4224 | 主题内编号: b114/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双联拱顶植物培育馆 (forest_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 moss_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 moss_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 moss_block []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 oak_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 spruce_log []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 spruce_log []
fill ~-9 ~5 ~-8 ~9 ~5 ~-8 moss_block []
setblock ~-3 ~6 ~-8 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 12
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 10
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_axe 1
replaceitem block ~-5 ~1 ~4 slot.container 11 bow 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 4
replaceitem block ~-5 ~1 ~4 slot.container 13 honey_bottle 5
replaceitem block ~-5 ~1 ~4 slot.container 14 sweet_berries 12
loot insert ~-5 ~1 ~4 loot "rsf/forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 16
replaceitem block ~5 ~1 ~4 slot.container 2 slime_ball 5
replaceitem block ~5 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~4 slot.container 5 bone 14
replaceitem block ~5 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 10 iron_axe 1
replaceitem block ~5 ~1 ~4 slot.container 11 bow 1
replaceitem block ~5 ~1 ~4 slot.container 12 lantern 9
replaceitem block ~5 ~1 ~4 slot.container 13 honey_bottle 10
replaceitem block ~5 ~1 ~4 slot.container 14 sweet_berries 10
loot insert ~5 ~1 ~4 loot "rsf/forest"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~2 ~0

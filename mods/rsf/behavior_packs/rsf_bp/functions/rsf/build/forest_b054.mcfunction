# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0182/4224 | 主题内编号: b054/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·切石与伐木工匠棚屋 (forest_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 moss_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~5 ~8 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 moss_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 spruce_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 spruce_log []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 spruce_log []
fill ~-8 ~5 ~-8 ~8 ~5 ~-8 moss_block []
setblock ~-2 ~6 ~-8 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 slime_ball 10
replaceitem block ~-4 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 4 string 12
replaceitem block ~-4 ~1 ~4 slot.container 5 spider_eye 8
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_apple 1
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_axe 1
replaceitem block ~-4 ~1 ~4 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 13 honey_bottle 8
replaceitem block ~-4 ~1 ~4 slot.container 14 sweet_berries 15
loot insert ~-4 ~1 ~4 loot "rsf/forest"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~4 slot.container 1 bone 14
replaceitem block ~4 ~1 ~4 slot.container 2 string 15
replaceitem block ~4 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 5 arrow 16
replaceitem block ~4 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~4 slot.container 10 iron_axe 1
replaceitem block ~4 ~1 ~4 slot.container 11 bow 1
replaceitem block ~4 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~4 ~1 ~4 slot.container 13 honey_bottle 6
replaceitem block ~4 ~1 ~4 slot.container 14 sweet_berries 13
loot insert ~4 ~1 ~4 loot "rsf/forest"
loot insert ~4 ~1 ~4 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~2 ~0

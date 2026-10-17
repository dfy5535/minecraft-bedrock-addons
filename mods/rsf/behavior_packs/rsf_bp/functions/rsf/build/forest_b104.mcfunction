# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0232/4224 | 主题内编号: b104/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双层指挥台卫戍堡 (forest_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-6 ~5 ~4 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-6 ~4 ~-7 ~6 ~4 ~7 stone_brick_slab []
fill ~-4 ~5 ~-5 ~4 ~9 ~5 oak_planks []
fill ~-3 ~5 ~-4 ~3 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 stone_bricks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 cobblestone_wall []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 air []
setblock ~-5 ~10 ~-6 oak_log []
setblock ~-5 ~11 ~-6 lantern []
setblock ~-5 ~10 ~6 oak_log []
setblock ~-5 ~11 ~6 lantern []
setblock ~5 ~10 ~-6 oak_log []
setblock ~5 ~11 ~-6 lantern []
setblock ~5 ~10 ~6 oak_log []
setblock ~5 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-8 ~7 ~2 ~8 cobblestone_wall []
fill ~-6 ~1 ~-7 ~6 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-8 ~-8 ~5 ~-8 oak_log []
fill ~8 ~0 ~-8 ~8 ~5 ~-8 oak_log []
fill ~-8 ~5 ~-8 ~8 ~5 ~-8 moss_block []
setblock ~-2 ~6 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 2 string 12
replaceitem block ~-4 ~1 ~5 slot.container 3 spider_eye 8
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 9 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_axe 1
replaceitem block ~-4 ~1 ~5 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 8
replaceitem block ~-4 ~1 ~5 slot.container 13 honey_bottle 9
replaceitem block ~-4 ~1 ~5 slot.container 14 sweet_berries 16
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 string 15
replaceitem block ~4 ~1 ~5 slot.container 1 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 16
replaceitem block ~4 ~1 ~5 slot.container 4 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 10 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 11 bow 1
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 13 honey_bottle 7
replaceitem block ~4 ~1 ~5 slot.container 14 sweet_berries 14
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

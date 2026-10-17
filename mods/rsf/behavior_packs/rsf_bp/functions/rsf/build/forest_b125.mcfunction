# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0253/4224 | 主题内编号: b125/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·巨型阶梯金字塔神王殿 (forest_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 10格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~14 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 oak_planks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 oak_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 honeycomb_block []
setblock ~0 ~-7 ~0 torch []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 arrow 18
replaceitem block ~4 ~-4 ~0 slot.container 1 slime_ball 7
replaceitem block ~4 ~-4 ~0 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~0 slot.container 3 rotten_flesh 15
replaceitem block ~4 ~-4 ~0 slot.container 4 bone 16
replaceitem block ~4 ~-4 ~0 slot.container 5 string 17
replaceitem block ~4 ~-4 ~0 slot.container 9 emerald 9
replaceitem block ~4 ~-4 ~0 slot.container 10 golden_apple 1
replaceitem block ~4 ~-4 ~0 slot.container 11 iron_axe 1
replaceitem block ~4 ~-4 ~0 slot.container 12 bow 1
replaceitem block ~4 ~-4 ~0 slot.container 13 lantern 7
replaceitem block ~4 ~-4 ~0 slot.container 14 honey_bottle 8
loot insert ~4 ~-4 ~0 loot "rsf/forest"
loot insert ~4 ~-4 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 oak_planks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mossy_cobblestone []
fill ~-4 ~5 ~-5 ~4 ~10 ~5 stone_bricks []
fill ~-4 ~1 ~-5 ~4 ~9 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~11 ~-7 ~6 ~11 ~7 mossy_cobblestone []
fill ~-5 ~12 ~-6 ~5 ~12 ~6 stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~13 ~1 honeycomb_block []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~0 ~-9 ~-9 ~6 ~-9 stripped_oak_log []
fill ~9 ~0 ~-9 ~9 ~6 ~-9 stripped_oak_log []
fill ~-9 ~6 ~-9 ~9 ~6 ~-9 moss_block []
setblock ~2 ~7 ~-9 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 torch []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 1 slime_ball 10
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 rotten_flesh 10
replaceitem block ~5 ~1 ~6 slot.container 4 bone 11
replaceitem block ~5 ~1 ~6 slot.container 5 string 12
replaceitem block ~5 ~1 ~6 slot.container 9 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 10 honey_bottle 6
replaceitem block ~5 ~1 ~6 slot.container 11 sweet_berries 13
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_porkchop 10
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 14 oak_log 22
loot insert ~5 ~1 ~6 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

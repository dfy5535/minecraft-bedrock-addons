# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0157/4224 | 主题内编号: b029/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·奥术星象琉璃塔 (forest_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 11格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~15 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 honeycomb_block []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 arrow 18
replaceitem block ~2 ~-3 ~0 slot.container 1 slime_ball 7
replaceitem block ~2 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~0 slot.container 3 rotten_flesh 15
replaceitem block ~2 ~-3 ~0 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~0 slot.container 5 string 17
replaceitem block ~2 ~-3 ~0 slot.container 9 iron_axe 1
replaceitem block ~2 ~-3 ~0 slot.container 10 bow 1
replaceitem block ~2 ~-3 ~0 slot.container 11 lantern 7
replaceitem block ~2 ~-3 ~0 slot.container 12 honey_bottle 8
replaceitem block ~2 ~-3 ~0 slot.container 13 sweet_berries 15
replaceitem block ~2 ~-3 ~0 slot.container 14 cooked_porkchop 12
loot insert ~2 ~-3 ~0 loot "rsf/forest"
loot insert ~2 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~11 ~5 oak_planks []
fill ~-3 ~1 ~-4 ~3 ~10 ~4 air []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 spruce_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~11 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~11 ~-5 ~4 ~11 ~5 mossy_cobblestone []
fill ~-3 ~12 ~-4 ~3 ~13 ~4 glass []
fill ~-2 ~12 ~-3 ~2 ~12 ~3 air []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 stripped_oak_log []
setblock ~0 ~4 ~-7 bookshelf []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 stripped_oak_log []
setblock ~0 ~4 ~7 bookshelf []
setblock ~0 ~5 ~7 torch []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 stripped_oak_log []
setblock ~-6 ~4 ~0 bookshelf []
setblock ~-6 ~5 ~0 torch []
fill ~6 ~0 ~0 ~6 ~3 ~0 stripped_oak_log []
setblock ~6 ~4 ~0 bookshelf []
setblock ~6 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~-7 ~-7 ~5 ~-7 stripped_oak_log []
fill ~7 ~0 ~-7 ~7 ~5 ~-7 stripped_oak_log []
fill ~-7 ~5 ~-7 ~7 ~5 ~-7 moss_block []
setblock ~1 ~6 ~-7 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 1 slime_ball 10
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 rotten_flesh 10
replaceitem block ~3 ~1 ~4 slot.container 4 bone 11
replaceitem block ~3 ~1 ~4 slot.container 5 string 12
replaceitem block ~3 ~1 ~4 slot.container 9 sweet_berries 13
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_porkchop 10
replaceitem block ~3 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 12 oak_log 22
replaceitem block ~3 ~1 ~4 slot.container 13 emerald 3
replaceitem block ~3 ~1 ~4 slot.container 14 golden_apple 2
loot insert ~3 ~1 ~4 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

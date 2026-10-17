# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0213/4224 | 主题内编号: b085/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双子烟囱砖石窑厂 (forest_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~13 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 oak_planks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 oak_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 oak_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 bone 16
replaceitem block ~3 ~-3 ~3 slot.container 1 string 17
replaceitem block ~3 ~-3 ~3 slot.container 2 spider_eye 5
replaceitem block ~3 ~-3 ~3 slot.container 3 gunpowder 7
replaceitem block ~3 ~-3 ~3 slot.container 4 arrow 18
replaceitem block ~3 ~-3 ~3 slot.container 5 slime_ball 7
replaceitem block ~3 ~-3 ~3 slot.container 9 emerald 5
replaceitem block ~3 ~-3 ~3 slot.container 10 golden_apple 4
replaceitem block ~3 ~-3 ~3 slot.container 11 iron_axe 1
replaceitem block ~3 ~-3 ~3 slot.container 12 bow 1
replaceitem block ~3 ~-3 ~3 slot.container 13 lantern 10
replaceitem block ~3 ~-3 ~3 slot.container 14 honey_bottle 4
loot insert ~3 ~-3 ~3 loot "rsf/forest"
loot insert ~3 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~10 ~5 oak_planks []
fill ~2 ~1 ~-5 ~5 ~10 ~5 oak_planks []
fill ~-4 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~4 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 mossy_cobblestone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 oak_planks []
fill ~0 ~15 ~0 ~0 ~17 ~0 honeycomb_block []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_cobblestone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 oak_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-6 ~-8 ~6 ~-6 stripped_oak_log []
fill ~8 ~0 ~-6 ~8 ~6 ~-6 stripped_oak_log []
fill ~-8 ~6 ~-6 ~8 ~6 ~-6 moss_block []
setblock ~-1 ~7 ~-6 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~4 slot.container 1 slime_ball 10
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 10
replaceitem block ~4 ~1 ~4 slot.container 4 bone 11
replaceitem block ~4 ~1 ~4 slot.container 5 string 12
replaceitem block ~4 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~4 ~1 ~4 slot.container 10 honey_bottle 8
replaceitem block ~4 ~1 ~4 slot.container 11 sweet_berries 15
replaceitem block ~4 ~1 ~4 slot.container 12 cooked_porkchop 12
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 6
replaceitem block ~4 ~1 ~4 slot.container 14 oak_log 17
loot insert ~4 ~1 ~4 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0141/4224 | 主题内编号: b013/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·地底熔炉苦工地牢 (forest_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x17 | 地上高度 7格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~11 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 oak_planks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 oak_planks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 oak_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 oak_planks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 bone 16
replaceitem block ~3 ~-4 ~5 slot.container 1 string 17
replaceitem block ~3 ~-4 ~5 slot.container 2 spider_eye 5
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 7
replaceitem block ~3 ~-4 ~5 slot.container 4 arrow 18
replaceitem block ~3 ~-4 ~5 slot.container 5 slime_ball 7
replaceitem block ~3 ~-4 ~5 slot.container 9 lantern 4
replaceitem block ~3 ~-4 ~5 slot.container 10 honey_bottle 5
replaceitem block ~3 ~-4 ~5 slot.container 11 sweet_berries 12
replaceitem block ~3 ~-4 ~5 slot.container 12 cooked_porkchop 9
replaceitem block ~3 ~-4 ~5 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-4 ~5 slot.container 14 oak_log 21
loot insert ~3 ~-4 ~5 loot "rsf/forest"
loot insert ~3 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~7 ~7 oak_planks []
fill ~-4 ~1 ~-6 ~4 ~6 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~7 ~-7 stripped_oak_log []
fill ~-5 ~1 ~7 ~-5 ~7 ~7 stripped_oak_log []
fill ~5 ~1 ~-7 ~5 ~7 ~-7 stripped_oak_log []
fill ~5 ~1 ~7 ~5 ~7 ~7 stripped_oak_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 oak_fence []
setblock ~5 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 mossy_cobblestone []
fill ~-5 ~8 ~-7 ~5 ~8 ~7 oak_fence []
fill ~-4 ~8 ~-6 ~4 ~8 ~6 air []
setblock ~-5 ~8 ~-7 stripped_oak_log []
setblock ~-5 ~9 ~-7 torch []
setblock ~-5 ~8 ~7 stripped_oak_log []
setblock ~-5 ~9 ~7 torch []
setblock ~5 ~8 ~-7 stripped_oak_log []
setblock ~5 ~9 ~-7 torch []
setblock ~5 ~8 ~7 stripped_oak_log []
setblock ~5 ~9 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 stripped_oak_log []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 stripped_oak_log []
fill ~-8 ~4 ~-8 ~8 ~4 ~-8 moss_block []
setblock ~2 ~5 ~-8 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~6 slot.container 1 slime_ball 10
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 3 rotten_flesh 10
replaceitem block ~4 ~1 ~6 slot.container 4 bone 11
replaceitem block ~4 ~1 ~6 slot.container 5 string 12
replaceitem block ~4 ~1 ~6 slot.container 9 iron_ingot 7
replaceitem block ~4 ~1 ~6 slot.container 10 oak_log 18
replaceitem block ~4 ~1 ~6 slot.container 11 emerald 6
replaceitem block ~4 ~1 ~6 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~6 slot.container 13 iron_axe 1
replaceitem block ~4 ~1 ~6 slot.container 14 bow 1
loot insert ~4 ~1 ~6 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

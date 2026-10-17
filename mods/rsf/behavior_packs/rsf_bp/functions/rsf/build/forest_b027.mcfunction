# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0155/4224 | 主题内编号: b027/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双子连廊警戒塔楼 (forest_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_cobblestone []
setblock ~0 ~-7 ~0 bookshelf []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-4 ~-3 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~-3 slot.container 3 string 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 spider_eye 5
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 7
replaceitem block ~0 ~-4 ~-3 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 10 oak_log 20
replaceitem block ~0 ~-4 ~-3 slot.container 11 emerald 8
replaceitem block ~0 ~-4 ~-3 slot.container 12 golden_apple 7
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_axe 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 bow 1
loot insert ~0 ~-4 ~-3 loot "rsf/forest"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~11 ~4 cobblestone []
fill ~2 ~1 ~-4 ~5 ~11 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~-3 ~10 ~3 air []
fill ~3 ~1 ~-3 ~4 ~10 ~3 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 mossy_stone_bricks []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 mossy_stone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 cobblestone_wall []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 air []
setblock ~-5 ~11 ~-4 oak_log []
setblock ~-5 ~12 ~-4 lantern []
setblock ~-5 ~11 ~4 oak_log []
setblock ~-5 ~12 ~4 lantern []
setblock ~5 ~11 ~-4 oak_log []
setblock ~5 ~12 ~-4 lantern []
setblock ~5 ~11 ~4 oak_log []
setblock ~5 ~12 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mossy_stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~8 ~-7 oak_log []
fill ~-8 ~8 ~-7 ~8 ~8 ~-7 moss_block []
setblock ~1 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 8
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~3 slot.container 3 slime_ball 10
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 10
replaceitem block ~4 ~1 ~3 slot.container 9 emerald 4
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~3 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~3 slot.container 12 bow 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~3 slot.container 14 honey_bottle 10
loot insert ~4 ~1 ~3 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0

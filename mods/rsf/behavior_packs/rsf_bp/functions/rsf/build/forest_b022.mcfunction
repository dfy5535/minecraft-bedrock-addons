# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0150/4224 | 主题内编号: b022/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·廊柱书库秘藏室 (forest_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 string 17
replaceitem block ~3 ~-2 ~4 slot.container 1 spider_eye 5
replaceitem block ~3 ~-2 ~4 slot.container 2 gunpowder 7
replaceitem block ~3 ~-2 ~4 slot.container 3 arrow 18
replaceitem block ~3 ~-2 ~4 slot.container 4 slime_ball 7
replaceitem block ~3 ~-2 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 9 oak_log 22
replaceitem block ~3 ~-2 ~4 slot.container 10 emerald 3
replaceitem block ~3 ~-2 ~4 slot.container 11 golden_apple 2
replaceitem block ~3 ~-2 ~4 slot.container 12 iron_axe 1
replaceitem block ~3 ~-2 ~4 slot.container 13 bow 1
replaceitem block ~3 ~-2 ~4 slot.container 14 lantern 8
loot insert ~3 ~-2 ~4 loot "rsf/forest"
loot insert ~3 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 moss_block []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 moss_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 bookshelf []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 spruce_log []
fill ~8 ~0 ~-7 ~8 ~8 ~-7 spruce_log []
fill ~-8 ~8 ~-7 ~8 ~8 ~-7 moss_block []
setblock ~1 ~9 ~-7 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 12
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 8
replaceitem block ~-4 ~1 ~5 slot.container 9 honey_bottle 7
replaceitem block ~-4 ~1 ~5 slot.container 10 sweet_berries 14
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_porkchop 11
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 13 oak_log 16
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 4
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 15
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 16
replaceitem block ~4 ~1 ~5 slot.container 9 honey_bottle 5
replaceitem block ~4 ~1 ~5 slot.container 10 sweet_berries 12
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_porkchop 9
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 13 oak_log 21
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 9
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0222/4224 | 主题内编号: b094/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·圆形圣泉祈祷亭 (forest_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 moss_block []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-2 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~-2 ~-2 ~3 slot.container 1 bone 16
replaceitem block ~-2 ~-2 ~3 slot.container 2 string 17
replaceitem block ~-2 ~-2 ~3 slot.container 3 spider_eye 5
replaceitem block ~-2 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~-2 ~-2 ~3 slot.container 5 arrow 18
replaceitem block ~-2 ~-2 ~3 slot.container 9 cooked_porkchop 12
replaceitem block ~-2 ~-2 ~3 slot.container 10 iron_ingot 6
replaceitem block ~-2 ~-2 ~3 slot.container 11 oak_log 17
replaceitem block ~-2 ~-2 ~3 slot.container 12 emerald 5
replaceitem block ~-2 ~-2 ~3 slot.container 13 golden_apple 4
replaceitem block ~-2 ~-2 ~3 slot.container 14 iron_axe 1
loot insert ~-2 ~-2 ~3 loot "rsf/forest"
loot insert ~-2 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 moss_block []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~7 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~7 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~7 ~5 spruce_log []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 spruce_log []
fill ~-4 ~1 ~-1 ~-4 ~7 ~-1 spruce_log []
fill ~4 ~1 ~-1 ~4 ~7 ~-1 spruce_log []
fill ~-4 ~1 ~1 ~-4 ~7 ~1 spruce_log []
fill ~4 ~1 ~1 ~4 ~7 ~1 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 moss_block []
fill ~-3 ~9 ~-4 ~3 ~10 ~4 glass []
fill ~-2 ~9 ~-3 ~2 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 emerald_block []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 emerald_block []
setblock ~0 ~5 ~7 campfire []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 spruce_log []
setblock ~-6 ~4 ~0 emerald_block []
setblock ~-6 ~5 ~0 campfire []
fill ~6 ~0 ~0 ~6 ~3 ~0 spruce_log []
setblock ~6 ~4 ~0 emerald_block []
setblock ~6 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 spruce_log []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 spruce_log []
fill ~-7 ~5 ~-6 ~7 ~5 ~-6 moss_block []
setblock ~-2 ~6 ~-6 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 slime_ball 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 12
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 8
replaceitem block ~-3 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_axe 1
replaceitem block ~-3 ~1 ~4 slot.container 11 bow 1
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~-3 ~1 ~4 slot.container 13 honey_bottle 6
replaceitem block ~-3 ~1 ~4 slot.container 14 sweet_berries 13
loot insert ~-3 ~1 ~4 loot "rsf/forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 15
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 16
replaceitem block ~3 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~3 ~1 ~4 slot.container 10 iron_axe 1
replaceitem block ~3 ~1 ~4 slot.container 11 bow 1
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 13 honey_bottle 4
replaceitem block ~3 ~1 ~4 slot.container 14 sweet_berries 11
loot insert ~3 ~1 ~4 loot "rsf/forest"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

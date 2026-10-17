# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0146/4224 | 主题内编号: b018/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·L型转角领主秘宝屋 (forest_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[portal_chamber] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 2格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 rotten_flesh 15
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 3 string 17
replaceitem block ~3 ~-3 ~0 slot.container 4 spider_eye 5
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~0 slot.container 9 sweet_berries 10
replaceitem block ~3 ~-3 ~0 slot.container 10 cooked_porkchop 7
replaceitem block ~3 ~-3 ~0 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-3 ~0 slot.container 12 oak_log 19
replaceitem block ~3 ~-3 ~0 slot.container 13 emerald 7
replaceitem block ~3 ~-3 ~0 slot.container 14 golden_apple 6
loot insert ~3 ~-3 ~0 loot "rsf/forest"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 stone_bricks []
fill ~-5 ~1 ~0 ~5 ~6 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 spruce_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 oak_planks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 spruce_log []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 spruce_log []
fill ~-8 ~4 ~-9 ~8 ~4 ~-9 moss_block []
setblock ~2 ~5 ~-9 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 12
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 8
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 4 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 bow 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 4
replaceitem block ~-4 ~1 ~5 slot.container 11 honey_bottle 5
replaceitem block ~-4 ~1 ~5 slot.container 12 sweet_berries 12
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_porkchop 9
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 10
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 16
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 bow 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 11 honey_bottle 10
replaceitem block ~4 ~1 ~5 slot.container 12 sweet_berries 10
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_porkchop 7
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~2 ~0

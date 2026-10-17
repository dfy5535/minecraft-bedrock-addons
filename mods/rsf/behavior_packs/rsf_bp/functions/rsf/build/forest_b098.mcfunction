# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0226/4224 | 主题内编号: b098/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·四角炮楼重装要塞 (forest_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~5 campfire []
setblock ~4 ~-5 ~-5 campfire []
setblock ~4 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 7
replaceitem block ~4 ~-3 ~5 slot.container 1 arrow 18
replaceitem block ~4 ~-3 ~5 slot.container 2 slime_ball 7
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~-3 ~5 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~5 slot.container 9 honey_bottle 8
replaceitem block ~4 ~-3 ~5 slot.container 10 sweet_berries 15
replaceitem block ~4 ~-3 ~5 slot.container 11 cooked_porkchop 12
replaceitem block ~4 ~-3 ~5 slot.container 12 iron_ingot 6
replaceitem block ~4 ~-3 ~5 slot.container 13 oak_log 17
replaceitem block ~4 ~-3 ~5 slot.container 14 emerald 5
loot insert ~4 ~-3 ~5 loot "rsf/forest"
loot insert ~4 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~7 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~10 ~-6 moss_block []
setblock ~-6 ~11 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~10 ~7 moss_block []
setblock ~-6 ~11 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~10 ~-6 moss_block []
setblock ~5 ~11 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~10 ~7 moss_block []
setblock ~5 ~11 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-7 ~6 ~8 ~7 moss_block []
fill ~-6 ~9 ~-7 ~6 ~9 ~7 spruce_fence []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 air []
setblock ~-6 ~9 ~-7 spruce_log []
setblock ~-6 ~10 ~-7 campfire []
setblock ~-6 ~9 ~7 spruce_log []
setblock ~-6 ~10 ~7 campfire []
setblock ~6 ~9 ~-7 spruce_log []
setblock ~6 ~10 ~-7 campfire []
setblock ~6 ~9 ~7 spruce_log []
setblock ~6 ~10 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-9 ~0 ~-9 ~-9 ~4 ~-9 spruce_log []
fill ~9 ~0 ~-9 ~9 ~4 ~-9 spruce_log []
fill ~-9 ~4 ~-9 ~9 ~4 ~-9 moss_block []
setblock ~-1 ~5 ~-9 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 12
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 8
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~6 slot.container 4 slime_ball 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 bow 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 7
replaceitem block ~-5 ~1 ~6 slot.container 11 honey_bottle 8
replaceitem block ~-5 ~1 ~6 slot.container 12 sweet_berries 15
replaceitem block ~-5 ~1 ~6 slot.container 13 cooked_porkchop 12
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_ingot 6
loot insert ~-5 ~1 ~6 loot "rsf/forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 16
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 bow 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 11 honey_bottle 6
replaceitem block ~5 ~1 ~6 slot.container 12 sweet_berries 13
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_porkchop 10
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 11
loot insert ~5 ~1 ~6 loot "rsf/forest"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

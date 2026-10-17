# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0174/4224 | 主题内编号: b046/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·要塞校场比武演武台 (forest_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 mossy_cobblestone []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-2 ~-4 ~3 slot.container 2 bone 16
replaceitem block ~-2 ~-4 ~3 slot.container 3 string 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 spider_eye 5
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 7
replaceitem block ~-2 ~-4 ~3 slot.container 9 emerald 4
replaceitem block ~-2 ~-4 ~3 slot.container 10 golden_apple 3
replaceitem block ~-2 ~-4 ~3 slot.container 11 iron_axe 1
replaceitem block ~-2 ~-4 ~3 slot.container 12 bow 1
replaceitem block ~-2 ~-4 ~3 slot.container 13 lantern 9
replaceitem block ~-2 ~-4 ~3 slot.container 14 honey_bottle 10
loot insert ~-2 ~-4 ~3 loot "rsf/forest"
loot insert ~-2 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~9 ~-6 moss_block []
setblock ~-6 ~10 ~-7 campfire []
fill ~-6 ~1 ~6 ~-5 ~9 ~7 moss_block []
setblock ~-6 ~10 ~6 campfire []
fill ~5 ~1 ~-7 ~6 ~9 ~-6 moss_block []
setblock ~5 ~10 ~-7 campfire []
fill ~5 ~1 ~6 ~6 ~9 ~7 moss_block []
setblock ~5 ~10 ~6 campfire []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 moss_block []
fill ~-6 ~8 ~-7 ~6 ~8 ~7 spruce_fence []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 air []
setblock ~-6 ~8 ~-7 spruce_log []
setblock ~-6 ~9 ~-7 campfire []
setblock ~-6 ~8 ~7 spruce_log []
setblock ~-6 ~9 ~7 campfire []
setblock ~6 ~8 ~-7 spruce_log []
setblock ~6 ~9 ~-7 campfire []
setblock ~6 ~8 ~7 spruce_log []
setblock ~6 ~9 ~7 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~9 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~8 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~10 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-8 ~-9 ~7 ~-8 spruce_log []
fill ~9 ~0 ~-8 ~9 ~7 ~-8 spruce_log []
fill ~-9 ~7 ~-8 ~9 ~7 ~-8 moss_block []
setblock ~1 ~8 ~-8 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 slime_ball 10
replaceitem block ~-5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~6 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 4 string 12
replaceitem block ~-5 ~1 ~6 slot.container 5 spider_eye 8
replaceitem block ~-5 ~1 ~6 slot.container 9 cooked_porkchop 12
replaceitem block ~-5 ~1 ~6 slot.container 10 iron_ingot 6
replaceitem block ~-5 ~1 ~6 slot.container 11 oak_log 17
replaceitem block ~-5 ~1 ~6 slot.container 12 emerald 5
replaceitem block ~-5 ~1 ~6 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_axe 1
loot insert ~-5 ~1 ~6 loot "rsf/forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 1 bone 14
replaceitem block ~5 ~1 ~6 slot.container 2 string 15
replaceitem block ~5 ~1 ~6 slot.container 3 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 16
replaceitem block ~5 ~1 ~6 slot.container 9 cooked_porkchop 10
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 11
replaceitem block ~5 ~1 ~6 slot.container 11 oak_log 22
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 3
replaceitem block ~5 ~1 ~6 slot.container 13 golden_apple 2
replaceitem block ~5 ~1 ~6 slot.container 14 iron_axe 1
loot insert ~5 ~1 ~6 loot "rsf/forest"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0198/4224 | 主题内编号: b070/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·风化坍塌阶梯祭台 (forest_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
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
replaceitem block ~3 ~-2 ~4 slot.container 9 bow 1
replaceitem block ~3 ~-2 ~4 slot.container 10 lantern 10
replaceitem block ~3 ~-2 ~4 slot.container 11 honey_bottle 4
replaceitem block ~3 ~-2 ~4 slot.container 12 sweet_berries 11
replaceitem block ~3 ~-2 ~4 slot.container 13 cooked_porkchop 8
replaceitem block ~3 ~-2 ~4 slot.container 14 iron_ingot 9
loot insert ~3 ~-2 ~4 loot "rsf/forest"
loot insert ~3 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 moss_block []
fill ~-3 ~5 ~-4 ~3 ~7 ~4 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 spruce_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 emerald_block []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 emerald_block []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-8 ~6 ~-7 spruce_log []
fill ~8 ~0 ~-7 ~8 ~6 ~-7 spruce_log []
fill ~-8 ~6 ~-7 ~8 ~6 ~-7 moss_block []
setblock ~-1 ~7 ~-7 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 4 string 12
replaceitem block ~-4 ~1 ~5 slot.container 5 spider_eye 8
replaceitem block ~-4 ~1 ~5 slot.container 9 oak_log 18
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 6
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_axe 1
replaceitem block ~-4 ~1 ~5 slot.container 13 bow 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 4
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 1 bone 14
replaceitem block ~4 ~1 ~5 slot.container 2 string 15
replaceitem block ~4 ~1 ~5 slot.container 3 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 16
replaceitem block ~4 ~1 ~5 slot.container 9 oak_log 16
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 12 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 13 bow 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 9
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

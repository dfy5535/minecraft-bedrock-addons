# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0138/4224 | 主题内编号: b010/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·十字交叉深层地牢 (forest_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 17
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 5
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 5 arrow 18
replaceitem block ~0 ~-4 ~5 slot.container 9 golden_apple 5
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_axe 1
replaceitem block ~0 ~-4 ~5 slot.container 11 bow 1
replaceitem block ~0 ~-4 ~5 slot.container 12 lantern 4
replaceitem block ~0 ~-4 ~5 slot.container 13 honey_bottle 5
replaceitem block ~0 ~-4 ~5 slot.container 14 sweet_berries 12
loot insert ~0 ~-4 ~5 loot "rsf/forest"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 11
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 arrow 16
replaceitem block ~0 ~-4 ~-5 slot.container 9 golden_apple 4
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_axe 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 bow 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 lantern 10
replaceitem block ~0 ~-4 ~-5 slot.container 13 honey_bottle 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 sweet_berries 11
loot insert ~0 ~-4 ~-5 loot "rsf/forest"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~6 ~7 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~5 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-7 ~6 ~6 ~7 spruce_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 spruce_log []
setblock ~-8 ~6 ~-9 campfire []
fill ~-8 ~0 ~9 ~-8 ~5 ~9 spruce_log []
setblock ~-8 ~6 ~9 campfire []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 spruce_log []
setblock ~8 ~6 ~-9 campfire []
fill ~8 ~0 ~9 ~8 ~5 ~9 spruce_log []
setblock ~8 ~6 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~-8 ~-9 ~6 ~-8 spruce_log []
fill ~9 ~0 ~-8 ~9 ~6 ~-8 spruce_log []
fill ~-9 ~6 ~-8 ~9 ~6 ~-8 moss_block []
setblock ~1 ~7 ~-8 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 blast_furnace []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 string 12
replaceitem block ~-5 ~1 ~6 slot.container 1 spider_eye 8
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~6 slot.container 4 slime_ball 10
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 oak_log 21
replaceitem block ~-5 ~1 ~6 slot.container 10 emerald 9
replaceitem block ~-5 ~1 ~6 slot.container 11 golden_apple 1
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_axe 1
replaceitem block ~-5 ~1 ~6 slot.container 13 bow 1
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 7
loot insert ~-5 ~1 ~6 loot "rsf/forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 16
replaceitem block ~5 ~1 ~6 slot.container 2 slime_ball 5
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~1 ~6 slot.container 5 bone 14
replaceitem block ~5 ~1 ~6 slot.container 9 oak_log 19
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 7
replaceitem block ~5 ~1 ~6 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~6 slot.container 12 iron_axe 1
replaceitem block ~5 ~1 ~6 slot.container 13 bow 1
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 5
loot insert ~5 ~1 ~6 loot "rsf/forest"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

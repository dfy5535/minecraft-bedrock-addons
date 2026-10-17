# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0176/4224 | 主题内编号: b048/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·阶梯王座巅峰试炼台 (forest_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 oak_planks []
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 honeycomb_block []
fill ~0 ~-4 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-5 slot.container 0 string 17
replaceitem block ~0 ~-2 ~-5 slot.container 1 spider_eye 5
replaceitem block ~0 ~-2 ~-5 slot.container 2 gunpowder 7
replaceitem block ~0 ~-2 ~-5 slot.container 3 arrow 18
replaceitem block ~0 ~-2 ~-5 slot.container 4 slime_ball 7
replaceitem block ~0 ~-2 ~-5 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-5 slot.container 9 oak_log 20
replaceitem block ~0 ~-2 ~-5 slot.container 10 emerald 8
replaceitem block ~0 ~-2 ~-5 slot.container 11 golden_apple 7
replaceitem block ~0 ~-2 ~-5 slot.container 12 iron_axe 1
replaceitem block ~0 ~-2 ~-5 slot.container 13 bow 1
replaceitem block ~0 ~-2 ~-5 slot.container 14 lantern 6
loot insert ~0 ~-2 ~-5 loot "rsf/forest"
loot insert ~0 ~-2 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mossy_stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 stone_bricks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 oak_planks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-7 ~-6 ~10 ~-7 oak_log []
setblock ~-6 ~11 ~-7 lantern []
fill ~-6 ~8 ~7 ~-6 ~10 ~7 oak_log []
setblock ~-6 ~11 ~7 lantern []
fill ~6 ~8 ~-7 ~6 ~10 ~-7 oak_log []
setblock ~6 ~11 ~-7 lantern []
fill ~6 ~8 ~7 ~6 ~10 ~7 oak_log []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x10x2) ---
fill ~-9 ~0 ~-10 ~-9 ~4 ~-10 oak_log []
fill ~9 ~0 ~-10 ~9 ~4 ~-10 oak_log []
fill ~-9 ~4 ~-10 ~9 ~4 ~-10 moss_block []
setblock ~-3 ~5 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 12
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 8
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~6 slot.container 9 bow 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 6
replaceitem block ~-5 ~1 ~6 slot.container 11 honey_bottle 7
replaceitem block ~-5 ~1 ~6 slot.container 12 sweet_berries 14
replaceitem block ~-5 ~1 ~6 slot.container 13 cooked_porkchop 11
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~6 loot "rsf/forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 15
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 16
replaceitem block ~5 ~1 ~6 slot.container 4 slime_ball 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 bow 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 11 honey_bottle 5
replaceitem block ~5 ~1 ~6 slot.container 12 sweet_berries 12
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_porkchop 9
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 10
loot insert ~5 ~1 ~6 loot "rsf/forest"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-2 ~0

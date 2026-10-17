# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0175/4224 | 主题内编号: b047/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·深渊跨桥决斗长台 (forest_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 bone 16
replaceitem block ~-4 ~-4 ~3 slot.container 1 string 17
replaceitem block ~-4 ~-4 ~3 slot.container 2 spider_eye 5
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 7
replaceitem block ~-4 ~-4 ~3 slot.container 4 arrow 18
replaceitem block ~-4 ~-4 ~3 slot.container 5 slime_ball 7
replaceitem block ~-4 ~-4 ~3 slot.container 9 sweet_berries 11
replaceitem block ~-4 ~-4 ~3 slot.container 10 cooked_porkchop 8
replaceitem block ~-4 ~-4 ~3 slot.container 11 iron_ingot 9
replaceitem block ~-4 ~-4 ~3 slot.container 12 oak_log 20
replaceitem block ~-4 ~-4 ~3 slot.container 13 emerald 8
replaceitem block ~-4 ~-4 ~3 slot.container 14 golden_apple 7
loot insert ~-4 ~-4 ~3 loot "rsf/forest"
loot insert ~-4 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 oak_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 oak_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 oak_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 oak_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-9 ~0 ~-7 ~-9 ~8 ~-7 oak_log []
fill ~9 ~0 ~-7 ~9 ~8 ~-7 oak_log []
fill ~-9 ~8 ~-7 ~9 ~8 ~-7 moss_block []
setblock ~2 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 1 rotten_flesh 10
replaceitem block ~5 ~1 ~4 slot.container 2 bone 11
replaceitem block ~5 ~1 ~4 slot.container 3 string 12
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 8
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 3
replaceitem block ~5 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~4 slot.container 11 iron_axe 1
replaceitem block ~5 ~1 ~4 slot.container 12 bow 1
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 14 honey_bottle 9
loot insert ~5 ~1 ~4 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

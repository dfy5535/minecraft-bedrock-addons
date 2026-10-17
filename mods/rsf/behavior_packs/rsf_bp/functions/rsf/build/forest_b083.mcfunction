# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0211/4224 | 主题内编号: b083/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·铁砧锻造与模具工坊 (forest_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~3 ~-3 ~4 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 3 string 17
replaceitem block ~3 ~-3 ~4 slot.container 4 spider_eye 5
replaceitem block ~3 ~-3 ~4 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~4 slot.container 9 lantern 4
replaceitem block ~3 ~-3 ~4 slot.container 10 honey_bottle 5
replaceitem block ~3 ~-3 ~4 slot.container 11 sweet_berries 12
replaceitem block ~3 ~-3 ~4 slot.container 12 cooked_porkchop 9
replaceitem block ~3 ~-3 ~4 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-3 ~4 slot.container 14 oak_log 21
loot insert ~3 ~-3 ~4 loot "rsf/forest"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~7 ~6 cobblestone []
fill ~-5 ~1 ~0 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~6 ~5 air []
fill ~-1 ~1 ~1 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 stone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 stone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 stone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 stone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 stone_brick_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 oak_log []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 oak_log []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 oak_log []
fill ~6 ~0 ~2 ~6 ~6 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 oak_log []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 oak_log []
fill ~-8 ~4 ~-8 ~8 ~4 ~-8 moss_block []
setblock ~2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 slime_ball 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 7
replaceitem block ~4 ~1 ~5 slot.container 10 oak_log 18
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 5
replaceitem block ~4 ~1 ~5 slot.container 13 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 14 bow 1
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

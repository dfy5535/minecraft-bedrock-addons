# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0235/4224 | 主题内编号: b107/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·观星高塔与秘术地宫 (forest_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~14 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 mossy_stone_bricks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 emerald_block []
setblock ~0 ~-7 ~0 lantern []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-4 ~0 slot.container 0 spider_eye 5
replaceitem block ~2 ~-4 ~0 slot.container 1 gunpowder 7
replaceitem block ~2 ~-4 ~0 slot.container 2 arrow 18
replaceitem block ~2 ~-4 ~0 slot.container 3 slime_ball 7
replaceitem block ~2 ~-4 ~0 slot.container 4 ender_pearl 6
replaceitem block ~2 ~-4 ~0 slot.container 5 rotten_flesh 15
replaceitem block ~2 ~-4 ~0 slot.container 9 sweet_berries 12
replaceitem block ~2 ~-4 ~0 slot.container 10 cooked_porkchop 9
replaceitem block ~2 ~-4 ~0 slot.container 11 iron_ingot 10
replaceitem block ~2 ~-4 ~0 slot.container 12 oak_log 21
replaceitem block ~2 ~-4 ~0 slot.container 13 emerald 9
replaceitem block ~2 ~-4 ~0 slot.container 14 golden_apple 1
loot insert ~2 ~-4 ~0 loot "rsf/forest"
loot insert ~2 ~-4 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~10 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 stone_brick_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~10 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 mossy_stone_bricks []
fill ~-3 ~11 ~-4 ~3 ~12 ~4 glass []
fill ~-2 ~11 ~-3 ~2 ~11 ~3 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 oak_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 oak_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 oak_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-7 ~-7 ~8 ~-7 oak_log []
fill ~7 ~0 ~-7 ~7 ~8 ~-7 oak_log []
fill ~-7 ~8 ~-7 ~7 ~8 ~-7 moss_block []
setblock ~-1 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 spider_eye 8
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~4 slot.container 3 slime_ball 10
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 10
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 10 golden_apple 6
replaceitem block ~3 ~1 ~4 slot.container 11 iron_axe 1
replaceitem block ~3 ~1 ~4 slot.container 12 bow 1
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 5
replaceitem block ~3 ~1 ~4 slot.container 14 honey_bottle 6
loot insert ~3 ~1 ~4 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

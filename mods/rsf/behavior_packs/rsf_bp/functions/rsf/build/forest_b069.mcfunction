# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0197/4224 | 主题内编号: b069/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·藤蔓侵蚀十字修道院 (forest_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_cobblestone []
setblock ~0 ~-6 ~0 bookshelf []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 bone 16
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 spider_eye 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 7
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_axe 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 bow 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 honey_bottle 4
replaceitem block ~0 ~-3 ~-4 slot.container 13 sweet_berries 11
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_porkchop 8
loot insert ~0 ~-3 ~-4 loot "rsf/forest"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 oak_planks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 oak_planks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 oak_fence []
setblock ~5 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 oak_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-5 ~6 ~-1 ~-5 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mossy_cobblestone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 oak_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-8 ~0 ~-9 ~-8 ~5 ~-9 stripped_oak_log []
fill ~8 ~0 ~-9 ~8 ~5 ~-9 stripped_oak_log []
fill ~-8 ~5 ~-9 ~8 ~5 ~-9 moss_block []
setblock ~-2 ~6 ~-9 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 blast_furnace []
setblock ~-3 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 12
replaceitem block ~4 ~1 ~5 slot.container 9 sweet_berries 11
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_porkchop 8
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 9
replaceitem block ~4 ~1 ~5 slot.container 12 oak_log 20
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 7
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0

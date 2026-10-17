# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0137/4224 | 主题内编号: b009/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·铁栏双室地下死牢 (forest_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 oak_planks []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~4 torch []
setblock ~3 ~-6 ~-4 torch []
setblock ~3 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~4 slot.container 0 spider_eye 5
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-4 ~4 slot.container 2 arrow 18
replaceitem block ~3 ~-4 ~4 slot.container 3 slime_ball 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~3 ~-4 ~4 slot.container 9 iron_ingot 12
replaceitem block ~3 ~-4 ~4 slot.container 10 oak_log 16
replaceitem block ~3 ~-4 ~4 slot.container 11 emerald 4
replaceitem block ~3 ~-4 ~4 slot.container 12 golden_apple 3
replaceitem block ~3 ~-4 ~4 slot.container 13 iron_axe 1
replaceitem block ~3 ~-4 ~4 slot.container 14 bow 1
loot insert ~3 ~-4 ~4 loot "rsf/forest"
loot insert ~3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 oak_planks []
fill ~-4 ~1 ~-5 ~4 ~3 ~5 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mossy_cobblestone []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 oak_fence []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 stripped_oak_log []
setblock ~-5 ~8 ~-6 torch []
setblock ~-5 ~7 ~6 stripped_oak_log []
setblock ~-5 ~8 ~6 torch []
setblock ~5 ~7 ~-6 stripped_oak_log []
setblock ~5 ~8 ~-6 torch []
setblock ~5 ~7 ~6 stripped_oak_log []
setblock ~5 ~8 ~6 torch []

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
setblock ~-3 ~1 ~4 blast_furnace []
setblock ~-2 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 string 12
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 10
replaceitem block ~4 ~1 ~5 slot.container 9 sweet_berries 14
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_porkchop 11
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 12 oak_log 16
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0

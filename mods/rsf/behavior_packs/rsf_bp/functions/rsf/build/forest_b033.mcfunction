# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0161/4224 | 主题内编号: b033/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·太阳金顶高耸方尖碑 (forest_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 9x11 | 地上高度 12格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~16 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 oak_planks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 oak_planks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 stone_bricks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_cobblestone []
setblock ~0 ~-6 ~0 bookshelf []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 torch []
setblock ~2 ~-5 ~0 torch []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 spider_eye 5
replaceitem block ~0 ~-3 ~-2 slot.container 1 gunpowder 7
replaceitem block ~0 ~-3 ~-2 slot.container 2 arrow 18
replaceitem block ~0 ~-3 ~-2 slot.container 3 slime_ball 7
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 rotten_flesh 15
replaceitem block ~0 ~-3 ~-2 slot.container 9 lantern 7
replaceitem block ~0 ~-3 ~-2 slot.container 10 honey_bottle 8
replaceitem block ~0 ~-3 ~-2 slot.container 11 sweet_berries 15
replaceitem block ~0 ~-3 ~-2 slot.container 12 cooked_porkchop 12
replaceitem block ~0 ~-3 ~-2 slot.container 13 iron_ingot 6
replaceitem block ~0 ~-3 ~-2 slot.container 14 oak_log 17
loot insert ~0 ~-3 ~-2 loot "rsf/forest"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 oak_planks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 mossy_cobblestone []
fill ~-1 ~5 ~-2 ~1 ~12 ~2 stone_bricks []
fill ~-1 ~1 ~-2 ~1 ~11 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~13 ~-2 ~2 ~14 ~2 mossy_cobblestone []
fill ~-1 ~15 ~-1 ~1 ~17 ~1 oak_planks []
fill ~0 ~18 ~0 ~0 ~20 ~0 honeycomb_block []
setblock ~0 ~21 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~5 ~-6 stripped_oak_log []
setblock ~-5 ~6 ~-6 torch []
fill ~-5 ~0 ~6 ~-5 ~5 ~6 stripped_oak_log []
setblock ~-5 ~6 ~6 torch []
fill ~5 ~0 ~-6 ~5 ~5 ~-6 stripped_oak_log []
setblock ~5 ~6 ~-6 torch []
fill ~5 ~0 ~6 ~5 ~5 ~6 stripped_oak_log []
setblock ~5 ~6 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~-7 ~-6 ~4 ~-7 stripped_oak_log []
fill ~6 ~0 ~-7 ~6 ~4 ~-7 stripped_oak_log []
fill ~-6 ~4 ~-7 ~6 ~4 ~-7 moss_block []
setblock ~-1 ~5 ~-7 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 12
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 8
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 4 arrow 21
replaceitem block ~2 ~1 ~3 slot.container 5 slime_ball 10
replaceitem block ~2 ~1 ~3 slot.container 9 iron_ingot 6
replaceitem block ~2 ~1 ~3 slot.container 10 oak_log 17
replaceitem block ~2 ~1 ~3 slot.container 11 emerald 5
replaceitem block ~2 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~2 ~1 ~3 slot.container 13 iron_axe 1
replaceitem block ~2 ~1 ~3 slot.container 14 bow 1
loot insert ~2 ~1 ~3 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0

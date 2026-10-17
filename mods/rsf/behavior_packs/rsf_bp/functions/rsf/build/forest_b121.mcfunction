# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0249/4224 | 主题内编号: b121/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·卫城廊柱王座大殿与地宫 (forest_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 oak_planks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 oak_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 oak_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 string 17
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 5
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 9 lantern 7
replaceitem block ~0 ~-4 ~5 slot.container 10 honey_bottle 8
replaceitem block ~0 ~-4 ~5 slot.container 11 sweet_berries 15
replaceitem block ~0 ~-4 ~5 slot.container 12 cooked_porkchop 12
replaceitem block ~0 ~-4 ~5 slot.container 13 iron_ingot 6
replaceitem block ~0 ~-4 ~5 slot.container 14 oak_log 17
loot insert ~0 ~-4 ~5 loot "rsf/forest"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-4 ~-5 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-4 ~-5 slot.container 2 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 3 string 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 spider_eye 11
replaceitem block ~0 ~-4 ~-5 slot.container 5 gunpowder 13
replaceitem block ~0 ~-4 ~-5 slot.container 9 lantern 6
replaceitem block ~0 ~-4 ~-5 slot.container 10 honey_bottle 7
replaceitem block ~0 ~-4 ~-5 slot.container 11 sweet_berries 14
replaceitem block ~0 ~-4 ~-5 slot.container 12 cooked_porkchop 11
replaceitem block ~0 ~-4 ~-5 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-4 ~-5 slot.container 14 oak_log 16
loot insert ~0 ~-4 ~-5 loot "rsf/forest"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-6 ~1 ~-1 ~6 ~9 ~7 oak_planks []
fill ~-5 ~1 ~0 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~9 ~-7 stripped_oak_log []
fill ~-4 ~1 ~-7 ~-4 ~9 ~-7 stripped_oak_log []
fill ~-2 ~1 ~-7 ~-2 ~9 ~-7 stripped_oak_log []
fill ~0 ~1 ~-7 ~0 ~9 ~-7 stripped_oak_log []
fill ~2 ~1 ~-7 ~2 ~9 ~-7 stripped_oak_log []
fill ~4 ~1 ~-7 ~4 ~9 ~-7 stripped_oak_log []
fill ~6 ~1 ~-7 ~6 ~9 ~-7 stripped_oak_log []
fill ~-6 ~9 ~-7 ~6 ~9 ~-1 mossy_cobblestone []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~10 ~-8 ~-7 ~10 ~8 oak_stairs ["weirdo_direction"=0]
fill ~7 ~10 ~-8 ~7 ~10 ~8 oak_stairs ["weirdo_direction"=1]
fill ~-6 ~11 ~-7 ~-6 ~11 ~7 oak_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-7 ~6 ~11 ~7 oak_stairs ["weirdo_direction"=1]
fill ~-5 ~11 ~-7 ~5 ~11 ~7 oak_slab []
fill ~0 ~12 ~-8 ~0 ~12 ~8 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-8 ~-9 ~7 ~-8 stripped_oak_log []
fill ~9 ~0 ~-8 ~9 ~7 ~-8 stripped_oak_log []
fill ~-9 ~7 ~-8 ~9 ~7 ~-8 moss_block []
setblock ~-2 ~8 ~-8 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~8 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 honeycomb_block []
setblock ~0 ~1 ~0 bookshelf []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 11
replaceitem block ~5 ~1 ~6 slot.container 1 string 12
replaceitem block ~5 ~1 ~6 slot.container 2 spider_eye 8
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 5 slime_ball 10
replaceitem block ~5 ~1 ~6 slot.container 9 iron_axe 1
replaceitem block ~5 ~1 ~6 slot.container 10 bow 1
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 12 honey_bottle 4
replaceitem block ~5 ~1 ~6 slot.container 13 sweet_berries 11
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_porkchop 8
loot insert ~5 ~1 ~6 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

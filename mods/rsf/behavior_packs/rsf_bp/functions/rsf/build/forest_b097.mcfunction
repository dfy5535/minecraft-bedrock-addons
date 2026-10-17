# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0225/4224 | 主题内编号: b097/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·八角射击孔防御棱堡 (forest_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-6 ~-1 ~3 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 bone 16
replaceitem block ~0 ~-4 ~3 slot.container 1 string 17
replaceitem block ~0 ~-4 ~3 slot.container 2 spider_eye 5
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 7
replaceitem block ~0 ~-4 ~3 slot.container 4 arrow 18
replaceitem block ~0 ~-4 ~3 slot.container 5 slime_ball 7
replaceitem block ~0 ~-4 ~3 slot.container 9 sweet_berries 11
replaceitem block ~0 ~-4 ~3 slot.container 10 cooked_porkchop 8
replaceitem block ~0 ~-4 ~3 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-4 ~3 slot.container 12 oak_log 20
replaceitem block ~0 ~-4 ~3 slot.container 13 emerald 8
replaceitem block ~0 ~-4 ~3 slot.container 14 golden_apple 7
loot insert ~0 ~-4 ~3 loot "rsf/forest"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 15
replaceitem block ~0 ~-4 ~-3 slot.container 2 spider_eye 11
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 13
replaceitem block ~0 ~-4 ~-3 slot.container 4 arrow 16
replaceitem block ~0 ~-4 ~-3 slot.container 5 slime_ball 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 sweet_berries 10
replaceitem block ~0 ~-4 ~-3 slot.container 10 cooked_porkchop 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_ingot 8
replaceitem block ~0 ~-4 ~-3 slot.container 12 oak_log 19
replaceitem block ~0 ~-4 ~-3 slot.container 13 emerald 7
replaceitem block ~0 ~-4 ~-3 slot.container 14 golden_apple 6
loot insert ~0 ~-4 ~-3 loot "rsf/forest"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 oak_planks []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~9 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~9 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~9 ~6 air []
fill ~5 ~1 ~6 ~5 ~9 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 stripped_oak_log []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 stripped_oak_log []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 stripped_oak_log []
fill ~4 ~1 ~5 ~4 ~8 ~5 stripped_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 mossy_cobblestone []
fill ~-5 ~9 ~-6 ~5 ~9 ~6 oak_fence []
fill ~-4 ~9 ~-5 ~4 ~9 ~5 air []
setblock ~-5 ~9 ~-6 stripped_oak_log []
setblock ~-5 ~10 ~-6 torch []
setblock ~-5 ~9 ~6 stripped_oak_log []
setblock ~-5 ~10 ~6 torch []
setblock ~5 ~9 ~-6 stripped_oak_log []
setblock ~5 ~10 ~-6 torch []
setblock ~5 ~9 ~6 stripped_oak_log []
setblock ~5 ~10 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 stripped_oak_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 stripped_oak_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 stripped_oak_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 stripped_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 stripped_oak_log []
fill ~8 ~0 ~-7 ~8 ~8 ~-7 stripped_oak_log []
fill ~-8 ~8 ~-7 ~8 ~8 ~-7 moss_block []
setblock ~1 ~9 ~-7 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 11
replaceitem block ~4 ~1 ~5 slot.container 1 string 12
replaceitem block ~4 ~1 ~5 slot.container 2 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 5 slime_ball 10
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~5 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 12 bow 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 14 honey_bottle 10
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

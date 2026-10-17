# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0229/4224 | 主题内编号: b101/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·L型驻军兵营军械所 (forest_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 bone 16
replaceitem block ~3 ~-3 ~4 slot.container 1 string 17
replaceitem block ~3 ~-3 ~4 slot.container 2 spider_eye 5
replaceitem block ~3 ~-3 ~4 slot.container 3 gunpowder 7
replaceitem block ~3 ~-3 ~4 slot.container 4 arrow 18
replaceitem block ~3 ~-3 ~4 slot.container 5 slime_ball 7
replaceitem block ~3 ~-3 ~4 slot.container 9 sweet_berries 11
replaceitem block ~3 ~-3 ~4 slot.container 10 cooked_porkchop 8
replaceitem block ~3 ~-3 ~4 slot.container 11 iron_ingot 9
replaceitem block ~3 ~-3 ~4 slot.container 12 oak_log 20
replaceitem block ~3 ~-3 ~4 slot.container 13 emerald 8
replaceitem block ~3 ~-3 ~4 slot.container 14 golden_apple 7
loot insert ~3 ~-3 ~4 loot "rsf/forest"
loot insert ~3 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~8 ~6 oak_planks []
fill ~-5 ~1 ~0 ~5 ~7 ~6 stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~7 ~5 air []
fill ~-1 ~1 ~1 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

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

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-9 ~3 ~0 ~-7 oak_planks []
setblock ~-2 ~1 ~-8 campfire []
setblock ~2 ~1 ~-8 hay_block []
setblock ~3 ~1 ~-8 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~-8 ~-8 ~7 ~-8 stripped_oak_log []
fill ~8 ~0 ~-8 ~8 ~7 ~-8 stripped_oak_log []
fill ~-8 ~7 ~-8 ~8 ~7 ~-8 moss_block []
setblock ~0 ~8 ~-8 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 10 bow 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 4
replaceitem block ~4 ~1 ~5 slot.container 12 honey_bottle 5
replaceitem block ~4 ~1 ~5 slot.container 13 sweet_berries 12
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_porkchop 9
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

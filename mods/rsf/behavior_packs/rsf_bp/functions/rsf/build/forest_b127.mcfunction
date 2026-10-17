# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0255/4224 | 主题内编号: b127/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·万神殿巨型穹顶与试炼宫 (forest_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-6 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 emerald_block []
setblock ~-4 ~-6 ~-5 lantern []
setblock ~4 ~-6 ~5 lantern []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~0 ~-4 ~5 slot.container 2 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 3 string 17
replaceitem block ~0 ~-4 ~5 slot.container 4 spider_eye 5
replaceitem block ~0 ~-4 ~5 slot.container 5 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 9 iron_axe 1
replaceitem block ~0 ~-4 ~5 slot.container 10 bow 1
replaceitem block ~0 ~-4 ~5 slot.container 11 lantern 6
replaceitem block ~0 ~-4 ~5 slot.container 12 honey_bottle 7
replaceitem block ~0 ~-4 ~5 slot.container 13 sweet_berries 14
replaceitem block ~0 ~-4 ~5 slot.container 14 cooked_porkchop 11
loot insert ~0 ~-4 ~5 loot "rsf/forest"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-6 ~1 ~-7 ~-6 ~8 ~-7 oak_log []
fill ~-6 ~1 ~7 ~-6 ~8 ~7 oak_log []
fill ~-4 ~1 ~-7 ~-4 ~8 ~-7 oak_log []
fill ~-4 ~1 ~7 ~-4 ~8 ~7 oak_log []
fill ~-2 ~1 ~-7 ~-2 ~8 ~-7 oak_log []
fill ~-2 ~1 ~7 ~-2 ~8 ~7 oak_log []
fill ~0 ~1 ~-7 ~0 ~8 ~-7 oak_log []
fill ~0 ~1 ~7 ~0 ~8 ~7 oak_log []
fill ~2 ~1 ~-7 ~2 ~8 ~-7 oak_log []
fill ~2 ~1 ~7 ~2 ~8 ~7 oak_log []
fill ~4 ~1 ~-7 ~4 ~8 ~-7 oak_log []
fill ~4 ~1 ~7 ~4 ~8 ~7 oak_log []
fill ~6 ~1 ~-7 ~6 ~8 ~-7 oak_log []
fill ~6 ~1 ~7 ~6 ~8 ~7 oak_log []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 oak_log []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 oak_log []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 oak_log []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 oak_log []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 oak_log []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 oak_log []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 oak_log []
fill ~6 ~1 ~1 ~6 ~8 ~1 oak_log []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 oak_log []
fill ~6 ~1 ~3 ~6 ~8 ~3 oak_log []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 oak_log []
fill ~6 ~1 ~5 ~6 ~8 ~5 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 glass []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-9 ~0 ~3 ~-9 oak_log []
setblock ~0 ~4 ~-9 chiseled_stone_bricks []
setblock ~0 ~5 ~-9 lantern []
fill ~0 ~0 ~9 ~0 ~3 ~9 oak_log []
setblock ~0 ~4 ~9 chiseled_stone_bricks []
setblock ~0 ~5 ~9 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 chiseled_stone_bricks []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 chiseled_stone_bricks []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-8 ~-9 ~8 ~-8 oak_log []
fill ~9 ~0 ~-8 ~9 ~8 ~-8 oak_log []
fill ~-9 ~8 ~-8 ~9 ~8 ~-8 moss_block []
setblock ~-2 ~9 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 10
replaceitem block ~5 ~1 ~6 slot.container 2 bone 11
replaceitem block ~5 ~1 ~6 slot.container 3 string 12
replaceitem block ~5 ~1 ~6 slot.container 4 spider_eye 8
replaceitem block ~5 ~1 ~6 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 9 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 10 golden_apple 5
replaceitem block ~5 ~1 ~6 slot.container 11 iron_axe 1
replaceitem block ~5 ~1 ~6 slot.container 12 bow 1
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 4
replaceitem block ~5 ~1 ~6 slot.container 14 honey_bottle 5
loot insert ~5 ~1 ~6 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

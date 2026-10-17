# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0135/4224 | 主题内编号: b007/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·八角星芒图腾祭坛 (forest_altar_octagonal_star)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 rotten_flesh 15
replaceitem block ~3 ~-3 ~0 slot.container 2 bone 16
replaceitem block ~3 ~-3 ~0 slot.container 3 string 17
replaceitem block ~3 ~-3 ~0 slot.container 4 spider_eye 5
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~0 slot.container 9 sweet_berries 10
replaceitem block ~3 ~-3 ~0 slot.container 10 cooked_porkchop 7
replaceitem block ~3 ~-3 ~0 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-3 ~0 slot.container 12 oak_log 19
replaceitem block ~3 ~-3 ~0 slot.container 13 emerald 7
replaceitem block ~3 ~-3 ~0 slot.container 14 golden_apple 6
loot insert ~3 ~-3 ~0 loot "rsf/forest"
loot insert ~3 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-6 ~5 ~9 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~8 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~10 ~-6 air []
fill ~5 ~1 ~-6 ~5 ~10 ~-6 air []
fill ~-5 ~1 ~6 ~-5 ~10 ~6 air []
fill ~5 ~1 ~6 ~5 ~10 ~6 air []
fill ~-4 ~1 ~-5 ~-4 ~9 ~-5 oak_log []
fill ~4 ~1 ~-5 ~4 ~9 ~-5 oak_log []
fill ~-4 ~1 ~5 ~-4 ~9 ~5 oak_log []
fill ~4 ~1 ~5 ~4 ~9 ~5 oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~17 ~0 emerald_block []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 oak_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 oak_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 oak_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 oak_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~8 ~-7 oak_log []
fill ~-8 ~8 ~-7 ~8 ~8 ~-7 moss_block []
setblock ~1 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 12 bow 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 14 honey_bottle 4
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

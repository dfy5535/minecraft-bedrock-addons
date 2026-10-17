# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0159/4224 | 主题内编号: b031/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·阶梯圣火烽火台 (forest_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x15 | 地上高度 10格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~14 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 campfire []
setblock ~4 ~-6 ~0 campfire []
setblock ~0 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-4 ~5 slot.container 1 bone 16
replaceitem block ~0 ~-4 ~5 slot.container 2 string 17
replaceitem block ~0 ~-4 ~5 slot.container 3 spider_eye 5
replaceitem block ~0 ~-4 ~5 slot.container 4 gunpowder 7
replaceitem block ~0 ~-4 ~5 slot.container 5 arrow 18
replaceitem block ~0 ~-4 ~5 slot.container 9 golden_apple 5
replaceitem block ~0 ~-4 ~5 slot.container 10 iron_axe 1
replaceitem block ~0 ~-4 ~5 slot.container 11 bow 1
replaceitem block ~0 ~-4 ~5 slot.container 12 lantern 4
replaceitem block ~0 ~-4 ~5 slot.container 13 honey_bottle 5
replaceitem block ~0 ~-4 ~5 slot.container 14 sweet_berries 12
loot insert ~0 ~-4 ~5 loot "rsf/forest"
loot insert ~0 ~-4 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-4 ~-5 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-5 slot.container 2 string 15
replaceitem block ~0 ~-4 ~-5 slot.container 3 spider_eye 11
replaceitem block ~0 ~-4 ~-5 slot.container 4 gunpowder 13
replaceitem block ~0 ~-4 ~-5 slot.container 5 arrow 16
replaceitem block ~0 ~-4 ~-5 slot.container 9 golden_apple 4
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_axe 1
replaceitem block ~0 ~-4 ~-5 slot.container 11 bow 1
replaceitem block ~0 ~-4 ~-5 slot.container 12 lantern 10
replaceitem block ~0 ~-4 ~-5 slot.container 13 honey_bottle 4
replaceitem block ~0 ~-4 ~-5 slot.container 14 sweet_berries 11
loot insert ~0 ~-4 ~-5 loot "rsf/forest"
loot insert ~0 ~-4 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 cobblestone []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 mossy_stone_bricks []
fill ~-3 ~5 ~-4 ~3 ~10 ~4 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~10 ~-6 ~-5 ~12 ~-6 oak_log []
setblock ~-5 ~13 ~-6 lantern []
fill ~-5 ~10 ~6 ~-5 ~12 ~6 oak_log []
setblock ~-5 ~13 ~6 lantern []
fill ~5 ~10 ~-6 ~5 ~12 ~-6 oak_log []
setblock ~5 ~13 ~-6 lantern []
fill ~5 ~10 ~6 ~5 ~12 ~6 oak_log []
setblock ~5 ~13 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 oak_log []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 oak_log []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 oak_log []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 oak_log []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~-7 ~-8 ~7 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~7 ~-7 oak_log []
fill ~-8 ~7 ~-7 ~8 ~7 ~-7 moss_block []
setblock ~0 ~8 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~5 smoker []
setblock ~4 ~1 ~5 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 10 bow 1
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 4
replaceitem block ~4 ~1 ~5 slot.container 12 honey_bottle 5
replaceitem block ~4 ~1 ~5 slot.container 13 sweet_berries 12
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_porkchop 9
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

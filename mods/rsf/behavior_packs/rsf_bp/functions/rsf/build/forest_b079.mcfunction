# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0207/4224 | 主题内编号: b079/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·四角结界守护柱阵 (forest_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 slime_ball 7
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~0 ~-3 ~5 slot.container 3 bone 16
replaceitem block ~0 ~-3 ~5 slot.container 4 string 17
replaceitem block ~0 ~-3 ~5 slot.container 5 spider_eye 5
replaceitem block ~0 ~-3 ~5 slot.container 9 oak_log 19
replaceitem block ~0 ~-3 ~5 slot.container 10 emerald 7
replaceitem block ~0 ~-3 ~5 slot.container 11 golden_apple 6
replaceitem block ~0 ~-3 ~5 slot.container 12 iron_axe 1
replaceitem block ~0 ~-3 ~5 slot.container 13 bow 1
replaceitem block ~0 ~-3 ~5 slot.container 14 lantern 5
loot insert ~0 ~-3 ~5 loot "rsf/forest"
loot insert ~0 ~-3 ~5 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 slime_ball 5
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 rotten_flesh 13
replaceitem block ~0 ~-3 ~-5 slot.container 3 bone 14
replaceitem block ~0 ~-3 ~-5 slot.container 4 string 15
replaceitem block ~0 ~-3 ~-5 slot.container 5 spider_eye 11
replaceitem block ~0 ~-3 ~-5 slot.container 9 oak_log 18
replaceitem block ~0 ~-3 ~-5 slot.container 10 emerald 6
replaceitem block ~0 ~-3 ~-5 slot.container 11 golden_apple 5
replaceitem block ~0 ~-3 ~-5 slot.container 12 iron_axe 1
replaceitem block ~0 ~-3 ~-5 slot.container 13 bow 1
replaceitem block ~0 ~-3 ~-5 slot.container 14 lantern 4
loot insert ~0 ~-3 ~-5 loot "rsf/forest"
loot insert ~0 ~-3 ~-5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-6 ~5 ~8 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~-5 ~1 ~-6 ~-4 ~10 ~-5 mossy_stone_bricks []
setblock ~-5 ~11 ~-6 lantern []
fill ~-5 ~1 ~5 ~-4 ~10 ~6 mossy_stone_bricks []
setblock ~-5 ~11 ~5 lantern []
fill ~4 ~1 ~-6 ~5 ~10 ~-5 mossy_stone_bricks []
setblock ~4 ~11 ~-6 lantern []
fill ~4 ~1 ~5 ~5 ~10 ~6 mossy_stone_bricks []
setblock ~4 ~11 ~5 lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~8 ~-6 ~-5 ~10 ~-6 oak_log []
setblock ~-5 ~11 ~-6 lantern []
fill ~-5 ~8 ~6 ~-5 ~10 ~6 oak_log []
setblock ~-5 ~11 ~6 lantern []
fill ~5 ~8 ~-6 ~5 ~10 ~-6 oak_log []
setblock ~5 ~11 ~-6 lantern []
fill ~5 ~8 ~6 ~5 ~10 ~6 oak_log []
setblock ~5 ~11 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-8 ~-7 ~5 ~-8 oak_log []
setblock ~-7 ~6 ~-8 lantern []
fill ~-7 ~0 ~8 ~-7 ~5 ~8 oak_log []
setblock ~-7 ~6 ~8 lantern []
fill ~7 ~0 ~-8 ~7 ~5 ~-8 oak_log []
setblock ~7 ~6 ~-8 lantern []
fill ~7 ~0 ~8 ~7 ~5 ~8 oak_log []
setblock ~7 ~6 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 oak_log []
fill ~-8 ~5 ~-7 ~8 ~5 ~-7 moss_block []
setblock ~-2 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 emerald_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 sweet_berries 14
replaceitem block ~4 ~1 ~5 slot.container 10 cooked_porkchop 11
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 12
replaceitem block ~4 ~1 ~5 slot.container 12 oak_log 16
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 4
replaceitem block ~4 ~1 ~5 slot.container 14 golden_apple 3
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

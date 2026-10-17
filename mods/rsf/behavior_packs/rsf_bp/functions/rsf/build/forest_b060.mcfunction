# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0188/4224 | 主题内编号: b060/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·圆形穹顶万骨祠堂 (forest_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 string 17
replaceitem block ~0 ~-3 ~4 slot.container 1 spider_eye 5
replaceitem block ~0 ~-3 ~4 slot.container 2 gunpowder 7
replaceitem block ~0 ~-3 ~4 slot.container 3 arrow 18
replaceitem block ~0 ~-3 ~4 slot.container 4 slime_ball 7
replaceitem block ~0 ~-3 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~4 slot.container 9 golden_apple 6
replaceitem block ~0 ~-3 ~4 slot.container 10 iron_axe 1
replaceitem block ~0 ~-3 ~4 slot.container 11 bow 1
replaceitem block ~0 ~-3 ~4 slot.container 12 lantern 5
replaceitem block ~0 ~-3 ~4 slot.container 13 honey_bottle 6
replaceitem block ~0 ~-3 ~4 slot.container 14 sweet_berries 13
loot insert ~0 ~-3 ~4 loot "rsf/forest"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 spider_eye 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-3 ~-4 slot.container 3 arrow 16
replaceitem block ~0 ~-3 ~-4 slot.container 4 slime_ball 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 5
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_axe 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 bow 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 lantern 4
replaceitem block ~0 ~-3 ~-4 slot.container 13 honey_bottle 5
replaceitem block ~0 ~-3 ~-4 slot.container 14 sweet_berries 12
loot insert ~0 ~-3 ~-4 loot "rsf/forest"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 oak_log []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 oak_log []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 oak_log []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 oak_log []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 oak_log []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 oak_log []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 oak_log []
fill ~1 ~1 ~6 ~1 ~7 ~6 oak_log []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 oak_log []
fill ~3 ~1 ~6 ~3 ~7 ~6 oak_log []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 oak_log []
fill ~5 ~1 ~6 ~5 ~7 ~6 oak_log []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 oak_log []
fill ~-5 ~1 ~-2 ~-5 ~7 ~-2 oak_log []
fill ~5 ~1 ~-2 ~5 ~7 ~-2 oak_log []
fill ~-5 ~1 ~0 ~-5 ~7 ~0 oak_log []
fill ~5 ~1 ~0 ~5 ~7 ~0 oak_log []
fill ~-5 ~1 ~2 ~-5 ~7 ~2 oak_log []
fill ~5 ~1 ~2 ~5 ~7 ~2 oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-6 ~5 ~8 ~6 stone_bricks []
fill ~-4 ~9 ~-5 ~4 ~10 ~5 glass []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 oak_log []
setblock ~0 ~4 ~-8 honeycomb_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 oak_log []
setblock ~0 ~4 ~8 honeycomb_block []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 oak_log []
setblock ~-7 ~4 ~0 honeycomb_block []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 oak_log []
setblock ~7 ~4 ~0 honeycomb_block []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-8 ~0 ~-9 ~-8 ~6 ~-9 oak_log []
fill ~8 ~0 ~-9 ~8 ~6 ~-9 oak_log []
fill ~-8 ~6 ~-9 ~8 ~6 ~-9 moss_block []
setblock ~-1 ~7 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 2 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 oak_log 22
replaceitem block ~-4 ~1 ~5 slot.container 10 emerald 3
replaceitem block ~-4 ~1 ~5 slot.container 11 golden_apple 2
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_axe 1
replaceitem block ~-4 ~1 ~5 slot.container 13 bow 1
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 8
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 15
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 9 oak_log 20
replaceitem block ~4 ~1 ~5 slot.container 10 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 11 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 12 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 13 bow 1
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 6
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-3 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0204/4224 | 主题内编号: b076/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·阶梯高台图腾战阵 (forest_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 9格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~13 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~-3 ~-4 ~-4 lantern []
setblock ~3 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 gunpowder 7
replaceitem block ~0 ~-2 ~4 slot.container 1 arrow 18
replaceitem block ~0 ~-2 ~4 slot.container 2 slime_ball 7
replaceitem block ~0 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-2 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~0 ~-2 ~4 slot.container 5 bone 16
replaceitem block ~0 ~-2 ~4 slot.container 9 oak_log 21
replaceitem block ~0 ~-2 ~4 slot.container 10 emerald 9
replaceitem block ~0 ~-2 ~4 slot.container 11 golden_apple 1
replaceitem block ~0 ~-2 ~4 slot.container 12 iron_axe 1
replaceitem block ~0 ~-2 ~4 slot.container 13 bow 1
replaceitem block ~0 ~-2 ~4 slot.container 14 lantern 7
loot insert ~0 ~-2 ~4 loot "rsf/forest"
loot insert ~0 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-6 ~5 ~2 ~6 mossy_stone_bricks []
fill ~-4 ~3 ~-5 ~4 ~4 ~5 stone_bricks []
fill ~-3 ~5 ~-4 ~3 ~9 ~4 oak_planks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 mossy_stone_bricks []
fill ~0 ~15 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 lantern []

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

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~-7 ~-8 ~7 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~7 ~-7 oak_log []
fill ~-8 ~7 ~-7 ~8 ~7 ~-7 moss_block []
setblock ~0 ~8 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 2 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_porkchop 7
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 11 oak_log 19
replaceitem block ~-4 ~1 ~5 slot.container 12 emerald 7
replaceitem block ~-4 ~1 ~5 slot.container 13 golden_apple 6
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_axe 1
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 15
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_porkchop 12
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 11 oak_log 17
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 13 golden_apple 4
replaceitem block ~4 ~1 ~5 slot.container 14 iron_axe 1
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

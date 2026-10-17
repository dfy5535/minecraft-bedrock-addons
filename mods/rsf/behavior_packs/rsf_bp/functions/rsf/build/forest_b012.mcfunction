# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0140/4224 | 主题内编号: b012/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双子暗门地底宝库 (forest_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 16
replaceitem block ~4 ~-3 ~3 slot.container 2 string 17
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 5
replaceitem block ~4 ~-3 ~3 slot.container 4 gunpowder 7
replaceitem block ~4 ~-3 ~3 slot.container 5 arrow 18
replaceitem block ~4 ~-3 ~3 slot.container 9 oak_log 19
replaceitem block ~4 ~-3 ~3 slot.container 10 emerald 7
replaceitem block ~4 ~-3 ~3 slot.container 11 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 12 iron_axe 1
replaceitem block ~4 ~-3 ~3 slot.container 13 bow 1
replaceitem block ~4 ~-3 ~3 slot.container 14 lantern 5
loot insert ~4 ~-3 ~3 loot "rsf/forest"
loot insert ~4 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~8 ~5 mossy_stone_bricks []
fill ~2 ~1 ~-5 ~6 ~8 ~5 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~5 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-6 ~-7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-6 ~7 ~8 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~5 ~9 ~5 stone_brick_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 oak_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 oak_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 oak_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~-9 ~0 ~-8 ~-9 ~8 ~-8 oak_log []
fill ~9 ~0 ~-8 ~9 ~8 ~-8 oak_log []
fill ~-9 ~8 ~-8 ~9 ~8 ~-8 moss_block []
setblock ~-3 ~9 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~10 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 10
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 honey_bottle 4
replaceitem block ~-5 ~1 ~4 slot.container 10 sweet_berries 11
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_porkchop 8
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 13 oak_log 20
replaceitem block ~-5 ~1 ~4 slot.container 14 emerald 8
loot insert ~-5 ~1 ~4 loot "rsf/forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 slime_ball 5
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~1 ~4 slot.container 3 bone 14
replaceitem block ~5 ~1 ~4 slot.container 4 string 15
replaceitem block ~5 ~1 ~4 slot.container 5 spider_eye 11
replaceitem block ~5 ~1 ~4 slot.container 9 honey_bottle 9
replaceitem block ~5 ~1 ~4 slot.container 10 sweet_berries 16
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_porkchop 6
replaceitem block ~5 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 13 oak_log 18
replaceitem block ~5 ~1 ~4 slot.container 14 emerald 6
loot insert ~5 ~1 ~4 loot "rsf/forest"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-3 ~0

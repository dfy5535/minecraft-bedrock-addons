# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0172/4224 | 主题内编号: b044/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双子祭台勇士角斗场 (forest_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~11 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 oak_planks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~-2 ~4 slot.container 1 bone 16
replaceitem block ~4 ~-2 ~4 slot.container 2 string 17
replaceitem block ~4 ~-2 ~4 slot.container 3 spider_eye 5
replaceitem block ~4 ~-2 ~4 slot.container 4 gunpowder 7
replaceitem block ~4 ~-2 ~4 slot.container 5 arrow 18
replaceitem block ~4 ~-2 ~4 slot.container 9 honey_bottle 4
replaceitem block ~4 ~-2 ~4 slot.container 10 sweet_berries 11
replaceitem block ~4 ~-2 ~4 slot.container 11 cooked_porkchop 8
replaceitem block ~4 ~-2 ~4 slot.container 12 iron_ingot 9
replaceitem block ~4 ~-2 ~4 slot.container 13 oak_log 20
replaceitem block ~4 ~-2 ~4 slot.container 14 emerald 8
loot insert ~4 ~-2 ~4 loot "rsf/forest"
loot insert ~4 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~8 ~6 mossy_stone_bricks []
fill ~2 ~1 ~-6 ~6 ~8 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-5 ~-3 ~7 ~5 air []
fill ~3 ~1 ~-5 ~5 ~7 ~5 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-6 ~-6 ~9 ~-6 oak_log []
setblock ~-6 ~10 ~-6 lantern []
fill ~-6 ~7 ~6 ~-6 ~9 ~6 oak_log []
setblock ~-6 ~10 ~6 lantern []
fill ~6 ~7 ~-6 ~6 ~9 ~-6 oak_log []
setblock ~6 ~10 ~-6 lantern []
fill ~6 ~7 ~6 ~6 ~9 ~6 oak_log []
setblock ~6 ~10 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 oak_log []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 oak_log []
fill ~-9 ~5 ~-8 ~9 ~5 ~-8 moss_block []
setblock ~-1 ~6 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~5 slot.container 2 slime_ball 10
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 10
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~5 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~5 slot.container 10 iron_axe 1
replaceitem block ~-5 ~1 ~5 slot.container 11 bow 1
replaceitem block ~-5 ~1 ~5 slot.container 12 lantern 4
replaceitem block ~-5 ~1 ~5 slot.container 13 honey_bottle 5
replaceitem block ~-5 ~1 ~5 slot.container 14 sweet_berries 12
loot insert ~-5 ~1 ~5 loot "rsf/forest"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 slime_ball 5
replaceitem block ~5 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~5 ~1 ~5 slot.container 3 bone 14
replaceitem block ~5 ~1 ~5 slot.container 4 string 15
replaceitem block ~5 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~5 ~1 ~5 slot.container 9 golden_apple 3
replaceitem block ~5 ~1 ~5 slot.container 10 iron_axe 1
replaceitem block ~5 ~1 ~5 slot.container 11 bow 1
replaceitem block ~5 ~1 ~5 slot.container 12 lantern 9
replaceitem block ~5 ~1 ~5 slot.container 13 honey_bottle 10
replaceitem block ~5 ~1 ~5 slot.container 14 sweet_berries 10
loot insert ~5 ~1 ~5 loot "rsf/forest"
loot insert ~5 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

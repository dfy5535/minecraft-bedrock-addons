# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0256/4224 | 主题内编号: b128/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·U型紫禁朝堂大殿与地底金库 (forest_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~13 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~5 anvil []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~5 slot.container 0 gunpowder 7
replaceitem block ~4 ~-3 ~5 slot.container 1 arrow 18
replaceitem block ~4 ~-3 ~5 slot.container 2 slime_ball 7
replaceitem block ~4 ~-3 ~5 slot.container 3 ender_pearl 6
replaceitem block ~4 ~-3 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~-3 ~5 slot.container 5 bone 16
replaceitem block ~4 ~-3 ~5 slot.container 9 oak_log 19
replaceitem block ~4 ~-3 ~5 slot.container 10 emerald 7
replaceitem block ~4 ~-3 ~5 slot.container 11 golden_apple 6
replaceitem block ~4 ~-3 ~5 slot.container 12 iron_axe 1
replaceitem block ~4 ~-3 ~5 slot.container 13 bow 1
replaceitem block ~4 ~-3 ~5 slot.container 14 lantern 5
loot insert ~4 ~-3 ~5 loot "rsf/forest"
loot insert ~4 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~9 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-8 ~7 ~9 ~8 stone_brick_slab []
fill ~-5 ~10 ~-6 ~5 ~11 ~6 oak_planks []
fill ~-6 ~12 ~-7 ~6 ~12 ~7 oak_slab []
setblock ~0 ~13 ~0 chiseled_stone_bricks []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 cobblestone_wall []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~-9 ~0 ~-9 ~-9 ~4 ~-9 oak_log []
fill ~9 ~0 ~-9 ~9 ~4 ~-9 oak_log []
fill ~-9 ~4 ~-9 ~9 ~4 ~-9 moss_block []
setblock ~-1 ~5 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 10
replaceitem block ~-5 ~1 ~6 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~6 slot.container 2 string 12
replaceitem block ~-5 ~1 ~6 slot.container 3 spider_eye 8
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~6 slot.container 9 bow 1
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 9
replaceitem block ~-5 ~1 ~6 slot.container 11 honey_bottle 10
replaceitem block ~-5 ~1 ~6 slot.container 12 sweet_berries 10
replaceitem block ~-5 ~1 ~6 slot.container 13 cooked_porkchop 7
replaceitem block ~-5 ~1 ~6 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~6 loot "rsf/forest"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 15
replaceitem block ~5 ~1 ~6 slot.container 1 spider_eye 11
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 arrow 16
replaceitem block ~5 ~1 ~6 slot.container 4 slime_ball 5
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 bow 1
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 7
replaceitem block ~5 ~1 ~6 slot.container 11 honey_bottle 8
replaceitem block ~5 ~1 ~6 slot.container 12 sweet_berries 15
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_porkchop 12
replaceitem block ~5 ~1 ~6 slot.container 14 iron_ingot 6
loot insert ~5 ~1 ~6 loot "rsf/forest"
loot insert ~5 ~1 ~6 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

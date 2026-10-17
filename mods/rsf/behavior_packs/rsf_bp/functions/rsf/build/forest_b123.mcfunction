# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0251/4224 | 主题内编号: b123/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·四角塔楼领主城堡复合体 (forest_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 cobblestone []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-6 ~0 ~0 ~-6 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~5 lantern []
setblock ~4 ~-6 ~-5 lantern []
setblock ~4 ~-4 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~5 slot.container 0 arrow 18
replaceitem block ~4 ~-4 ~5 slot.container 1 slime_ball 7
replaceitem block ~4 ~-4 ~5 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~4 ~-4 ~5 slot.container 4 bone 16
replaceitem block ~4 ~-4 ~5 slot.container 5 string 17
replaceitem block ~4 ~-4 ~5 slot.container 9 emerald 4
replaceitem block ~4 ~-4 ~5 slot.container 10 golden_apple 3
replaceitem block ~4 ~-4 ~5 slot.container 11 iron_axe 1
replaceitem block ~4 ~-4 ~5 slot.container 12 bow 1
replaceitem block ~4 ~-4 ~5 slot.container 13 lantern 9
replaceitem block ~4 ~-4 ~5 slot.container 14 honey_bottle 10
loot insert ~4 ~-4 ~5 loot "rsf/forest"
loot insert ~4 ~-4 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 cobblestone []
fill ~-5 ~1 ~-6 ~5 ~8 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~11 ~-6 mossy_stone_bricks []
setblock ~-6 ~12 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~11 ~7 mossy_stone_bricks []
setblock ~-6 ~12 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~11 ~-6 mossy_stone_bricks []
setblock ~5 ~12 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~11 ~7 mossy_stone_bricks []
setblock ~5 ~12 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 mossy_stone_bricks []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 cobblestone_wall []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 air []
setblock ~-6 ~10 ~-7 oak_log []
setblock ~-6 ~11 ~-7 lantern []
setblock ~-6 ~10 ~7 oak_log []
setblock ~-6 ~11 ~7 lantern []
setblock ~6 ~10 ~-7 oak_log []
setblock ~6 ~11 ~-7 lantern []
setblock ~6 ~10 ~7 oak_log []
setblock ~6 ~11 ~7 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x10x2) ---
fill ~-9 ~0 ~-10 ~-9 ~4 ~-10 oak_log []
fill ~9 ~0 ~-10 ~9 ~4 ~-10 oak_log []
fill ~-9 ~4 ~-10 ~9 ~4 ~-10 moss_block []
setblock ~0 ~5 ~-10 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 spider_eye 8
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~6 slot.container 3 slime_ball 10
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 10
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~6 slot.container 10 oak_log 16
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 4
replaceitem block ~5 ~1 ~6 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~6 slot.container 13 iron_axe 1
replaceitem block ~5 ~1 ~6 slot.container 14 bow 1
loot insert ~5 ~1 ~6 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0

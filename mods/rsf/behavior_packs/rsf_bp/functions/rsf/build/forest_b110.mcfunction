# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0238/4224 | 主题内编号: b110/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·双子附魔与酿造实验楼 (forest_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 17
replaceitem block ~4 ~-2 ~3 slot.container 1 spider_eye 5
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 3 arrow 18
replaceitem block ~4 ~-2 ~3 slot.container 4 slime_ball 7
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 9 bow 1
replaceitem block ~4 ~-2 ~3 slot.container 10 lantern 8
replaceitem block ~4 ~-2 ~3 slot.container 11 honey_bottle 9
replaceitem block ~4 ~-2 ~3 slot.container 12 sweet_berries 16
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_porkchop 6
replaceitem block ~4 ~-2 ~3 slot.container 14 iron_ingot 7
loot insert ~4 ~-2 ~3 loot "rsf/forest"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~9 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~6 ~9 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 moss_block []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 spruce_slab []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 cobblestone []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 stone_brick_slab []
setblock ~0 ~12 ~0 bookshelf []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 moss_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-9 ~0 ~-7 ~-9 ~6 ~-7 spruce_log []
fill ~9 ~0 ~-7 ~9 ~6 ~-7 spruce_log []
fill ~-9 ~6 ~-7 ~9 ~6 ~-7 moss_block []
setblock ~-1 ~7 ~-7 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 10
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 4 string 12
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 9 oak_log 16
replaceitem block ~-5 ~1 ~4 slot.container 10 emerald 4
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~-5 ~1 ~4 slot.container 13 bow 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 9
loot insert ~-5 ~1 ~4 loot "rsf/forest"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 string 15
replaceitem block ~5 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 5 arrow 16
replaceitem block ~5 ~1 ~4 slot.container 9 oak_log 21
replaceitem block ~5 ~1 ~4 slot.container 10 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 1
replaceitem block ~5 ~1 ~4 slot.container 12 iron_axe 1
replaceitem block ~5 ~1 ~4 slot.container 13 bow 1
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 7
loot insert ~5 ~1 ~4 loot "rsf/forest"
loot insert ~5 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

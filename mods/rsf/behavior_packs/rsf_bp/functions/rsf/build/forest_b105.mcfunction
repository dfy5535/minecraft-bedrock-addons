# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0233/4224 | 主题内编号: b105/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·满书架奥术附魔书院 (forest_arcane_enchant_library)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~12 ~8 air [] replace log2
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 oak_planks [] replace air
fill ~-5 ~-5 ~-7 ~5 ~-1 ~7 oak_planks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 oak_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-5 ~3 ~-1 ~5 stone_bricks []
fill ~-2 ~-5 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~4 slot.container 0 arrow 18
replaceitem block ~2 ~-3 ~4 slot.container 1 slime_ball 7
replaceitem block ~2 ~-3 ~4 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~2 ~-3 ~4 slot.container 4 bone 16
replaceitem block ~2 ~-3 ~4 slot.container 5 string 17
replaceitem block ~2 ~-3 ~4 slot.container 9 iron_ingot 11
replaceitem block ~2 ~-3 ~4 slot.container 10 oak_log 22
replaceitem block ~2 ~-3 ~4 slot.container 11 emerald 3
replaceitem block ~2 ~-3 ~4 slot.container 12 golden_apple 2
replaceitem block ~2 ~-3 ~4 slot.container 13 iron_axe 1
replaceitem block ~2 ~-3 ~4 slot.container 14 bow 1
loot insert ~2 ~-3 ~4 loot "rsf/forest"
loot insert ~2 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-6 ~4 ~8 ~6 oak_planks []
fill ~-3 ~1 ~-5 ~3 ~7 ~5 air []
fill ~-4 ~1 ~-6 ~-4 ~8 ~-6 stripped_oak_log []
fill ~-4 ~1 ~6 ~-4 ~8 ~6 stripped_oak_log []
fill ~4 ~1 ~-6 ~4 ~8 ~-6 stripped_oak_log []
fill ~4 ~1 ~6 ~4 ~8 ~6 stripped_oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-4 ~2 ~0 oak_fence []
setblock ~4 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~9 ~-7 ~-5 ~9 ~7 oak_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-7 ~5 ~9 ~7 oak_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-6 ~-4 ~10 ~6 oak_stairs ["weirdo_direction"=0]
fill ~4 ~10 ~-6 ~4 ~10 ~6 oak_stairs ["weirdo_direction"=1]
fill ~-3 ~10 ~-6 ~3 ~10 ~6 oak_slab []
fill ~0 ~11 ~-7 ~0 ~11 ~7 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 oak_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-7 ~0 ~-9 ~-7 ~6 ~-9 stripped_oak_log []
fill ~7 ~0 ~-9 ~7 ~6 ~-9 stripped_oak_log []
fill ~-7 ~6 ~-9 ~7 ~6 ~-9 moss_block []
setblock ~1 ~7 ~-9 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-3 ~1 ~0 lectern []
setblock ~3 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 bone 11
replaceitem block ~3 ~1 ~5 slot.container 1 string 12
replaceitem block ~3 ~1 ~5 slot.container 2 spider_eye 8
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 4 arrow 21
replaceitem block ~3 ~1 ~5 slot.container 5 slime_ball 10
replaceitem block ~3 ~1 ~5 slot.container 9 lantern 6
replaceitem block ~3 ~1 ~5 slot.container 10 honey_bottle 7
replaceitem block ~3 ~1 ~5 slot.container 11 sweet_berries 14
replaceitem block ~3 ~1 ~5 slot.container 12 cooked_porkchop 11
replaceitem block ~3 ~1 ~5 slot.container 13 iron_ingot 12
replaceitem block ~3 ~1 ~5 slot.container 14 oak_log 16
loot insert ~3 ~1 ~5 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0

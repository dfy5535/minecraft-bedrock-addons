# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0143/4224 | 主题内编号: b015/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·竖井阶梯深渊地牢 (forest_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 6格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-7 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-7 ~-4 ~3 ~-1 ~4 air []
fill ~-3 ~-7 ~0 ~3 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-2 ~-7 ~3 lantern []
setblock ~2 ~-7 ~-3 lantern []
setblock ~2 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~-5 ~3 slot.container 0 bone 16
replaceitem block ~2 ~-5 ~3 slot.container 1 string 17
replaceitem block ~2 ~-5 ~3 slot.container 2 spider_eye 5
replaceitem block ~2 ~-5 ~3 slot.container 3 gunpowder 7
replaceitem block ~2 ~-5 ~3 slot.container 4 arrow 18
replaceitem block ~2 ~-5 ~3 slot.container 5 slime_ball 7
replaceitem block ~2 ~-5 ~3 slot.container 9 sweet_berries 15
replaceitem block ~2 ~-5 ~3 slot.container 10 cooked_porkchop 12
replaceitem block ~2 ~-5 ~3 slot.container 11 iron_ingot 6
replaceitem block ~2 ~-5 ~3 slot.container 12 oak_log 17
replaceitem block ~2 ~-5 ~3 slot.container 13 emerald 5
replaceitem block ~2 ~-5 ~3 slot.container 14 golden_apple 4
loot insert ~2 ~-5 ~3 loot "rsf/forest"
loot insert ~2 ~-5 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 cobblestone []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 mossy_stone_bricks []
fill ~-2 ~5 ~-3 ~2 ~8 ~3 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~16 ~0 emerald_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-7 ~-6 ~5 ~-7 oak_log []
setblock ~-6 ~6 ~-7 lantern []
fill ~-6 ~0 ~7 ~-6 ~5 ~7 oak_log []
setblock ~-6 ~6 ~7 lantern []
fill ~6 ~0 ~-7 ~6 ~5 ~-7 oak_log []
setblock ~6 ~6 ~-7 lantern []
fill ~6 ~0 ~7 ~6 ~5 ~7 oak_log []
setblock ~6 ~6 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~-8 ~-7 ~6 ~-8 oak_log []
fill ~7 ~0 ~-8 ~7 ~6 ~-8 oak_log []
fill ~-7 ~6 ~-8 ~7 ~6 ~-8 moss_block []
setblock ~-1 ~7 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 10
replaceitem block ~3 ~1 ~4 slot.container 2 bone 11
replaceitem block ~3 ~1 ~4 slot.container 3 string 12
replaceitem block ~3 ~1 ~4 slot.container 4 spider_eye 8
replaceitem block ~3 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 9 lantern 7
replaceitem block ~3 ~1 ~4 slot.container 10 honey_bottle 8
replaceitem block ~3 ~1 ~4 slot.container 11 sweet_berries 15
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_porkchop 12
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 14 oak_log 17
loot insert ~3 ~1 ~4 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-5 ~0

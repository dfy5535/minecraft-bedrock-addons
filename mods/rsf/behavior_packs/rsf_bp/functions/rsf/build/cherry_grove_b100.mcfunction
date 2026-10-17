# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1892/4224 | 主题内编号: b100/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·半地下暗堡火力点 (cherry_grove_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air [] replace log2
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 quartz_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~-4 ~2 slot.container 1 bone 14
replaceitem block ~3 ~-4 ~2 slot.container 2 string 15
replaceitem block ~3 ~-4 ~2 slot.container 3 gunpowder 6
replaceitem block ~3 ~-4 ~2 slot.container 4 arrow 17
replaceitem block ~3 ~-4 ~2 slot.container 5 ender_pearl 4
replaceitem block ~3 ~-4 ~2 slot.container 9 honey_bottle 5
replaceitem block ~3 ~-4 ~2 slot.container 10 honeycomb 8
replaceitem block ~3 ~-4 ~2 slot.container 11 golden_apple 5
replaceitem block ~3 ~-4 ~2 slot.container 12 iron_ingot 10
replaceitem block ~3 ~-4 ~2 slot.container 13 emerald 9
replaceitem block ~3 ~-4 ~2 slot.container 14 amethyst_shard 12
loot insert ~3 ~-4 ~2 loot "rsf/cherry_grove"
loot insert ~3 ~-4 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 cherry_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 cherry_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-4 ~5 ~4 ~4 cherry_planks []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 cobblestone_wall []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 air []
setblock ~-5 ~5 ~-4 stripped_cherry_log []
setblock ~-5 ~6 ~-4 lantern []
setblock ~-5 ~5 ~4 stripped_cherry_log []
setblock ~-5 ~6 ~4 lantern []
setblock ~5 ~5 ~-4 stripped_cherry_log []
setblock ~5 ~6 ~-4 lantern []
setblock ~5 ~5 ~4 stripped_cherry_log []
setblock ~5 ~6 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-2 ~0 ~-7 ~-2 ~4 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~4 ~-7 cherry_log []
fill ~-3 ~4 ~-7 ~3 ~4 ~-7 cherry_slab []
fill ~-2 ~3 ~-7 ~2 ~3 ~-7 stripped_cherry_log []
setblock ~-2 ~5 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 7
replaceitem block ~-4 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 3 feather 15
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 8
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 9 emerald 6
replaceitem block ~-4 ~1 ~2 slot.container 10 amethyst_shard 9
replaceitem block ~-4 ~1 ~2 slot.container 11 bow 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 13 cherry_log 22
replaceitem block ~-4 ~1 ~2 slot.container 14 cherry_sapling 4
loot insert ~-4 ~1 ~2 loot "rsf/cherry_grove"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon bee ~1 ~1 ~1
summon allay ~0 ~-4 ~0

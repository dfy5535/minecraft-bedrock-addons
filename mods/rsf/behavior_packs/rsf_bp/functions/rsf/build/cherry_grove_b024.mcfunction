# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1816/4224 | 主题内编号: b024/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·半地下掩体储藏室 (cherry_grove_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
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
replaceitem block ~3 ~-4 ~2 slot.container 0 arrow 17
replaceitem block ~3 ~-4 ~2 slot.container 1 ender_pearl 4
replaceitem block ~3 ~-4 ~2 slot.container 2 phantom_membrane 5
replaceitem block ~3 ~-4 ~2 slot.container 3 feather 12
replaceitem block ~3 ~-4 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~3 ~-4 ~2 slot.container 5 bone 14
replaceitem block ~3 ~-4 ~2 slot.container 9 golden_apple 4
replaceitem block ~3 ~-4 ~2 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-4 ~2 slot.container 11 emerald 8
replaceitem block ~3 ~-4 ~2 slot.container 12 amethyst_shard 11
replaceitem block ~3 ~-4 ~2 slot.container 13 bow 1
replaceitem block ~3 ~-4 ~2 slot.container 14 lantern 4
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

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~-2 ~0 ~-6 ~-2 ~8 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~8 ~-6 cherry_log []
fill ~-3 ~8 ~-6 ~3 ~8 ~-6 cherry_slab []
fill ~-2 ~7 ~-6 ~2 ~7 ~-6 stripped_cherry_log []
setblock ~2 ~9 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 8
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 2 string 10
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 7
replaceitem block ~-4 ~1 ~2 slot.container 9 bow 1
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 8
replaceitem block ~-4 ~1 ~2 slot.container 11 cherry_log 21
replaceitem block ~-4 ~1 ~2 slot.container 12 cherry_sapling 10
replaceitem block ~-4 ~1 ~2 slot.container 13 honey_bottle 4
replaceitem block ~-4 ~1 ~2 slot.container 14 honeycomb 7
loot insert ~-4 ~1 ~2 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

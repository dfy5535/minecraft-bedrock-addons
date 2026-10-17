# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1810/4224 | 主题内编号: b018/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·L型转角领主秘宝屋 (cherry_grove_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cherry_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cherry_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 polished_deepslate []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 cherry_planks []
fill ~-6 ~1 ~0 ~6 ~4 ~5 cherry_planks []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 cherry_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 cherry_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 cherry_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 cherry_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cherry_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 polished_deepslate []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 calcite []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-2 ~0 ~-7 ~-2 ~7 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~7 ~-7 cherry_log []
fill ~-3 ~7 ~-7 ~3 ~7 ~-7 cherry_slab []
fill ~-2 ~6 ~-7 ~2 ~6 ~-7 stripped_cherry_log []
setblock ~0 ~8 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~0 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 10
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 2 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 7
replaceitem block ~-5 ~1 ~3 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 5 feather 15
replaceitem block ~-5 ~1 ~3 slot.container 9 cherry_log 20
replaceitem block ~-5 ~1 ~3 slot.container 10 cherry_sapling 9
replaceitem block ~-5 ~1 ~3 slot.container 11 honey_bottle 10
replaceitem block ~-5 ~1 ~3 slot.container 12 honeycomb 6
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

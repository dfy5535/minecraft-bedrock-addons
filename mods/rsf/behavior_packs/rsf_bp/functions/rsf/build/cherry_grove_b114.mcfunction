# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1906/4224 | 主题内编号: b114/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双联拱顶植物培育馆 (cherry_grove_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cherry_planks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cherry_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cherry_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 polished_deepslate []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 cherry_planks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 cherry_planks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 polished_deepslate []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~5 ~-4 ~7 ~5 ~4 polished_deepslate []
fill ~-6 ~6 ~-3 ~6 ~7 ~3 glass []
fill ~-5 ~6 ~-2 ~5 ~6 ~2 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 calcite []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-2 ~0 ~-6 ~-2 ~8 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~8 ~-6 cherry_log []
fill ~-3 ~8 ~-6 ~3 ~8 ~-6 cherry_slab []
fill ~-2 ~7 ~-6 ~2 ~7 ~-6 stripped_cherry_log []
setblock ~2 ~9 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 10
replaceitem block ~-6 ~1 ~2 slot.container 1 gunpowder 9
replaceitem block ~-6 ~1 ~2 slot.container 2 arrow 20
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 7
replaceitem block ~-6 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 5 feather 15
replaceitem block ~-6 ~1 ~2 slot.container 9 bow 1
replaceitem block ~-6 ~1 ~2 slot.container 10 lantern 7
replaceitem block ~-6 ~1 ~2 slot.container 11 cherry_log 20
replaceitem block ~-6 ~1 ~2 slot.container 12 cherry_sapling 9
replaceitem block ~-6 ~1 ~2 slot.container 13 honey_bottle 10
replaceitem block ~-6 ~1 ~2 slot.container 14 honeycomb 6
loot insert ~-6 ~1 ~2 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

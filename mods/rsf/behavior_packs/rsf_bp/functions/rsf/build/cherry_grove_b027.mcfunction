# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1819/4224 | 主题内编号: b027/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双子连廊警戒塔楼 (cherry_grove_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~12 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 cherry_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 cherry_planks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cherry_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 cherry_planks []
fill ~2 ~1 ~-3 ~6 ~9 ~3 cherry_planks []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 stone_bricks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-3 ~6 ~8 ~3 stone_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 cherry_fence []
fill ~-5 ~9 ~-2 ~5 ~9 ~2 air []
setblock ~-6 ~9 ~-3 cherry_log []
setblock ~-6 ~10 ~-3 lantern []
setblock ~-6 ~9 ~3 cherry_log []
setblock ~-6 ~10 ~3 lantern []
setblock ~6 ~9 ~-3 cherry_log []
setblock ~6 ~10 ~-3 lantern []
setblock ~6 ~9 ~3 cherry_log []
setblock ~6 ~10 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 stone_bricks []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 lantern []
setblock ~2 ~4 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x4x4) ---
fill ~-2 ~0 ~-5 ~-2 ~6 ~-5 cherry_log []
fill ~2 ~0 ~-5 ~2 ~6 ~-5 cherry_log []
fill ~-3 ~6 ~-5 ~3 ~6 ~-5 cherry_slab []
fill ~-2 ~5 ~-5 ~2 ~5 ~-5 stripped_cherry_log []
setblock ~-3 ~7 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 amethyst_block []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 gunpowder 9
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~1 slot.container 2 ender_pearl 7
replaceitem block ~5 ~1 ~1 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~1 slot.container 4 feather 15
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 8
replaceitem block ~5 ~1 ~1 slot.container 9 amethyst_shard 12
replaceitem block ~5 ~1 ~1 slot.container 10 bow 1
replaceitem block ~5 ~1 ~1 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~1 slot.container 12 cherry_log 18
replaceitem block ~5 ~1 ~1 slot.container 13 cherry_sapling 7
replaceitem block ~5 ~1 ~1 slot.container 14 honey_bottle 8
loot insert ~5 ~1 ~1 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 2
replaceitem block ~-5 ~1 ~2 slot.container 1 phantom_membrane 3
replaceitem block ~-5 ~1 ~2 slot.container 2 feather 10
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~2 slot.container 5 string 13
replaceitem block ~-5 ~1 ~2 slot.container 9 amethyst_shard 10
replaceitem block ~-5 ~1 ~2 slot.container 10 bow 1
replaceitem block ~-5 ~1 ~2 slot.container 11 lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 12 cherry_log 16
replaceitem block ~-5 ~1 ~2 slot.container 13 cherry_sapling 5
replaceitem block ~-5 ~1 ~2 slot.container 14 honey_bottle 6
loot insert ~-5 ~1 ~2 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~2 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1853/4224 | 主题内编号: b061/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双子封土古墓地宫 (cherry_grove_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 calcite [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 calcite [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cherry_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cherry_planks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cherry_planks []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 feather 12
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 14
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 15
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 iron_ingot 7
replaceitem block ~0 ~-3 ~-2 slot.container 10 emerald 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 amethyst_shard 9
replaceitem block ~0 ~-3 ~-2 slot.container 12 bow 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 lantern 9
replaceitem block ~0 ~-3 ~-2 slot.container 14 cherry_log 22
loot insert ~0 ~-3 ~-2 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 calcite []
fill ~2 ~1 ~-4 ~7 ~6 ~4 calcite []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 cherry_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 cherry_planks []
fill ~-6 ~7 ~-3 ~6 ~7 ~3 cherry_planks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 amethyst_block []
setblock ~0 ~9 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cherry_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-2 ~0 ~-7 ~-2 ~5 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~5 ~-7 cherry_log []
fill ~-3 ~5 ~-7 ~3 ~5 ~-7 cherry_slab []
fill ~-2 ~4 ~-7 ~2 ~4 ~-7 stripped_cherry_log []
setblock ~-2 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 7
replaceitem block ~6 ~1 ~2 slot.container 1 phantom_membrane 8
replaceitem block ~6 ~1 ~2 slot.container 2 feather 15
replaceitem block ~6 ~1 ~2 slot.container 3 rotten_flesh 8
replaceitem block ~6 ~1 ~2 slot.container 4 bone 9
replaceitem block ~6 ~1 ~2 slot.container 5 string 10
replaceitem block ~6 ~1 ~2 slot.container 9 lantern 9
replaceitem block ~6 ~1 ~2 slot.container 10 cherry_log 22
replaceitem block ~6 ~1 ~2 slot.container 11 cherry_sapling 4
replaceitem block ~6 ~1 ~2 slot.container 12 honey_bottle 5
replaceitem block ~6 ~1 ~2 slot.container 13 honeycomb 8
replaceitem block ~6 ~1 ~2 slot.container 14 golden_apple 5
loot insert ~6 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 feather 10
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 3 string 13
replaceitem block ~-6 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-6 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~-6 ~1 ~3 slot.container 10 cherry_log 20
replaceitem block ~-6 ~1 ~3 slot.container 11 cherry_sapling 9
replaceitem block ~-6 ~1 ~3 slot.container 12 honey_bottle 10
replaceitem block ~-6 ~1 ~3 slot.container 13 honeycomb 6
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~-6 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-6 ~1 ~3 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0

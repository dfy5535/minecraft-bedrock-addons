# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1902/4224 | 主题内编号: b110/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双子附魔与酿造实验楼 (cherry_grove_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cherry_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cherry_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cherry_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 cherry_planks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 string 15
replaceitem block ~5 ~-3 ~2 slot.container 1 gunpowder 6
replaceitem block ~5 ~-3 ~2 slot.container 2 arrow 17
replaceitem block ~5 ~-3 ~2 slot.container 3 ender_pearl 4
replaceitem block ~5 ~-3 ~2 slot.container 4 phantom_membrane 5
replaceitem block ~5 ~-3 ~2 slot.container 5 feather 12
replaceitem block ~5 ~-3 ~2 slot.container 9 cherry_log 17
replaceitem block ~5 ~-3 ~2 slot.container 10 cherry_sapling 6
replaceitem block ~5 ~-3 ~2 slot.container 11 honey_bottle 7
replaceitem block ~5 ~-3 ~2 slot.container 12 honeycomb 10
replaceitem block ~5 ~-3 ~2 slot.container 13 golden_apple 7
replaceitem block ~5 ~-3 ~2 slot.container 14 iron_ingot 12
loot insert ~5 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~5 ~-3 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 cherry_planks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 cherry_planks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 polished_deepslate []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~6 ~-5 ~8 ~6 ~5 cherry_slab []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 cherry_planks []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 cherry_slab []
setblock ~0 ~10 ~0 gold_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_deepslate []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-2 ~0 ~-8 ~-2 ~4 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~4 ~-8 cherry_log []
fill ~-3 ~4 ~-8 ~3 ~4 ~-8 cherry_slab []
fill ~-2 ~3 ~-8 ~2 ~3 ~-8 stripped_cherry_log []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 1 feather 15
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 8
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-6 ~1 ~2 slot.container 4 string 10
replaceitem block ~-6 ~1 ~2 slot.container 5 gunpowder 9
replaceitem block ~-6 ~1 ~2 slot.container 9 emerald 9
replaceitem block ~-6 ~1 ~2 slot.container 10 amethyst_shard 12
replaceitem block ~-6 ~1 ~2 slot.container 11 bow 1
replaceitem block ~-6 ~1 ~2 slot.container 12 lantern 5
replaceitem block ~-6 ~1 ~2 slot.container 13 cherry_log 18
replaceitem block ~-6 ~1 ~2 slot.container 14 cherry_sapling 7
loot insert ~-6 ~1 ~2 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

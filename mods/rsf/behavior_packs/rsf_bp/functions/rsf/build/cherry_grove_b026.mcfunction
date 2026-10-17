# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1818/4224 | 主题内编号: b026/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·尖顶信标引航高塔 (cherry_grove_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~14 ~5 air [] replace log2
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cherry_planks [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cherry_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cherry_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 cherry_planks []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 phantom_membrane 5
replaceitem block ~2 ~-3 ~1 slot.container 1 feather 12
replaceitem block ~2 ~-3 ~1 slot.container 2 rotten_flesh 13
replaceitem block ~2 ~-3 ~1 slot.container 3 bone 14
replaceitem block ~2 ~-3 ~1 slot.container 4 string 15
replaceitem block ~2 ~-3 ~1 slot.container 5 gunpowder 6
replaceitem block ~2 ~-3 ~1 slot.container 9 bow 1
replaceitem block ~2 ~-3 ~1 slot.container 10 lantern 6
replaceitem block ~2 ~-3 ~1 slot.container 11 cherry_log 19
replaceitem block ~2 ~-3 ~1 slot.container 12 cherry_sapling 8
replaceitem block ~2 ~-3 ~1 slot.container 13 honey_bottle 9
replaceitem block ~2 ~-3 ~1 slot.container 14 honeycomb 12
loot insert ~2 ~-3 ~1 loot "rsf/cherry_grove"
loot insert ~2 ~-3 ~1 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 cherry_planks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 air []
fill ~4 ~1 ~3 ~4 ~11 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~10 ~-2 cherry_log []
fill ~3 ~1 ~-2 ~3 ~10 ~-2 cherry_log []
fill ~-3 ~1 ~2 ~-3 ~10 ~2 cherry_log []
fill ~3 ~1 ~2 ~3 ~10 ~2 cherry_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 polished_deepslate []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cherry_planks []
fill ~0 ~16 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 cherry_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 cherry_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 cherry_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 cherry_log []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-2 ~0 ~-7 ~-2 ~5 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~5 ~-7 cherry_log []
fill ~-3 ~5 ~-7 ~3 ~5 ~-7 cherry_slab []
fill ~-2 ~4 ~-7 ~2 ~4 ~-7 stripped_cherry_log []
setblock ~1 ~6 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 string 10
replaceitem block ~-3 ~1 ~1 slot.container 1 gunpowder 9
replaceitem block ~-3 ~1 ~1 slot.container 2 arrow 20
replaceitem block ~-3 ~1 ~1 slot.container 3 ender_pearl 7
replaceitem block ~-3 ~1 ~1 slot.container 4 phantom_membrane 8
replaceitem block ~-3 ~1 ~1 slot.container 5 feather 15
replaceitem block ~-3 ~1 ~1 slot.container 9 golden_apple 7
replaceitem block ~-3 ~1 ~1 slot.container 10 iron_ingot 12
replaceitem block ~-3 ~1 ~1 slot.container 11 emerald 4
replaceitem block ~-3 ~1 ~1 slot.container 12 amethyst_shard 7
replaceitem block ~-3 ~1 ~1 slot.container 13 bow 1
replaceitem block ~-3 ~1 ~1 slot.container 14 lantern 7
loot insert ~-3 ~1 ~1 loot "rsf/cherry_grove"
summon pillager ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

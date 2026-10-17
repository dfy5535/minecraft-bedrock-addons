# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1905/4224 | 主题内编号: b113/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·八角全采光生态温室 (cherry_grove_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 calcite [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cherry_planks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~2 slot.container 0 gunpowder 6
replaceitem block ~-3 ~-2 ~2 slot.container 1 arrow 17
replaceitem block ~-3 ~-2 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-3 ~-2 ~2 slot.container 3 phantom_membrane 5
replaceitem block ~-3 ~-2 ~2 slot.container 4 feather 12
replaceitem block ~-3 ~-2 ~2 slot.container 5 rotten_flesh 13
replaceitem block ~-3 ~-2 ~2 slot.container 9 cherry_sapling 6
replaceitem block ~-3 ~-2 ~2 slot.container 10 honey_bottle 7
replaceitem block ~-3 ~-2 ~2 slot.container 11 honeycomb 10
replaceitem block ~-3 ~-2 ~2 slot.container 12 golden_apple 7
replaceitem block ~-3 ~-2 ~2 slot.container 13 iron_ingot 12
replaceitem block ~-3 ~-2 ~2 slot.container 14 emerald 4
loot insert ~-3 ~-2 ~2 loot "rsf/cherry_grove"
loot insert ~-3 ~-2 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 calcite []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 cherry_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 cherry_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 cherry_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 cherry_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 cherry_planks []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 cherry_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 cherry_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 cherry_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 cherry_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-2 ~0 ~-8 ~-2 ~7 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~7 ~-8 cherry_log []
fill ~-3 ~7 ~-8 ~3 ~7 ~-8 cherry_slab []
fill ~-2 ~6 ~-8 ~2 ~6 ~-8 stripped_cherry_log []
setblock ~1 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 9
replaceitem block ~4 ~1 ~2 slot.container 1 string 10
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 9
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 7
replaceitem block ~4 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 9 iron_ingot 7
replaceitem block ~4 ~1 ~2 slot.container 10 emerald 6
replaceitem block ~4 ~1 ~2 slot.container 11 amethyst_shard 9
replaceitem block ~4 ~1 ~2 slot.container 12 bow 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 9
replaceitem block ~4 ~1 ~2 slot.container 14 cherry_log 22
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 2
replaceitem block ~-4 ~1 ~3 slot.container 3 phantom_membrane 3
replaceitem block ~-4 ~1 ~3 slot.container 4 feather 10
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 10 emerald 4
replaceitem block ~-4 ~1 ~3 slot.container 11 amethyst_shard 7
replaceitem block ~-4 ~1 ~3 slot.container 12 bow 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 14 cherry_log 20
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1

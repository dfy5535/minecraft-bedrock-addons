# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1867/4224 | 主题内编号: b075/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·远古巨石环廊法阵 (cherry_grove_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 cherry_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 cherry_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 cherry_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 calcite []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 honeycomb_block []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-2 ~-4 slot.container 1 phantom_membrane 5
replaceitem block ~0 ~-2 ~-4 slot.container 2 feather 12
replaceitem block ~0 ~-2 ~-4 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-2 ~-4 slot.container 4 bone 14
replaceitem block ~0 ~-2 ~-4 slot.container 5 string 15
replaceitem block ~0 ~-2 ~-4 slot.container 9 amethyst_shard 7
replaceitem block ~0 ~-2 ~-4 slot.container 10 bow 1
replaceitem block ~0 ~-2 ~-4 slot.container 11 lantern 7
replaceitem block ~0 ~-2 ~-4 slot.container 12 cherry_log 20
replaceitem block ~0 ~-2 ~-4 slot.container 13 cherry_sapling 9
replaceitem block ~0 ~-2 ~-4 slot.container 14 honey_bottle 10
loot insert ~0 ~-2 ~-4 loot "rsf/cherry_grove"
loot insert ~0 ~-2 ~-4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~5 ~-6 cherry_log []
fill ~-7 ~1 ~6 ~-7 ~5 ~6 cherry_log []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 cherry_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 cherry_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 cherry_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 cherry_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 cherry_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 cherry_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 cherry_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 cherry_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 cherry_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 cherry_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 cherry_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 cherry_log []
fill ~7 ~1 ~-6 ~7 ~5 ~-6 cherry_log []
fill ~7 ~1 ~6 ~7 ~5 ~6 cherry_log []
fill ~-7 ~1 ~-4 ~-7 ~5 ~-4 cherry_log []
fill ~7 ~1 ~-4 ~7 ~5 ~-4 cherry_log []
fill ~-7 ~1 ~-2 ~-7 ~5 ~-2 cherry_log []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 cherry_log []
fill ~-7 ~1 ~0 ~-7 ~5 ~0 cherry_log []
fill ~7 ~1 ~0 ~7 ~5 ~0 cherry_log []
fill ~-7 ~1 ~2 ~-7 ~5 ~2 cherry_log []
fill ~7 ~1 ~2 ~7 ~5 ~2 cherry_log []
fill ~-7 ~1 ~4 ~-7 ~5 ~4 cherry_log []
fill ~7 ~1 ~4 ~7 ~5 ~4 cherry_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 cherry_log []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 cherry_log []
setblock ~-7 ~9 ~6 lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 cherry_log []
setblock ~7 ~9 ~-6 lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 cherry_log []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 cherry_log []
setblock ~0 ~4 ~-8 honeycomb_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 cherry_log []
setblock ~0 ~4 ~8 honeycomb_block []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 cherry_log []
setblock ~-9 ~4 ~0 honeycomb_block []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 cherry_log []
setblock ~9 ~4 ~0 honeycomb_block []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-2 ~0 ~-8 ~-2 ~4 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~4 ~-8 cherry_log []
fill ~-3 ~4 ~-8 ~3 ~4 ~-8 cherry_slab []
fill ~-2 ~3 ~-8 ~2 ~3 ~-8 stripped_cherry_log []
setblock ~-2 ~5 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 9
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 7
replaceitem block ~6 ~1 ~4 slot.container 3 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 4 feather 15
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 8
replaceitem block ~6 ~1 ~4 slot.container 9 cherry_sapling 9
replaceitem block ~6 ~1 ~4 slot.container 10 honey_bottle 10
replaceitem block ~6 ~1 ~4 slot.container 11 honeycomb 6
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~6 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~6 ~1 ~4 slot.container 14 emerald 7
loot insert ~6 ~1 ~4 loot "rsf/cherry_grove"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 2
replaceitem block ~-6 ~1 ~5 slot.container 1 phantom_membrane 3
replaceitem block ~-6 ~1 ~5 slot.container 2 feather 10
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 12
replaceitem block ~-6 ~1 ~5 slot.container 5 string 13
replaceitem block ~-6 ~1 ~5 slot.container 9 cherry_sapling 7
replaceitem block ~-6 ~1 ~5 slot.container 10 honey_bottle 8
replaceitem block ~-6 ~1 ~5 slot.container 11 honeycomb 11
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 8
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_ingot 6
replaceitem block ~-6 ~1 ~5 slot.container 14 emerald 5
loot insert ~-6 ~1 ~5 loot "rsf/cherry_grove"
loot insert ~-6 ~1 ~5 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1

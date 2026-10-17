# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1855/4224 | 主题内编号: b063/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·方尖碑镇压古墓穴 (cherry_grove_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cherry_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cherry_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cherry_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 lantern []
setblock ~3 ~-5 ~0 lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~2 slot.container 1 phantom_membrane 5
replaceitem block ~0 ~-3 ~2 slot.container 2 feather 12
replaceitem block ~0 ~-3 ~2 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~2 slot.container 4 bone 14
replaceitem block ~0 ~-3 ~2 slot.container 5 string 15
replaceitem block ~0 ~-3 ~2 slot.container 9 amethyst_shard 12
replaceitem block ~0 ~-3 ~2 slot.container 10 bow 1
replaceitem block ~0 ~-3 ~2 slot.container 11 lantern 5
replaceitem block ~0 ~-3 ~2 slot.container 12 cherry_log 18
replaceitem block ~0 ~-3 ~2 slot.container 13 cherry_sapling 7
replaceitem block ~0 ~-3 ~2 slot.container 14 honey_bottle 8
loot insert ~0 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~2 loot "chests/village/village_plains_house"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 2
replaceitem block ~0 ~-3 ~-2 slot.container 1 phantom_membrane 3
replaceitem block ~0 ~-3 ~-2 slot.container 2 feather 10
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 11
replaceitem block ~0 ~-3 ~-2 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~-2 slot.container 5 string 13
replaceitem block ~0 ~-3 ~-2 slot.container 9 amethyst_shard 11
replaceitem block ~0 ~-3 ~-2 slot.container 10 bow 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 lantern 4
replaceitem block ~0 ~-3 ~-2 slot.container 12 cherry_log 17
replaceitem block ~0 ~-3 ~-2 slot.container 13 cherry_sapling 6
replaceitem block ~0 ~-3 ~-2 slot.container 14 honey_bottle 7
loot insert ~0 ~-3 ~-2 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 cherry_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 cherry_log []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 cherry_log []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 cherry_log []
fill ~4 ~1 ~3 ~4 ~8 ~3 cherry_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cherry_planks []
fill ~0 ~14 ~0 ~0 ~17 ~0 chiseled_stone_bricks []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 cherry_log []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 cherry_log []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 cherry_log []
fill ~6 ~0 ~2 ~6 ~7 ~2 cherry_log []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~-2 ~0 ~-6 ~-2 ~7 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~7 ~-6 cherry_log []
fill ~-3 ~7 ~-6 ~3 ~7 ~-6 cherry_slab []
fill ~-2 ~6 ~-6 ~2 ~6 ~-6 stripped_cherry_log []
setblock ~1 ~8 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 feather 15
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 8
replaceitem block ~4 ~1 ~2 slot.container 2 bone 9
replaceitem block ~4 ~1 ~2 slot.container 3 string 10
replaceitem block ~4 ~1 ~2 slot.container 4 gunpowder 9
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 9 iron_ingot 6
replaceitem block ~4 ~1 ~2 slot.container 10 emerald 5
replaceitem block ~4 ~1 ~2 slot.container 11 amethyst_shard 8
replaceitem block ~4 ~1 ~2 slot.container 12 bow 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 8
replaceitem block ~4 ~1 ~2 slot.container 14 cherry_log 21
loot insert ~4 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~3 slot.container 1 string 13
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 2
replaceitem block ~-4 ~1 ~3 slot.container 5 phantom_membrane 3
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 10 emerald 10
replaceitem block ~-4 ~1 ~3 slot.container 11 amethyst_shard 6
replaceitem block ~-4 ~1 ~3 slot.container 12 bow 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 6
replaceitem block ~-4 ~1 ~3 slot.container 14 cherry_log 19
loot insert ~-4 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~3 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1

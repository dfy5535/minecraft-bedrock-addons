# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1829/4224 | 主题内编号: b037/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·环廊聖柱纪念碑 (cherry_grove_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cherry_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 amethyst_block []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ender_pearl 4
replaceitem block ~4 ~-2 ~0 slot.container 1 phantom_membrane 5
replaceitem block ~4 ~-2 ~0 slot.container 2 feather 12
replaceitem block ~4 ~-2 ~0 slot.container 3 rotten_flesh 13
replaceitem block ~4 ~-2 ~0 slot.container 4 bone 14
replaceitem block ~4 ~-2 ~0 slot.container 5 string 15
replaceitem block ~4 ~-2 ~0 slot.container 9 honeycomb 6
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 11 iron_ingot 8
replaceitem block ~4 ~-2 ~0 slot.container 12 emerald 7
replaceitem block ~4 ~-2 ~0 slot.container 13 amethyst_shard 10
replaceitem block ~4 ~-2 ~0 slot.container 14 bow 1
loot insert ~4 ~-2 ~0 loot "rsf/cherry_grove"
loot insert ~4 ~-2 ~0 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cherry_planks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 cherry_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 cherry_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 cherry_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 cherry_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 cherry_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 cherry_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 cherry_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 cherry_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 cherry_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 cherry_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 cherry_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 cherry_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 cherry_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 cherry_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 cherry_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 cherry_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 cherry_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 cherry_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 cherry_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 cherry_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 cherry_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 cherry_log []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 cherry_log []
setblock ~-6 ~10 ~-5 campfire []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 cherry_log []
setblock ~-6 ~10 ~5 campfire []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 cherry_log []
setblock ~6 ~10 ~-5 campfire []
fill ~6 ~7 ~5 ~6 ~9 ~5 cherry_log []
setblock ~6 ~10 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 cherry_log []
setblock ~-8 ~4 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 cherry_log []
setblock ~-8 ~4 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 cherry_log []
setblock ~8 ~4 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~3 ~7 cherry_log []
setblock ~8 ~4 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~6 ~-8 cherry_log []
fill ~-3 ~6 ~-8 ~3 ~6 ~-8 cherry_slab []
fill ~-2 ~5 ~-8 ~2 ~5 ~-8 stripped_cherry_log []
setblock ~1 ~7 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 7
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 feather 15
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 8
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 string 10
replaceitem block ~5 ~1 ~3 slot.container 9 amethyst_shard 8
replaceitem block ~5 ~1 ~3 slot.container 10 bow 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 8
replaceitem block ~5 ~1 ~3 slot.container 12 cherry_log 21
replaceitem block ~5 ~1 ~3 slot.container 13 cherry_sapling 10
replaceitem block ~5 ~1 ~3 slot.container 14 honey_bottle 4
loot insert ~5 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 feather 10
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 string 13
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 amethyst_shard 6
replaceitem block ~-5 ~1 ~4 slot.container 10 bow 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 12 cherry_log 19
replaceitem block ~-5 ~1 ~4 slot.container 13 cherry_sapling 8
replaceitem block ~-5 ~1 ~4 slot.container 14 honey_bottle 9
loot insert ~-5 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~4 loot "chests/village/village_plains_house"
summon allay ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-2 ~0

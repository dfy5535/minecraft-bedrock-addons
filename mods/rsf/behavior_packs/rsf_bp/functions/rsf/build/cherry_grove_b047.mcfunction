# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1839/4224 | 主题内编号: b047/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·深渊跨桥决斗长台 (cherry_grove_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~9 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cherry_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cherry_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cherry_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 calcite []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 stone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 bone 14
replaceitem block ~-5 ~-3 ~2 slot.container 1 string 15
replaceitem block ~-5 ~-3 ~2 slot.container 2 gunpowder 6
replaceitem block ~-5 ~-3 ~2 slot.container 3 arrow 17
replaceitem block ~-5 ~-3 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~-3 ~2 slot.container 5 phantom_membrane 5
replaceitem block ~-5 ~-3 ~2 slot.container 9 honeycomb 12
replaceitem block ~-5 ~-3 ~2 slot.container 10 golden_apple 2
replaceitem block ~-5 ~-3 ~2 slot.container 11 iron_ingot 7
replaceitem block ~-5 ~-3 ~2 slot.container 12 emerald 6
replaceitem block ~-5 ~-3 ~2 slot.container 13 amethyst_shard 9
replaceitem block ~-5 ~-3 ~2 slot.container 14 bow 1
loot insert ~-5 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~-5 ~-3 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~5 ~4 cherry_planks []
fill ~-6 ~1 ~-3 ~6 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-4 ~-7 ~7 ~-4 cherry_log []
setblock ~-7 ~8 ~-4 lantern []
fill ~-7 ~5 ~4 ~-7 ~7 ~4 cherry_log []
setblock ~-7 ~8 ~4 lantern []
fill ~7 ~5 ~-4 ~7 ~7 ~-4 cherry_log []
setblock ~7 ~8 ~-4 lantern []
fill ~7 ~5 ~4 ~7 ~7 ~4 cherry_log []
setblock ~7 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~3 ~-6 cherry_log []
setblock ~-9 ~4 ~-6 lantern []
fill ~-9 ~0 ~6 ~-9 ~3 ~6 cherry_log []
setblock ~-9 ~4 ~6 lantern []
fill ~9 ~0 ~-6 ~9 ~3 ~-6 cherry_log []
setblock ~9 ~4 ~-6 lantern []
fill ~9 ~0 ~6 ~9 ~3 ~6 cherry_log []
setblock ~9 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-2 ~0 ~-8 ~-2 ~6 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~6 ~-8 cherry_log []
fill ~-3 ~6 ~-8 ~3 ~6 ~-8 cherry_slab []
fill ~-2 ~5 ~-8 ~2 ~5 ~-8 stripped_cherry_log []
setblock ~-2 ~7 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 feather 15
replaceitem block ~6 ~1 ~2 slot.container 1 rotten_flesh 8
replaceitem block ~6 ~1 ~2 slot.container 2 bone 9
replaceitem block ~6 ~1 ~2 slot.container 3 string 10
replaceitem block ~6 ~1 ~2 slot.container 4 gunpowder 9
replaceitem block ~6 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~6 ~1 ~2 slot.container 9 amethyst_shard 11
replaceitem block ~6 ~1 ~2 slot.container 10 bow 1
replaceitem block ~6 ~1 ~2 slot.container 11 lantern 4
replaceitem block ~6 ~1 ~2 slot.container 12 cherry_log 17
replaceitem block ~6 ~1 ~2 slot.container 13 cherry_sapling 6
replaceitem block ~6 ~1 ~2 slot.container 14 honey_bottle 7
loot insert ~6 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 bone 12
replaceitem block ~-6 ~1 ~3 slot.container 1 string 13
replaceitem block ~-6 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-6 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-6 ~1 ~3 slot.container 4 ender_pearl 2
replaceitem block ~-6 ~1 ~3 slot.container 5 phantom_membrane 3
replaceitem block ~-6 ~1 ~3 slot.container 9 amethyst_shard 9
replaceitem block ~-6 ~1 ~3 slot.container 10 bow 1
replaceitem block ~-6 ~1 ~3 slot.container 11 lantern 9
replaceitem block ~-6 ~1 ~3 slot.container 12 cherry_log 22
replaceitem block ~-6 ~1 ~3 slot.container 13 cherry_sapling 4
replaceitem block ~-6 ~1 ~3 slot.container 14 honey_bottle 5
loot insert ~-6 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-6 ~1 ~3 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1

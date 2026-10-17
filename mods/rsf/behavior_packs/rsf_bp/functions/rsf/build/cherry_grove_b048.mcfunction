# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1840/4224 | 主题内编号: b048/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·阶梯王座巅峰试炼台 (cherry_grove_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 quartz_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 cherry_planks []
setblock ~0 ~-6 ~0 amethyst_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 6
replaceitem block ~0 ~-3 ~-4 slot.container 2 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 3 ender_pearl 4
replaceitem block ~0 ~-3 ~-4 slot.container 4 phantom_membrane 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 feather 12
replaceitem block ~0 ~-3 ~-4 slot.container 9 emerald 6
replaceitem block ~0 ~-3 ~-4 slot.container 10 amethyst_shard 9
replaceitem block ~0 ~-3 ~-4 slot.container 11 bow 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 13 cherry_log 22
replaceitem block ~0 ~-3 ~-4 slot.container 14 cherry_sapling 4
loot insert ~0 ~-3 ~-4 loot "rsf/cherry_grove"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 stone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 cherry_planks []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 calcite []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 cherry_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 stripped_cherry_log []
setblock ~-7 ~9 ~-6 lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 stripped_cherry_log []
setblock ~-7 ~9 ~6 lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 stripped_cherry_log []
setblock ~7 ~9 ~-6 lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 stripped_cherry_log []
setblock ~7 ~9 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 stripped_cherry_log []
setblock ~0 ~4 ~-8 amethyst_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 stripped_cherry_log []
setblock ~0 ~4 ~8 amethyst_block []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 stripped_cherry_log []
setblock ~-9 ~4 ~0 amethyst_block []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 stripped_cherry_log []
setblock ~9 ~4 ~0 amethyst_block []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-2 ~0 ~-8 ~-2 ~7 ~-8 cherry_log []
fill ~2 ~0 ~-8 ~2 ~7 ~-8 cherry_log []
fill ~-3 ~7 ~-8 ~3 ~7 ~-8 cherry_slab []
fill ~-2 ~6 ~-8 ~2 ~6 ~-8 stripped_cherry_log []
setblock ~-1 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 8
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 9
replaceitem block ~-6 ~1 ~4 slot.container 2 string 10
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 9
replaceitem block ~-6 ~1 ~4 slot.container 4 arrow 20
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 7
replaceitem block ~-6 ~1 ~4 slot.container 9 cherry_log 22
replaceitem block ~-6 ~1 ~4 slot.container 10 cherry_sapling 4
replaceitem block ~-6 ~1 ~4 slot.container 11 honey_bottle 5
replaceitem block ~-6 ~1 ~4 slot.container 12 honeycomb 8
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~-6 ~1 ~4 slot.container 14 iron_ingot 10
loot insert ~-6 ~1 ~4 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

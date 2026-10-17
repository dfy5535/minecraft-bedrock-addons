# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1815/4224 | 主题内编号: b023/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·双层露台阁楼宝室 (cherry_grove_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 cherry_planks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 cherry_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cherry_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 calcite []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~3 ~5 cherry_planks []
fill ~-4 ~1 ~-4 ~4 ~2 ~4 air []
fill ~-6 ~3 ~-6 ~6 ~3 ~6 cherry_slab []
fill ~-4 ~4 ~-4 ~4 ~7 ~4 stone_bricks []
fill ~-3 ~4 ~-3 ~3 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 cherry_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 stone_bricks []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 stone_bricks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-2 ~0 ~-9 ~-2 ~7 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~7 ~-9 cherry_log []
fill ~-3 ~7 ~-9 ~3 ~7 ~-9 cherry_slab []
fill ~-2 ~6 ~-9 ~2 ~6 ~-9 stripped_cherry_log []
setblock ~1 ~8 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 feather 15
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 8
replaceitem block ~4 ~1 ~3 slot.container 2 bone 9
replaceitem block ~4 ~1 ~3 slot.container 3 string 10
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 9
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 9 iron_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 10 emerald 7
replaceitem block ~4 ~1 ~3 slot.container 11 amethyst_shard 10
replaceitem block ~4 ~1 ~3 slot.container 12 bow 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 10
replaceitem block ~4 ~1 ~3 slot.container 14 cherry_log 16
loot insert ~4 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 12
replaceitem block ~-4 ~1 ~4 slot.container 1 string 13
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 2
replaceitem block ~-4 ~1 ~4 slot.container 5 phantom_membrane 3
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 6
replaceitem block ~-4 ~1 ~4 slot.container 10 emerald 5
replaceitem block ~-4 ~1 ~4 slot.container 11 amethyst_shard 8
replaceitem block ~-4 ~1 ~4 slot.container 12 bow 1
replaceitem block ~-4 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~-4 ~1 ~4 slot.container 14 cherry_log 21
loot insert ~-4 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-4 ~1 ~4 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1

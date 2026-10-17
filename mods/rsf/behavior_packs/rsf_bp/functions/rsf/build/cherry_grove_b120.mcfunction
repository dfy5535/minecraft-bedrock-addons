# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1912/4224 | 主题内编号: b120/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·引水渠跨桥水培温室 (cherry_grove_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~9 ~6 air [] replace log2
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 quartz_block []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 cherry_planks []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 string 15
replaceitem block ~-4 ~-3 ~2 slot.container 1 gunpowder 6
replaceitem block ~-4 ~-3 ~2 slot.container 2 arrow 17
replaceitem block ~-4 ~-3 ~2 slot.container 3 ender_pearl 4
replaceitem block ~-4 ~-3 ~2 slot.container 4 phantom_membrane 5
replaceitem block ~-4 ~-3 ~2 slot.container 5 feather 12
replaceitem block ~-4 ~-3 ~2 slot.container 9 honey_bottle 6
replaceitem block ~-4 ~-3 ~2 slot.container 10 honeycomb 9
replaceitem block ~-4 ~-3 ~2 slot.container 11 golden_apple 6
replaceitem block ~-4 ~-3 ~2 slot.container 12 iron_ingot 11
replaceitem block ~-4 ~-3 ~2 slot.container 13 emerald 10
replaceitem block ~-4 ~-3 ~2 slot.container 14 amethyst_shard 6
loot insert ~-4 ~-3 ~2 loot "rsf/cherry_grove"
loot insert ~-4 ~-3 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~5 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~5 ~-4 ~6 ~5 ~4 cherry_planks []
fill ~-5 ~6 ~-3 ~5 ~7 ~3 glass []
fill ~-4 ~6 ~-2 ~4 ~6 ~2 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cherry_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~-2 ~0 ~-6 ~-2 ~4 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~4 ~-6 cherry_log []
fill ~-3 ~4 ~-6 ~3 ~4 ~-6 cherry_slab []
fill ~-2 ~3 ~-6 ~2 ~3 ~-6 stripped_cherry_log []
setblock ~0 ~5 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 chiseled_stone_bricks []
setblock ~0 ~1 ~0 honeycomb_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 8
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 9
replaceitem block ~-5 ~1 ~2 slot.container 2 string 10
replaceitem block ~-5 ~1 ~2 slot.container 3 gunpowder 9
replaceitem block ~-5 ~1 ~2 slot.container 4 arrow 20
replaceitem block ~-5 ~1 ~2 slot.container 5 ender_pearl 7
replaceitem block ~-5 ~1 ~2 slot.container 9 emerald 5
replaceitem block ~-5 ~1 ~2 slot.container 10 amethyst_shard 8
replaceitem block ~-5 ~1 ~2 slot.container 11 bow 1
replaceitem block ~-5 ~1 ~2 slot.container 12 lantern 8
replaceitem block ~-5 ~1 ~2 slot.container 13 cherry_log 21
replaceitem block ~-5 ~1 ~2 slot.container 14 cherry_sapling 10
loot insert ~-5 ~1 ~2 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

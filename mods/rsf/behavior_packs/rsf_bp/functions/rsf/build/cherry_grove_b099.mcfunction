# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1891/4224 | 主题内编号: b099/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·铁闸门瓮城防御堡 (cherry_grove_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cherry_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 cherry_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 cherry_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 calcite []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 quartz_block []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 stone_bricks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 feather 12
replaceitem block ~4 ~-2 ~2 slot.container 1 rotten_flesh 13
replaceitem block ~4 ~-2 ~2 slot.container 2 bone 14
replaceitem block ~4 ~-2 ~2 slot.container 3 string 15
replaceitem block ~4 ~-2 ~2 slot.container 4 gunpowder 6
replaceitem block ~4 ~-2 ~2 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~2 slot.container 9 amethyst_shard 10
replaceitem block ~4 ~-2 ~2 slot.container 10 bow 1
replaceitem block ~4 ~-2 ~2 slot.container 11 lantern 10
replaceitem block ~4 ~-2 ~2 slot.container 12 cherry_log 16
replaceitem block ~4 ~-2 ~2 slot.container 13 cherry_sapling 5
replaceitem block ~4 ~-2 ~2 slot.container 14 honey_bottle 6
loot insert ~4 ~-2 ~2 loot "rsf/cherry_grove"
loot insert ~4 ~-2 ~2 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 cherry_planks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 stone_bricks []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 cherry_fence []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 cherry_log []
setblock ~-6 ~8 ~-4 lantern []
setblock ~-6 ~7 ~4 cherry_log []
setblock ~-6 ~8 ~4 lantern []
setblock ~6 ~7 ~-4 cherry_log []
setblock ~6 ~8 ~-4 lantern []
setblock ~6 ~7 ~4 cherry_log []
setblock ~6 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-2 ~0 ~-6 ~-2 ~8 ~-6 cherry_log []
fill ~2 ~0 ~-6 ~2 ~8 ~-6 cherry_log []
fill ~-3 ~8 ~-6 ~3 ~8 ~-6 cherry_slab []
fill ~-2 ~7 ~-6 ~2 ~7 ~-6 stripped_cherry_log []
setblock ~-3 ~9 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 gunpowder 9
replaceitem block ~5 ~1 ~2 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 7
replaceitem block ~5 ~1 ~2 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~2 slot.container 4 feather 15
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 8
replaceitem block ~5 ~1 ~2 slot.container 9 honeycomb 7
replaceitem block ~5 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~2 slot.container 11 iron_ingot 9
replaceitem block ~5 ~1 ~2 slot.container 12 emerald 8
replaceitem block ~5 ~1 ~2 slot.container 13 amethyst_shard 11
replaceitem block ~5 ~1 ~2 slot.container 14 bow 1
loot insert ~5 ~1 ~2 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 2
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 3
replaceitem block ~-5 ~1 ~3 slot.container 2 feather 10
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 13
replaceitem block ~-5 ~1 ~3 slot.container 9 honeycomb 12
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 13 amethyst_shard 9
replaceitem block ~-5 ~1 ~3 slot.container 14 bow 1
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~3 loot "chests/village/village_plains_house"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1893/4224 | 主题内编号: b101/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·L型驻军兵营军械所 (cherry_grove_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cherry_planks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 14
replaceitem block ~4 ~-2 ~3 slot.container 1 string 15
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 6
replaceitem block ~4 ~-2 ~3 slot.container 3 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 4
replaceitem block ~4 ~-2 ~3 slot.container 5 phantom_membrane 5
replaceitem block ~4 ~-2 ~3 slot.container 9 honeycomb 12
replaceitem block ~4 ~-2 ~3 slot.container 10 golden_apple 2
replaceitem block ~4 ~-2 ~3 slot.container 11 iron_ingot 7
replaceitem block ~4 ~-2 ~3 slot.container 12 emerald 6
replaceitem block ~4 ~-2 ~3 slot.container 13 amethyst_shard 9
replaceitem block ~4 ~-2 ~3 slot.container 14 bow 1
loot insert ~4 ~-2 ~3 loot "rsf/cherry_grove"
loot insert ~4 ~-2 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~6 ~5 calcite []
fill ~-6 ~1 ~0 ~6 ~5 ~5 cherry_planks []
fill ~-5 ~1 ~-4 ~-1 ~5 ~4 air []
fill ~-1 ~1 ~1 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 cherry_planks []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cherry_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 cherry_log []
setblock ~-6 ~8 ~-5 campfire []
setblock ~-6 ~7 ~5 cherry_log []
setblock ~-6 ~8 ~5 campfire []
setblock ~6 ~7 ~-5 cherry_log []
setblock ~6 ~8 ~-5 campfire []
setblock ~6 ~7 ~5 cherry_log []
setblock ~6 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 cherry_planks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-2 ~0 ~-9 ~-2 ~5 ~-9 cherry_log []
fill ~2 ~0 ~-9 ~2 ~5 ~-9 cherry_log []
fill ~-3 ~5 ~-9 ~3 ~5 ~-9 cherry_slab []
fill ~-2 ~4 ~-9 ~2 ~4 ~-9 stripped_cherry_log []
setblock ~-1 ~6 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 7
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 feather 15
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 8
replaceitem block ~5 ~1 ~3 slot.container 4 bone 9
replaceitem block ~5 ~1 ~3 slot.container 5 string 10
replaceitem block ~5 ~1 ~3 slot.container 9 lantern 7
replaceitem block ~5 ~1 ~3 slot.container 10 cherry_log 20
replaceitem block ~5 ~1 ~3 slot.container 11 cherry_sapling 9
replaceitem block ~5 ~1 ~3 slot.container 12 honey_bottle 10
replaceitem block ~5 ~1 ~3 slot.container 13 honeycomb 6
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~3 loot "rsf/cherry_grove"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 feather 10
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 12
replaceitem block ~-5 ~1 ~4 slot.container 3 string 13
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 10 cherry_log 18
replaceitem block ~-5 ~1 ~4 slot.container 11 cherry_sapling 7
replaceitem block ~-5 ~1 ~4 slot.container 12 honey_bottle 8
replaceitem block ~-5 ~1 ~4 slot.container 13 honeycomb 11
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~4 loot "rsf/cherry_grove"
loot insert ~-5 ~1 ~4 loot "chests/village/village_plains_house"
summon spider ~0 ~1 ~-1
summon bee ~-1 ~1 ~1

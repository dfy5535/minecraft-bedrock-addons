# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1870/4224 | 主题内编号: b078/128
# 地形主题 #15: 樱花树林神社与花亭 (cherry_grove) —— 带樱木鸟居牌坊与落樱祈愿灯台
# 建筑名称: 樱华神社系·下沉祭池图腾柱群 (cherry_grove_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: cherry_grove
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cherry_planks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cherry_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cherry_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 polished_deepslate []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 rotten_flesh 13
replaceitem block ~-4 ~-4 ~3 slot.container 1 bone 14
replaceitem block ~-4 ~-4 ~3 slot.container 2 string 15
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 6
replaceitem block ~-4 ~-4 ~3 slot.container 4 arrow 17
replaceitem block ~-4 ~-4 ~3 slot.container 5 ender_pearl 4
replaceitem block ~-4 ~-4 ~3 slot.container 9 emerald 6
replaceitem block ~-4 ~-4 ~3 slot.container 10 amethyst_shard 9
replaceitem block ~-4 ~-4 ~3 slot.container 11 bow 1
replaceitem block ~-4 ~-4 ~3 slot.container 12 lantern 9
replaceitem block ~-4 ~-4 ~3 slot.container 13 cherry_log 22
replaceitem block ~-4 ~-4 ~3 slot.container 14 cherry_sapling 4
loot insert ~-4 ~-4 ~3 loot "rsf/cherry_grove"
loot insert ~-4 ~-4 ~3 loot "chests/village/village_plains_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cherry_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~5 polished_deepslate []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 cherry_log []
setblock ~-6 ~8 ~-5 soul_lantern []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 cherry_log []
setblock ~-6 ~8 ~5 soul_lantern []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 cherry_log []
setblock ~6 ~8 ~-5 soul_lantern []
fill ~6 ~5 ~5 ~6 ~7 ~5 cherry_log []
setblock ~6 ~8 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 cherry_log []
setblock ~-8 ~4 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 cherry_log []
setblock ~-8 ~4 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 cherry_log []
setblock ~8 ~4 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 cherry_log []
setblock ~8 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (cherry_grove 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-2 ~0 ~-7 ~-2 ~7 ~-7 cherry_log []
fill ~2 ~0 ~-7 ~2 ~7 ~-7 cherry_log []
fill ~-3 ~7 ~-7 ~3 ~7 ~-7 cherry_slab []
fill ~-2 ~6 ~-7 ~2 ~6 ~-7 stripped_cherry_log []
setblock ~0 ~8 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-4 ~1 ~3 blast_furnace []
setblock ~-3 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 1 feather 15
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 8
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 9
replaceitem block ~-5 ~1 ~3 slot.container 4 string 10
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 9
replaceitem block ~-5 ~1 ~3 slot.container 9 cherry_log 17
replaceitem block ~-5 ~1 ~3 slot.container 10 cherry_sapling 6
replaceitem block ~-5 ~1 ~3 slot.container 11 honey_bottle 7
replaceitem block ~-5 ~1 ~3 slot.container 12 honeycomb 10
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~3 loot "rsf/cherry_grove"
summon bee ~0 ~1 ~-1
summon allay ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

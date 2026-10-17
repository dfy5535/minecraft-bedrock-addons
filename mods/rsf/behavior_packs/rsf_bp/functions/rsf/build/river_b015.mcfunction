# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2575/4224 | 主题内编号: b015/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·竖井阶梯深渊地牢 (river_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 oak_planks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 oak_planks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 slime_ball 8
replaceitem block ~-4 ~-2 ~3 slot.container 1 ink_sac 11
replaceitem block ~-4 ~-2 ~3 slot.container 2 gunpowder 10
replaceitem block ~-4 ~-2 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~-2 ~3 slot.container 4 copper_ingot 14
replaceitem block ~-4 ~-2 ~3 slot.container 5 nautilus_shell 8
replaceitem block ~-4 ~-2 ~3 slot.container 9 cooked_cod 12
replaceitem block ~-4 ~-2 ~3 slot.container 10 clay_ball 19
replaceitem block ~-4 ~-2 ~3 slot.container 11 iron_ingot 10
replaceitem block ~-4 ~-2 ~3 slot.container 12 coal 17
replaceitem block ~-4 ~-2 ~3 slot.container 13 fishing_rod 1
replaceitem block ~-4 ~-2 ~3 slot.container 14 lead 2
loot insert ~-4 ~-2 ~3 loot "rsf/river"
loot insert ~-4 ~-2 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 oak_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 cobblestone []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 mossy_cobblestone []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~7 ~-2 ~2 ~8 ~2 cobblestone []
fill ~-1 ~9 ~-1 ~1 ~11 ~1 oak_planks []
fill ~0 ~12 ~0 ~0 ~13 ~0 chiseled_stone_bricks []
setblock ~0 ~14 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 stripped_oak_log []
setblock ~-7 ~4 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 stripped_oak_log []
setblock ~-7 ~4 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 stripped_oak_log []
setblock ~7 ~4 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~3 ~6 stripped_oak_log []
setblock ~7 ~4 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x5x3) ---
fill ~6 ~-1 ~-1 ~6 ~4 ~1 spruce_planks []
setblock ~6 ~3 ~0 barrel ["facing_direction"=1]
setblock ~6 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 2 copper_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 3 nautilus_shell 3
replaceitem block ~4 ~1 ~2 slot.container 4 bone 11
replaceitem block ~4 ~1 ~2 slot.container 5 string 14
replaceitem block ~4 ~1 ~2 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~2 slot.container 10 lead 2
replaceitem block ~4 ~1 ~2 slot.container 11 bucket 1
replaceitem block ~4 ~1 ~2 slot.container 12 boat 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~2 slot.container 14 cooked_salmon 14
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 copper_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 1 nautilus_shell 6
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 3 string 17
replaceitem block ~-4 ~1 ~3 slot.container 4 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 5 ink_sac 9
replaceitem block ~-4 ~1 ~3 slot.container 9 fishing_rod 1
replaceitem block ~-4 ~1 ~3 slot.container 10 lead 7
replaceitem block ~-4 ~1 ~3 slot.container 11 bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 12 boat 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 5
replaceitem block ~-4 ~1 ~3 slot.container 14 cooked_salmon 12
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1

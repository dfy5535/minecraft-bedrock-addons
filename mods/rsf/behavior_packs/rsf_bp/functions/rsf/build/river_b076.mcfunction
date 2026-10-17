# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2636/4224 | 主题内编号: b076/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·阶梯高台图腾战阵 (river_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 prismarine []
setblock ~-4 ~-5 ~-3 lantern []
setblock ~4 ~-5 ~3 lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 string 11
replaceitem block ~0 ~-3 ~3 slot.container 1 slime_ball 8
replaceitem block ~0 ~-3 ~3 slot.container 2 ink_sac 11
replaceitem block ~0 ~-3 ~3 slot.container 3 gunpowder 10
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 5 copper_ingot 14
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_salmon 11
replaceitem block ~0 ~-3 ~3 slot.container 10 cooked_cod 12
replaceitem block ~0 ~-3 ~3 slot.container 11 clay_ball 19
replaceitem block ~0 ~-3 ~3 slot.container 12 iron_ingot 10
replaceitem block ~0 ~-3 ~3 slot.container 13 coal 17
replaceitem block ~0 ~-3 ~3 slot.container 14 fishing_rod 1
loot insert ~0 ~-3 ~3 loot "rsf/river"
loot insert ~0 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 mossy_cobblestone []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 spruce_planks []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 spruce_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 mossy_cobblestone []
fill ~0 ~13 ~0 ~0 ~14 ~0 prismarine []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 spruce_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 spruce_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 spruce_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 spruce_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~-1 ~-1 ~7 ~5 ~1 spruce_planks []
setblock ~7 ~4 ~0 barrel ["facing_direction"=1]
setblock ~7 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 14
replaceitem block ~-5 ~1 ~3 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 9 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 9
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_salmon 16
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 10
replaceitem block ~-5 ~1 ~3 slot.container 13 clay_ball 17
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-3 ~0

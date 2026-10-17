# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2621/4224 | 主题内编号: b061/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子封土古墓地宫 (river_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 spruce_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 spruce_planks [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 gunpowder 10
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 copper_ingot 14
replaceitem block ~-3 ~-3 ~2 slot.container 3 nautilus_shell 8
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 string 11
replaceitem block ~-3 ~-3 ~2 slot.container 9 cooked_cod 14
replaceitem block ~-3 ~-3 ~2 slot.container 10 clay_ball 21
replaceitem block ~-3 ~-3 ~2 slot.container 11 iron_ingot 12
replaceitem block ~-3 ~-3 ~2 slot.container 12 coal 12
replaceitem block ~-3 ~-3 ~2 slot.container 13 fishing_rod 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 lead 4
loot insert ~-3 ~-3 ~2 loot "rsf/river"
loot insert ~-3 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 spruce_planks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 spruce_planks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 stone_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 stone_bricks []
fill ~-6 ~7 ~-3 ~6 ~7 ~3 stone_bricks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 barrel []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~8 ~-1 ~-1 ~8 ~5 ~1 spruce_planks []
setblock ~8 ~4 ~0 barrel ["facing_direction"=1]
setblock ~8 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~3 smithing_table []
setblock ~-5 ~1 ~3 anvil []
setblock ~5 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~6 ~1 ~2 slot.container 1 ink_sac 14
replaceitem block ~6 ~1 ~2 slot.container 2 gunpowder 13
replaceitem block ~6 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 4 copper_ingot 9
replaceitem block ~6 ~1 ~2 slot.container 5 nautilus_shell 3
replaceitem block ~6 ~1 ~2 slot.container 9 iron_ingot 9
replaceitem block ~6 ~1 ~2 slot.container 10 coal 16
replaceitem block ~6 ~1 ~2 slot.container 11 fishing_rod 1
replaceitem block ~6 ~1 ~2 slot.container 12 lead 8
replaceitem block ~6 ~1 ~2 slot.container 13 bucket 1
replaceitem block ~6 ~1 ~2 slot.container 14 boat 1
loot insert ~6 ~1 ~2 loot "rsf/river"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 gunpowder 8
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 2 copper_ingot 12
replaceitem block ~-6 ~1 ~3 slot.container 3 nautilus_shell 6
replaceitem block ~-6 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~3 slot.container 5 string 17
replaceitem block ~-6 ~1 ~3 slot.container 9 iron_ingot 7
replaceitem block ~-6 ~1 ~3 slot.container 10 coal 14
replaceitem block ~-6 ~1 ~3 slot.container 11 fishing_rod 1
replaceitem block ~-6 ~1 ~3 slot.container 12 lead 6
replaceitem block ~-6 ~1 ~3 slot.container 13 bucket 1
replaceitem block ~-6 ~1 ~3 slot.container 14 boat 1
loot insert ~-6 ~1 ~3 loot "rsf/river"
loot insert ~-6 ~1 ~3 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0

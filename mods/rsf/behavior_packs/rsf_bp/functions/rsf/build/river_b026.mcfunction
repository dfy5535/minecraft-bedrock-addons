# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2586/4224 | 主题内编号: b026/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·尖顶信标引航高塔 (river_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 stone_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~12 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 oak_planks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 string 11
replaceitem block ~-3 ~-3 ~2 slot.container 1 slime_ball 8
replaceitem block ~-3 ~-3 ~2 slot.container 2 ink_sac 11
replaceitem block ~-3 ~-3 ~2 slot.container 3 gunpowder 10
replaceitem block ~-3 ~-3 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 5 copper_ingot 14
replaceitem block ~-3 ~-3 ~2 slot.container 9 coal 12
replaceitem block ~-3 ~-3 ~2 slot.container 10 fishing_rod 1
replaceitem block ~-3 ~-3 ~2 slot.container 11 lead 4
replaceitem block ~-3 ~-3 ~2 slot.container 12 bucket 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 boat 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 lantern 9
loot insert ~-3 ~-3 ~2 loot "rsf/river"
loot insert ~-3 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 air []
fill ~4 ~1 ~3 ~4 ~11 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~10 ~-2 oak_log []
fill ~3 ~1 ~-2 ~3 ~10 ~-2 oak_log []
fill ~-3 ~1 ~2 ~-3 ~10 ~2 oak_log []
fill ~3 ~1 ~2 ~3 ~10 ~2 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 mossy_stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~17 ~0 sea_lantern []
setblock ~0 ~18 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~9 ~-2 oak_log []
fill ~-5 ~0 ~2 ~-5 ~9 ~2 oak_log []
fill ~5 ~0 ~-2 ~5 ~9 ~-2 oak_log []
fill ~5 ~0 ~2 ~5 ~9 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~5 ~-1 ~-1 ~5 ~5 ~1 spruce_planks []
setblock ~5 ~4 ~0 barrel ["facing_direction"=1]
setblock ~5 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~9 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 sea_lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 nautilus_shell 3
replaceitem block ~-3 ~1 ~1 slot.container 1 bone 11
replaceitem block ~-3 ~1 ~1 slot.container 2 string 14
replaceitem block ~-3 ~1 ~1 slot.container 3 slime_ball 11
replaceitem block ~-3 ~1 ~1 slot.container 4 ink_sac 14
replaceitem block ~-3 ~1 ~1 slot.container 5 gunpowder 13
replaceitem block ~-3 ~1 ~1 slot.container 9 boat 1
replaceitem block ~-3 ~1 ~1 slot.container 10 lantern 8
replaceitem block ~-3 ~1 ~1 slot.container 11 cooked_salmon 15
replaceitem block ~-3 ~1 ~1 slot.container 12 cooked_cod 16
replaceitem block ~-3 ~1 ~1 slot.container 13 clay_ball 16
replaceitem block ~-3 ~1 ~1 slot.container 14 iron_ingot 7
loot insert ~-3 ~1 ~1 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

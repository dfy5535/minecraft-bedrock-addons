# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2638/4224 | 主题内编号: b078/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·下沉祭池图腾柱群 (river_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~-4 ~-4 ~3 slot.container 1 copper_ingot 14
replaceitem block ~-4 ~-4 ~3 slot.container 2 nautilus_shell 8
replaceitem block ~-4 ~-4 ~3 slot.container 3 bone 8
replaceitem block ~-4 ~-4 ~3 slot.container 4 string 11
replaceitem block ~-4 ~-4 ~3 slot.container 5 slime_ball 8
replaceitem block ~-4 ~-4 ~3 slot.container 9 cooked_salmon 10
replaceitem block ~-4 ~-4 ~3 slot.container 10 cooked_cod 11
replaceitem block ~-4 ~-4 ~3 slot.container 11 clay_ball 18
replaceitem block ~-4 ~-4 ~3 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~-4 ~3 slot.container 13 coal 16
replaceitem block ~-4 ~-4 ~3 slot.container 14 fishing_rod 1
loot insert ~-4 ~-4 ~3 loot "rsf/river"
loot insert ~-4 ~-4 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 oak_log []
setblock ~-6 ~8 ~-5 campfire []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 oak_log []
setblock ~-6 ~8 ~5 campfire []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 oak_log []
setblock ~6 ~8 ~-5 campfire []
fill ~6 ~5 ~5 ~6 ~7 ~5 oak_log []
setblock ~6 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~-1 ~-1 ~7 ~7 ~1 spruce_planks []
setblock ~7 ~6 ~0 barrel ["facing_direction"=1]
setblock ~7 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~3 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 10 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 11 lead 3
replaceitem block ~-5 ~1 ~3 slot.container 12 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 13 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 8
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1

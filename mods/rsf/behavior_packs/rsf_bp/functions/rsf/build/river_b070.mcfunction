# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2630/4224 | 主题内编号: b070/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·风化坍塌阶梯祭台 (river_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 8
replaceitem block ~4 ~-3 ~3 slot.container 2 string 11
replaceitem block ~4 ~-3 ~3 slot.container 3 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 4 ink_sac 11
replaceitem block ~4 ~-3 ~3 slot.container 5 gunpowder 10
replaceitem block ~4 ~-3 ~3 slot.container 9 coal 13
replaceitem block ~4 ~-3 ~3 slot.container 10 fishing_rod 1
replaceitem block ~4 ~-3 ~3 slot.container 11 lead 5
replaceitem block ~4 ~-3 ~3 slot.container 12 bucket 1
replaceitem block ~4 ~-3 ~3 slot.container 13 boat 1
replaceitem block ~4 ~-3 ~3 slot.container 14 lantern 10
loot insert ~4 ~-3 ~3 loot "rsf/river"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 mossy_stone_bricks []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 oak_planks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~7 ~-1 ~-1 ~7 ~4 ~1 spruce_planks []
setblock ~7 ~3 ~0 barrel ["facing_direction"=1]
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_salmon 15
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 16
replaceitem block ~-5 ~1 ~3 slot.container 11 clay_ball 16
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 13 coal 14
replaceitem block ~-5 ~1 ~3 slot.container 14 fishing_rod 1
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-3 ~0

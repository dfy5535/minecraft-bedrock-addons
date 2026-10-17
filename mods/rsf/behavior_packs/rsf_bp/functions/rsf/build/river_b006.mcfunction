# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2566/4224 | 主题内编号: b006/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·重檐飞角四方神龛 (river_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 oak_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 nautilus_shell 8
replaceitem block ~3 ~-3 ~2 slot.container 1 bone 8
replaceitem block ~3 ~-3 ~2 slot.container 2 string 11
replaceitem block ~3 ~-3 ~2 slot.container 3 slime_ball 8
replaceitem block ~3 ~-3 ~2 slot.container 4 ink_sac 11
replaceitem block ~3 ~-3 ~2 slot.container 5 gunpowder 10
replaceitem block ~3 ~-3 ~2 slot.container 9 clay_ball 16
replaceitem block ~3 ~-3 ~2 slot.container 10 iron_ingot 7
replaceitem block ~3 ~-3 ~2 slot.container 11 coal 14
replaceitem block ~3 ~-3 ~2 slot.container 12 fishing_rod 1
replaceitem block ~3 ~-3 ~2 slot.container 13 lead 6
replaceitem block ~3 ~-3 ~2 slot.container 14 bucket 1
loot insert ~3 ~-3 ~2 loot "rsf/river"
loot insert ~3 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 oak_log []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 oak_log []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 oak_log []
fill ~5 ~1 ~4 ~5 ~7 ~4 oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 oak_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 oak_slab []
setblock ~0 ~11 ~0 sea_lantern []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 oak_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~6 ~-1 ~-1 ~6 ~5 ~1 spruce_planks []
setblock ~6 ~4 ~0 barrel ["facing_direction"=1]
setblock ~6 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 barrel []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ink_sac 14
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 4 nautilus_shell 3
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 9 boat 1
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 11 cooked_salmon 16
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_cod 10
replaceitem block ~-4 ~1 ~2 slot.container 13 clay_ball 17
replaceitem block ~-4 ~1 ~2 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~2 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1

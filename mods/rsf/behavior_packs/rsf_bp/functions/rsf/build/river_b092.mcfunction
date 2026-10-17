# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2652/4224 | 主题内编号: b092/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双层重檐供奉宝塔 (river_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 spruce_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 1 copper_ingot 14
replaceitem block ~3 ~-3 ~2 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 8
replaceitem block ~3 ~-3 ~2 slot.container 4 string 11
replaceitem block ~3 ~-3 ~2 slot.container 5 slime_ball 8
replaceitem block ~3 ~-3 ~2 slot.container 9 cooked_salmon 12
replaceitem block ~3 ~-3 ~2 slot.container 10 cooked_cod 13
replaceitem block ~3 ~-3 ~2 slot.container 11 clay_ball 20
replaceitem block ~3 ~-3 ~2 slot.container 12 iron_ingot 11
replaceitem block ~3 ~-3 ~2 slot.container 13 coal 18
replaceitem block ~3 ~-3 ~2 slot.container 14 fishing_rod 1
loot insert ~3 ~-3 ~2 loot "rsf/river"
loot insert ~3 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 mossy_cobblestone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 stone_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~8 ~3 spruce_planks []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_brick_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 spruce_planks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 spruce_slab []
setblock ~0 ~12 ~0 prismarine []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~6 ~-1 ~-1 ~6 ~6 ~1 spruce_planks []
setblock ~6 ~5 ~0 barrel ["facing_direction"=1]
setblock ~6 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 14
replaceitem block ~-4 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 2 ink_sac 14
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 copper_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 9 lead 8
replaceitem block ~-4 ~1 ~2 slot.container 10 bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 11 boat 1
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~2 slot.container 13 cooked_salmon 13
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_cod 14
loot insert ~-4 ~1 ~2 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

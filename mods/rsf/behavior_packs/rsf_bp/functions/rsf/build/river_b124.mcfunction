# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2684/4224 | 主题内编号: b124/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·三层重檐帝王阁楼与秘库 (river_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 9格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 spruce_planks []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-4 ~4 slot.container 1 copper_ingot 14
replaceitem block ~4 ~-4 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~4 ~-4 ~4 slot.container 3 bone 8
replaceitem block ~4 ~-4 ~4 slot.container 4 string 11
replaceitem block ~4 ~-4 ~4 slot.container 5 slime_ball 8
replaceitem block ~4 ~-4 ~4 slot.container 9 lead 8
replaceitem block ~4 ~-4 ~4 slot.container 10 bucket 1
replaceitem block ~4 ~-4 ~4 slot.container 11 boat 1
replaceitem block ~4 ~-4 ~4 slot.container 12 lantern 6
replaceitem block ~4 ~-4 ~4 slot.container 13 cooked_salmon 13
replaceitem block ~4 ~-4 ~4 slot.container 14 cooked_cod 14
loot insert ~4 ~-4 ~4 loot "rsf/river"
loot insert ~4 ~-4 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~4 ~6 mossy_cobblestone []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-7 ~4 ~-7 ~7 ~4 ~7 stone_brick_slab []
fill ~-5 ~5 ~-5 ~5 ~9 ~5 spruce_planks []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~9 ~-7 ~7 ~9 ~7 stone_brick_slab []
fill ~-5 ~10 ~-5 ~5 ~11 ~5 spruce_planks []
fill ~-6 ~12 ~-6 ~6 ~12 ~6 spruce_slab []
setblock ~0 ~13 ~0 prismarine []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 9 clay_ball 19
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 11 coal 17
replaceitem block ~-5 ~1 ~4 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~4 slot.container 13 lead 2
replaceitem block ~-5 ~1 ~4 slot.container 14 bucket 1
loot insert ~-5 ~1 ~4 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-4 ~0

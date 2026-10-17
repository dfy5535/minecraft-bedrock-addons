# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2607/4224 | 主题内编号: b047/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·深渊跨桥决斗长台 (river_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 oak_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 oak_planks [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 oak_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 cobblestone []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 copper_ingot 14
replaceitem block ~-5 ~-3 ~2 slot.container 1 nautilus_shell 8
replaceitem block ~-5 ~-3 ~2 slot.container 2 bone 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 string 11
replaceitem block ~-5 ~-3 ~2 slot.container 4 slime_ball 8
replaceitem block ~-5 ~-3 ~2 slot.container 5 ink_sac 11
replaceitem block ~-5 ~-3 ~2 slot.container 9 bucket 1
replaceitem block ~-5 ~-3 ~2 slot.container 10 boat 1
replaceitem block ~-5 ~-3 ~2 slot.container 11 lantern 10
replaceitem block ~-5 ~-3 ~2 slot.container 12 cooked_salmon 10
replaceitem block ~-5 ~-3 ~2 slot.container 13 cooked_cod 11
replaceitem block ~-5 ~-3 ~2 slot.container 14 clay_ball 18
loot insert ~-5 ~-3 ~2 loot "rsf/river"
loot insert ~-5 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~5 ~4 oak_planks []
fill ~-6 ~1 ~-3 ~6 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-5 ~7 ~6 ~5 spruce_slab []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 stone_bricks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 stone_brick_slab []
setblock ~0 ~10 ~0 barrel []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~3 ~-6 stripped_oak_log []
setblock ~-9 ~4 ~-6 torch []
fill ~-9 ~0 ~6 ~-9 ~3 ~6 stripped_oak_log []
setblock ~-9 ~4 ~6 torch []
fill ~9 ~0 ~-6 ~9 ~3 ~-6 stripped_oak_log []
setblock ~9 ~4 ~-6 torch []
fill ~9 ~0 ~6 ~9 ~3 ~6 stripped_oak_log []
setblock ~9 ~4 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~8 ~-1 ~-1 ~8 ~6 ~1 spruce_planks []
setblock ~8 ~5 ~0 barrel ["facing_direction"=1]
setblock ~8 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 gunpowder 13
replaceitem block ~6 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~6 ~1 ~2 slot.container 2 copper_ingot 9
replaceitem block ~6 ~1 ~2 slot.container 3 nautilus_shell 3
replaceitem block ~6 ~1 ~2 slot.container 4 bone 11
replaceitem block ~6 ~1 ~2 slot.container 5 string 14
replaceitem block ~6 ~1 ~2 slot.container 9 cooked_cod 13
replaceitem block ~6 ~1 ~2 slot.container 10 clay_ball 20
replaceitem block ~6 ~1 ~2 slot.container 11 iron_ingot 11
replaceitem block ~6 ~1 ~2 slot.container 12 coal 18
replaceitem block ~6 ~1 ~2 slot.container 13 fishing_rod 1
replaceitem block ~6 ~1 ~2 slot.container 14 lead 3
loot insert ~6 ~1 ~2 loot "rsf/river"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 copper_ingot 12
replaceitem block ~-6 ~1 ~3 slot.container 1 nautilus_shell 6
replaceitem block ~-6 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~3 slot.container 3 string 17
replaceitem block ~-6 ~1 ~3 slot.container 4 slime_ball 6
replaceitem block ~-6 ~1 ~3 slot.container 5 ink_sac 9
replaceitem block ~-6 ~1 ~3 slot.container 9 cooked_cod 11
replaceitem block ~-6 ~1 ~3 slot.container 10 clay_ball 18
replaceitem block ~-6 ~1 ~3 slot.container 11 iron_ingot 9
replaceitem block ~-6 ~1 ~3 slot.container 12 coal 16
replaceitem block ~-6 ~1 ~3 slot.container 13 fishing_rod 1
replaceitem block ~-6 ~1 ~3 slot.container 14 lead 8
loot insert ~-6 ~1 ~3 loot "rsf/river"
loot insert ~-6 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

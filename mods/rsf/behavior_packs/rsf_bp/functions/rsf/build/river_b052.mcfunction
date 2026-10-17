# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2612/4224 | 主题内编号: b052/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·重檐行商旅店客栈 (river_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 prismarine []

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

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~3 ~6 mossy_cobblestone []
fill ~-5 ~1 ~-5 ~5 ~2 ~5 air []
fill ~-7 ~3 ~-7 ~7 ~3 ~7 stone_brick_slab []
fill ~-5 ~4 ~-5 ~5 ~6 ~5 spruce_planks []
fill ~-4 ~4 ~-4 ~4 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-7 ~7 ~6 ~7 stone_brick_slab []
fill ~-5 ~7 ~-5 ~5 ~8 ~5 spruce_planks []
fill ~-6 ~9 ~-6 ~6 ~9 ~6 spruce_slab []
setblock ~0 ~10 ~0 prismarine []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~5 smoker []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 string 14
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ink_sac 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 copper_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 9 lead 3
replaceitem block ~-5 ~1 ~4 slot.container 10 bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_salmon 15
replaceitem block ~-5 ~1 ~4 slot.container 14 cooked_cod 16
loot insert ~-5 ~1 ~4 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-3 ~0

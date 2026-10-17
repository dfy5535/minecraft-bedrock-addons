# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2688/4224 | 主题内编号: b128/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·U型紫禁朝堂大殿与地底金库 (river_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
setblock ~-5 ~-6 ~0 blast_furnace []
setblock ~5 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~5 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~4 slot.container 0 string 11
replaceitem block ~5 ~-4 ~4 slot.container 1 slime_ball 8
replaceitem block ~5 ~-4 ~4 slot.container 2 ink_sac 11
replaceitem block ~5 ~-4 ~4 slot.container 3 gunpowder 10
replaceitem block ~5 ~-4 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~-4 ~4 slot.container 5 copper_ingot 14
replaceitem block ~5 ~-4 ~4 slot.container 9 cooked_salmon 16
replaceitem block ~5 ~-4 ~4 slot.container 10 cooked_cod 10
replaceitem block ~5 ~-4 ~4 slot.container 11 clay_ball 17
replaceitem block ~5 ~-4 ~4 slot.container 12 iron_ingot 8
replaceitem block ~5 ~-4 ~4 slot.container 13 coal 15
replaceitem block ~5 ~-4 ~4 slot.container 14 fishing_rod 1
loot insert ~5 ~-4 ~4 loot "rsf/river"
loot insert ~5 ~-4 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 mossy_cobblestone []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-7 ~8 ~7 ~7 stone_brick_slab []
fill ~-6 ~8 ~-5 ~6 ~9 ~5 spruce_planks []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 spruce_slab []
setblock ~0 ~11 ~0 prismarine []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 spruce_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 spruce_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 spruce_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 spruce_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~-1 ~-1 ~8 ~7 ~1 spruce_planks []
setblock ~8 ~6 ~0 barrel ["facing_direction"=1]
setblock ~8 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-6 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-6 ~1 ~4 slot.container 2 nautilus_shell 3
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 4 string 14
replaceitem block ~-6 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 9 coal 12
replaceitem block ~-6 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~-6 ~1 ~4 slot.container 11 lead 4
replaceitem block ~-6 ~1 ~4 slot.container 12 bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 9
loot insert ~-6 ~1 ~4 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

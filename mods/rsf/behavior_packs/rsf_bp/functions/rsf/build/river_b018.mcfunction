# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2578/4224 | 主题内编号: b018/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·L型转角领主秘宝屋 (river_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 stone_bricks []
fill ~-6 ~1 ~0 ~6 ~4 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 stripped_oak_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 stripped_oak_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 stripped_oak_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 stripped_oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~7 ~-1 ~-1 ~7 ~7 ~1 spruce_planks []
setblock ~7 ~6 ~0 barrel ["facing_direction"=1]
setblock ~7 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 9 coal 14
replaceitem block ~-5 ~1 ~3 slot.container 10 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 11 lead 6
replaceitem block ~-5 ~1 ~3 slot.container 12 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 13 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lantern 4
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2562/4224 | 主题内编号: b002/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·十字拱门祈愿圣殿 (river_altar_cross_sanctuary)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 oak_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 sea_lantern []
setblock ~0 ~10 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 cobblestone []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 torch []
setblock ~2 ~4 ~-9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~5 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 sea_lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 9 lead 2
replaceitem block ~-5 ~1 ~3 slot.container 10 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 7
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 14
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 15
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

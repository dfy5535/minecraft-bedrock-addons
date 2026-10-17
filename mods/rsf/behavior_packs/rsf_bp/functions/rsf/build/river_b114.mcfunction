# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2674/4224 | 主题内编号: b114/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双联拱顶植物培育馆 (river_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 oak_planks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 mossy_stone_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~5 ~-4 ~7 ~5 ~4 mossy_stone_bricks []
fill ~-6 ~6 ~-3 ~6 ~7 ~3 glass []
fill ~-5 ~6 ~-2 ~5 ~6 ~2 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~8 ~-1 ~-1 ~8 ~3 ~1 spruce_planks []
setblock ~8 ~2 ~0 barrel ["facing_direction"=1]
setblock ~8 ~4 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 nautilus_shell 3
replaceitem block ~-6 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~2 slot.container 2 string 14
replaceitem block ~-6 ~1 ~2 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 4 ink_sac 14
replaceitem block ~-6 ~1 ~2 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~2 slot.container 9 clay_ball 16
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_ingot 7
replaceitem block ~-6 ~1 ~2 slot.container 11 coal 14
replaceitem block ~-6 ~1 ~2 slot.container 12 fishing_rod 1
replaceitem block ~-6 ~1 ~2 slot.container 13 lead 6
replaceitem block ~-6 ~1 ~2 slot.container 14 bucket 1
loot insert ~-6 ~1 ~2 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2564/4224 | 主题内编号: b004/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子火盆高台神坛 (river_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 mossy_cobblestone []
fill ~2 ~1 ~-4 ~7 ~7 ~4 mossy_cobblestone []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 spruce_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-4 ~-7 ~8 ~-4 spruce_log []
setblock ~-7 ~9 ~-4 lantern []
fill ~-7 ~6 ~4 ~-7 ~8 ~4 spruce_log []
setblock ~-7 ~9 ~4 lantern []
fill ~7 ~6 ~-4 ~7 ~8 ~-4 spruce_log []
setblock ~7 ~9 ~-4 lantern []
fill ~7 ~6 ~4 ~7 ~8 ~4 spruce_log []
setblock ~7 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~-1 ~-1 ~8 ~3 ~1 spruce_planks []
setblock ~8 ~2 ~0 barrel ["facing_direction"=1]
setblock ~8 ~4 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 14
replaceitem block ~-6 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 2 ink_sac 14
replaceitem block ~-6 ~1 ~2 slot.container 3 gunpowder 13
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 5 copper_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 9 clay_ball 18
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 11 coal 16
replaceitem block ~-6 ~1 ~2 slot.container 12 fishing_rod 1
replaceitem block ~-6 ~1 ~2 slot.container 13 lead 8
replaceitem block ~-6 ~1 ~2 slot.container 14 bucket 1
loot insert ~-6 ~1 ~2 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~2 ~0

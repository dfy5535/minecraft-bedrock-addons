# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2628/4224 | 主题内编号: b068/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·断裂凯旋高架拱廊 (river_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cartography]
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

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 mossy_cobblestone []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~-1 ~-1 ~8 ~7 ~1 spruce_planks []
setblock ~8 ~6 ~0 barrel ["facing_direction"=1]
setblock ~8 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 14
replaceitem block ~-6 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-6 ~1 ~2 slot.container 2 ink_sac 14
replaceitem block ~-6 ~1 ~2 slot.container 3 gunpowder 13
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 5 copper_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 9 coal 15
replaceitem block ~-6 ~1 ~2 slot.container 10 fishing_rod 1
replaceitem block ~-6 ~1 ~2 slot.container 11 lead 7
replaceitem block ~-6 ~1 ~2 slot.container 12 bucket 1
replaceitem block ~-6 ~1 ~2 slot.container 13 boat 1
replaceitem block ~-6 ~1 ~2 slot.container 14 lantern 5
loot insert ~-6 ~1 ~2 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

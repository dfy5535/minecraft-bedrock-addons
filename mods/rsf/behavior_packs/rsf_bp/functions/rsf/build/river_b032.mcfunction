# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2592/4224 | 主题内编号: b032/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·断顶残垣古哨塔 (river_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-5 ~1 ~-5 ~5 ~10 ~5 air []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_brick_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 spruce_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 barrel []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 nautilus_shell 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 8
replaceitem block ~0 ~-3 ~-2 slot.container 2 string 11
replaceitem block ~0 ~-3 ~-2 slot.container 3 slime_ball 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 ink_sac 11
replaceitem block ~0 ~-3 ~-2 slot.container 5 gunpowder 10
replaceitem block ~0 ~-3 ~-2 slot.container 9 clay_ball 21
replaceitem block ~0 ~-3 ~-2 slot.container 10 iron_ingot 12
replaceitem block ~0 ~-3 ~-2 slot.container 11 coal 12
replaceitem block ~0 ~-3 ~-2 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 lead 4
replaceitem block ~0 ~-3 ~-2 slot.container 14 bucket 1
loot insert ~0 ~-3 ~-2 loot "rsf/river"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~8 ~4 mossy_cobblestone []
fill ~-3 ~1 ~-3 ~3 ~7 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~8 ~-4 spruce_log []
fill ~-4 ~1 ~4 ~-4 ~8 ~4 spruce_log []
fill ~4 ~1 ~-4 ~4 ~8 ~-4 spruce_log []
fill ~4 ~1 ~4 ~4 ~8 ~4 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~8 ~-4 ~4 ~8 ~4 stone_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-4 ~7 ~-1 ~-4 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 5x7x5) ---
fill ~5 ~-1 ~-1 ~5 ~6 ~1 spruce_planks []
setblock ~5 ~5 ~0 barrel ["facing_direction"=1]
setblock ~5 ~7 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~2 slot.container 1 copper_ingot 9
replaceitem block ~-3 ~1 ~2 slot.container 2 nautilus_shell 3
replaceitem block ~-3 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~2 slot.container 4 string 14
replaceitem block ~-3 ~1 ~2 slot.container 5 slime_ball 11
replaceitem block ~-3 ~1 ~2 slot.container 9 lead 4
replaceitem block ~-3 ~1 ~2 slot.container 10 bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 11 boat 1
replaceitem block ~-3 ~1 ~2 slot.container 12 lantern 9
replaceitem block ~-3 ~1 ~2 slot.container 13 cooked_salmon 16
replaceitem block ~-3 ~1 ~2 slot.container 14 cooked_cod 10
loot insert ~-3 ~1 ~2 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

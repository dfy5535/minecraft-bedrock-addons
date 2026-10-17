# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2629/4224 | 主题内编号: b069/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·藤蔓侵蚀十字修道院 (river_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 gunpowder 10
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 2 copper_ingot 14
replaceitem block ~0 ~-2 ~-3 slot.container 3 nautilus_shell 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 bone 8
replaceitem block ~0 ~-2 ~-3 slot.container 5 string 11
replaceitem block ~0 ~-2 ~-3 slot.container 9 iron_ingot 6
replaceitem block ~0 ~-2 ~-3 slot.container 10 coal 13
replaceitem block ~0 ~-2 ~-3 slot.container 11 fishing_rod 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 lead 5
replaceitem block ~0 ~-2 ~-3 slot.container 13 bucket 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 boat 1
loot insert ~0 ~-2 ~-3 loot "rsf/river"
loot insert ~0 ~-2 ~-3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 spruce_planks []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 spruce_planks []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 spruce_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 1 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 5 nautilus_shell 3
replaceitem block ~5 ~1 ~3 slot.container 9 bucket 1
replaceitem block ~5 ~1 ~3 slot.container 10 boat 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 10
replaceitem block ~5 ~1 ~3 slot.container 12 cooked_salmon 10
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_cod 11
replaceitem block ~5 ~1 ~3 slot.container 14 clay_ball 18
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 5 string 17
replaceitem block ~-5 ~1 ~4 slot.container 9 bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 10 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_salmon 15
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_cod 16
replaceitem block ~-5 ~1 ~4 slot.container 14 clay_ball 16
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2631/4224 | 主题内编号: b071/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·残破双子哨所遗迹 (river_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 oak_planks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 oak_planks [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 oak_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 stone_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 oak_planks []
fill ~2 ~1 ~-4 ~6 ~7 ~4 oak_planks []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 cobblestone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 oak_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~7 ~-1 ~-1 ~7 ~5 ~1 spruce_planks []
setblock ~7 ~4 ~0 barrel ["facing_direction"=1]
setblock ~7 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 2 copper_ingot 9
replaceitem block ~5 ~1 ~2 slot.container 3 nautilus_shell 3
replaceitem block ~5 ~1 ~2 slot.container 4 bone 11
replaceitem block ~5 ~1 ~2 slot.container 5 string 14
replaceitem block ~5 ~1 ~2 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~2 slot.container 10 coal 12
replaceitem block ~5 ~1 ~2 slot.container 11 fishing_rod 1
replaceitem block ~5 ~1 ~2 slot.container 12 lead 4
replaceitem block ~5 ~1 ~2 slot.container 13 bucket 1
replaceitem block ~5 ~1 ~2 slot.container 14 boat 1
loot insert ~5 ~1 ~2 loot "rsf/river"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 copper_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 1 nautilus_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 string 17
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ink_sac 9
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 10 coal 17
replaceitem block ~-5 ~1 ~3 slot.container 11 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lead 2
replaceitem block ~-5 ~1 ~3 slot.container 13 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 14 boat 1
loot insert ~-5 ~1 ~3 loot "rsf/river"
loot insert ~-5 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

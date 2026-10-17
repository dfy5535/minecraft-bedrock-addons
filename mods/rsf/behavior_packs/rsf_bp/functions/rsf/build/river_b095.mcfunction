# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2655/4224 | 主题内编号: b095/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子灯笼守卫神龛 (river_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 oak_planks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 oak_planks [] replace water
fill ~-7 ~1 ~-4 ~7 ~8 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 oak_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~7 ~3 oak_planks []
fill ~2 ~1 ~-3 ~6 ~7 ~3 oak_planks []
fill ~-5 ~1 ~-2 ~-3 ~6 ~2 air []
fill ~3 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 cobblestone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 stone_bricks []
fill ~-6 ~7 ~-3 ~6 ~7 ~3 stone_bricks []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 barrel []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~3 ~-5 stripped_oak_log []
setblock ~-8 ~4 ~-5 torch []
fill ~-8 ~0 ~5 ~-8 ~3 ~5 stripped_oak_log []
setblock ~-8 ~4 ~5 torch []
fill ~8 ~0 ~-5 ~8 ~3 ~-5 stripped_oak_log []
setblock ~8 ~4 ~-5 torch []
fill ~8 ~0 ~5 ~8 ~3 ~5 stripped_oak_log []
setblock ~8 ~4 ~5 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~-1 ~-1 ~7 ~4 ~1 spruce_planks []
setblock ~7 ~3 ~0 barrel ["facing_direction"=1]
setblock ~7 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~2 smoker []
setblock ~5 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~1 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 2 copper_ingot 9
replaceitem block ~5 ~1 ~1 slot.container 3 nautilus_shell 3
replaceitem block ~5 ~1 ~1 slot.container 4 bone 11
replaceitem block ~5 ~1 ~1 slot.container 5 string 14
replaceitem block ~5 ~1 ~1 slot.container 9 fishing_rod 1
replaceitem block ~5 ~1 ~1 slot.container 10 lead 5
replaceitem block ~5 ~1 ~1 slot.container 11 bucket 1
replaceitem block ~5 ~1 ~1 slot.container 12 boat 1
replaceitem block ~5 ~1 ~1 slot.container 13 lantern 10
replaceitem block ~5 ~1 ~1 slot.container 14 cooked_salmon 10
loot insert ~5 ~1 ~1 loot "rsf/river"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 copper_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 1 nautilus_shell 6
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 3 string 17
replaceitem block ~-5 ~1 ~2 slot.container 4 slime_ball 6
replaceitem block ~-5 ~1 ~2 slot.container 5 ink_sac 9
replaceitem block ~-5 ~1 ~2 slot.container 9 fishing_rod 1
replaceitem block ~-5 ~1 ~2 slot.container 10 lead 3
replaceitem block ~-5 ~1 ~2 slot.container 11 bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 12 boat 1
replaceitem block ~-5 ~1 ~2 slot.container 13 lantern 8
replaceitem block ~-5 ~1 ~2 slot.container 14 cooked_salmon 15
loot insert ~-5 ~1 ~2 loot "rsf/river"
loot insert ~-5 ~1 ~2 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

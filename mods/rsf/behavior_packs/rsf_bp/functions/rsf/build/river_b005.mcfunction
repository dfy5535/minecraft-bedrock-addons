# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2565/4224 | 主题内编号: b005/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·下沉圣泉秘宝祭坛 (river_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 gunpowder 10
replaceitem block ~-3 ~-3 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 copper_ingot 14
replaceitem block ~-3 ~-3 ~2 slot.container 3 nautilus_shell 8
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 string 11
replaceitem block ~-3 ~-3 ~2 slot.container 9 cooked_cod 14
replaceitem block ~-3 ~-3 ~2 slot.container 10 clay_ball 21
replaceitem block ~-3 ~-3 ~2 slot.container 11 iron_ingot 12
replaceitem block ~-3 ~-3 ~2 slot.container 12 coal 12
replaceitem block ~-3 ~-3 ~2 slot.container 13 fishing_rod 1
replaceitem block ~-3 ~-3 ~2 slot.container 14 lead 4
loot insert ~-3 ~-3 ~2 loot "rsf/river"
loot insert ~-3 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~4 ~-4 ~-5 ~6 ~-4 spruce_log []
setblock ~-5 ~7 ~-4 lantern []
fill ~-5 ~4 ~4 ~-5 ~6 ~4 spruce_log []
setblock ~-5 ~7 ~4 lantern []
fill ~5 ~4 ~-4 ~5 ~6 ~-4 spruce_log []
setblock ~5 ~7 ~-4 lantern []
fill ~5 ~4 ~4 ~5 ~6 ~4 spruce_log []
setblock ~5 ~7 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~-1 ~-1 ~6 ~4 ~1 spruce_planks []
setblock ~6 ~3 ~0 barrel ["facing_direction"=1]
setblock ~6 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_stone_bricks []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 1 ink_sac 14
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 copper_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 5 nautilus_shell 3
replaceitem block ~4 ~1 ~2 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~2 slot.container 10 lead 6
replaceitem block ~4 ~1 ~2 slot.container 11 bucket 1
replaceitem block ~4 ~1 ~2 slot.container 12 boat 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 4
replaceitem block ~4 ~1 ~2 slot.container 14 cooked_salmon 11
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 8
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 copper_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 3 nautilus_shell 6
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 5 string 17
replaceitem block ~-4 ~1 ~3 slot.container 9 fishing_rod 1
replaceitem block ~-4 ~1 ~3 slot.container 10 lead 4
replaceitem block ~-4 ~1 ~3 slot.container 11 bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 12 boat 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 9
replaceitem block ~-4 ~1 ~3 slot.container 14 cooked_salmon 16
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

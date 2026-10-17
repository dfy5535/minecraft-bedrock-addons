# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2593/4224 | 主题内编号: b033/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·太阳金顶高耸方尖碑 (river_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks [] replace water
fill ~-5 ~1 ~-4 ~5 ~12 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 sea_lantern []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 bone 8
replaceitem block ~0 ~-2 ~-1 slot.container 1 string 11
replaceitem block ~0 ~-2 ~-1 slot.container 2 slime_ball 8
replaceitem block ~0 ~-2 ~-1 slot.container 3 ink_sac 11
replaceitem block ~0 ~-2 ~-1 slot.container 4 gunpowder 10
replaceitem block ~0 ~-2 ~-1 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-2 ~-1 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-2 ~-1 slot.container 10 lead 2
replaceitem block ~0 ~-2 ~-1 slot.container 11 bucket 1
replaceitem block ~0 ~-2 ~-1 slot.container 12 boat 1
replaceitem block ~0 ~-2 ~-1 slot.container 13 lantern 7
replaceitem block ~0 ~-2 ~-1 slot.container 14 cooked_salmon 14
loot insert ~0 ~-2 ~-1 loot "rsf/river"
loot insert ~0 ~-2 ~-1 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 spruce_planks []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 stone_bricks []
fill ~-2 ~5 ~-1 ~2 ~10 ~1 stone_bricks []
fill ~-2 ~1 ~-1 ~2 ~9 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 stone_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 spruce_planks []
fill ~0 ~16 ~0 ~0 ~17 ~0 barrel []
setblock ~0 ~18 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 oak_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 5x4x6) ---
fill ~5 ~-1 ~-1 ~5 ~7 ~1 spruce_planks []
setblock ~5 ~6 ~0 barrel ["facing_direction"=1]
setblock ~5 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 copper_ingot 9
replaceitem block ~3 ~1 ~1 slot.container 1 nautilus_shell 3
replaceitem block ~3 ~1 ~1 slot.container 2 bone 11
replaceitem block ~3 ~1 ~1 slot.container 3 string 14
replaceitem block ~3 ~1 ~1 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 5 ink_sac 14
replaceitem block ~3 ~1 ~1 slot.container 9 lantern 7
replaceitem block ~3 ~1 ~1 slot.container 10 cooked_salmon 14
replaceitem block ~3 ~1 ~1 slot.container 11 cooked_cod 15
replaceitem block ~3 ~1 ~1 slot.container 12 clay_ball 22
replaceitem block ~3 ~1 ~1 slot.container 13 iron_ingot 6
replaceitem block ~3 ~1 ~1 slot.container 14 coal 13
loot insert ~3 ~1 ~1 loot "rsf/river"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-3 ~1 ~2 slot.container 1 string 17
replaceitem block ~-3 ~1 ~2 slot.container 2 slime_ball 6
replaceitem block ~-3 ~1 ~2 slot.container 3 ink_sac 9
replaceitem block ~-3 ~1 ~2 slot.container 4 gunpowder 8
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 9 lantern 5
replaceitem block ~-3 ~1 ~2 slot.container 10 cooked_salmon 12
replaceitem block ~-3 ~1 ~2 slot.container 11 cooked_cod 13
replaceitem block ~-3 ~1 ~2 slot.container 12 clay_ball 20
replaceitem block ~-3 ~1 ~2 slot.container 13 iron_ingot 11
replaceitem block ~-3 ~1 ~2 slot.container 14 coal 18
loot insert ~-3 ~1 ~2 loot "rsf/river"
loot insert ~-3 ~1 ~2 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1

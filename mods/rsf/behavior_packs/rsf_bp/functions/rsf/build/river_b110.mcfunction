# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2670/4224 | 主题内编号: b110/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子附魔与酿造实验楼 (river_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 oak_planks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 spruce_planks []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 copper_ingot 14
replaceitem block ~4 ~-2 ~2 slot.container 1 nautilus_shell 8
replaceitem block ~4 ~-2 ~2 slot.container 2 bone 8
replaceitem block ~4 ~-2 ~2 slot.container 3 string 11
replaceitem block ~4 ~-2 ~2 slot.container 4 slime_ball 8
replaceitem block ~4 ~-2 ~2 slot.container 5 ink_sac 11
replaceitem block ~4 ~-2 ~2 slot.container 9 cooked_cod 15
replaceitem block ~4 ~-2 ~2 slot.container 10 clay_ball 22
replaceitem block ~4 ~-2 ~2 slot.container 11 iron_ingot 6
replaceitem block ~4 ~-2 ~2 slot.container 12 coal 13
replaceitem block ~4 ~-2 ~2 slot.container 13 fishing_rod 1
replaceitem block ~4 ~-2 ~2 slot.container 14 lead 5
loot insert ~4 ~-2 ~2 loot "rsf/river"
loot insert ~4 ~-2 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 mossy_stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~6 ~-5 ~8 ~6 ~5 stone_brick_slab []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 oak_planks []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 oak_slab []
setblock ~0 ~10 ~0 sea_lantern []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 mossy_stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 campfire []
setblock ~2 ~4 ~-7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~-1 ~-1 ~8 ~4 ~1 spruce_planks []
setblock ~8 ~3 ~0 barrel ["facing_direction"=1]
setblock ~8 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 sea_lantern []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 ink_sac 14
replaceitem block ~-6 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-6 ~1 ~2 slot.container 4 nautilus_shell 3
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-6 ~1 ~2 slot.container 9 cooked_salmon 13
replaceitem block ~-6 ~1 ~2 slot.container 10 cooked_cod 14
replaceitem block ~-6 ~1 ~2 slot.container 11 clay_ball 21
replaceitem block ~-6 ~1 ~2 slot.container 12 iron_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 13 coal 12
replaceitem block ~-6 ~1 ~2 slot.container 14 fishing_rod 1
loot insert ~-6 ~1 ~2 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

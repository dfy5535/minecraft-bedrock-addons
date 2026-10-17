# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2651/4224 | 主题内编号: b091/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·跨水拱桥水神小祠 (river_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 oak_planks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 oak_planks [] replace water
fill ~-7 ~1 ~-4 ~7 ~8 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 oak_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 stone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 cobblestone []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 slime_ball 8
replaceitem block ~-4 ~-2 ~1 slot.container 1 ink_sac 11
replaceitem block ~-4 ~-2 ~1 slot.container 2 gunpowder 10
replaceitem block ~-4 ~-2 ~1 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~-2 ~1 slot.container 4 copper_ingot 14
replaceitem block ~-4 ~-2 ~1 slot.container 5 nautilus_shell 8
replaceitem block ~-4 ~-2 ~1 slot.container 9 lantern 10
replaceitem block ~-4 ~-2 ~1 slot.container 10 cooked_salmon 10
replaceitem block ~-4 ~-2 ~1 slot.container 11 cooked_cod 11
replaceitem block ~-4 ~-2 ~1 slot.container 12 clay_ball 18
replaceitem block ~-4 ~-2 ~1 slot.container 13 iron_ingot 9
replaceitem block ~-4 ~-2 ~1 slot.container 14 coal 16
loot insert ~-4 ~-2 ~1 loot "rsf/river"
loot insert ~-4 ~-2 ~1 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~6 ~3 oak_planks []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 oak_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 mossy_cobblestone []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 stone_brick_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~7 ~-1 ~-1 ~7 ~5 ~1 spruce_planks []
setblock ~7 ~4 ~0 barrel ["facing_direction"=1]
setblock ~7 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 bone 11
replaceitem block ~5 ~1 ~1 slot.container 1 string 14
replaceitem block ~5 ~1 ~1 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~1 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~1 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~1 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~1 slot.container 9 iron_ingot 11
replaceitem block ~5 ~1 ~1 slot.container 10 coal 18
replaceitem block ~5 ~1 ~1 slot.container 11 fishing_rod 1
replaceitem block ~5 ~1 ~1 slot.container 12 lead 3
replaceitem block ~5 ~1 ~1 slot.container 13 bucket 1
replaceitem block ~5 ~1 ~1 slot.container 14 boat 1
loot insert ~5 ~1 ~1 loot "rsf/river"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~2 slot.container 1 ink_sac 9
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 4 copper_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 5 nautilus_shell 6
replaceitem block ~-5 ~1 ~2 slot.container 9 iron_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 10 coal 16
replaceitem block ~-5 ~1 ~2 slot.container 11 fishing_rod 1
replaceitem block ~-5 ~1 ~2 slot.container 12 lead 8
replaceitem block ~-5 ~1 ~2 slot.container 13 bucket 1
replaceitem block ~-5 ~1 ~2 slot.container 14 boat 1
loot insert ~-5 ~1 ~2 loot "rsf/river"
loot insert ~-5 ~1 ~2 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0

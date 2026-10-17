# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2627/4224 | 主题内编号: b067/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·半掩埋下沉庭院遗迹 (river_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 oak_planks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~-4 ~-5 ~-3 torch []
setblock ~4 ~-5 ~3 torch []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 bone 8
replaceitem block ~0 ~-3 ~3 slot.container 1 string 11
replaceitem block ~0 ~-3 ~3 slot.container 2 slime_ball 8
replaceitem block ~0 ~-3 ~3 slot.container 3 ink_sac 11
replaceitem block ~0 ~-3 ~3 slot.container 4 gunpowder 10
replaceitem block ~0 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~3 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-3 ~3 slot.container 10 lead 2
replaceitem block ~0 ~-3 ~3 slot.container 11 bucket 1
replaceitem block ~0 ~-3 ~3 slot.container 12 boat 1
replaceitem block ~0 ~-3 ~3 slot.container 13 lantern 7
replaceitem block ~0 ~-3 ~3 slot.container 14 cooked_salmon 14
loot insert ~0 ~-3 ~3 loot "rsf/river"
loot insert ~0 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~4 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~4 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 oak_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~3 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 11
replaceitem block ~5 ~1 ~3 slot.container 1 string 14
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 cooked_cod 12
replaceitem block ~5 ~1 ~3 slot.container 10 clay_ball 19
replaceitem block ~5 ~1 ~3 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 12 coal 17
replaceitem block ~5 ~1 ~3 slot.container 13 fishing_rod 1
replaceitem block ~5 ~1 ~3 slot.container 14 lead 2
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 1 ink_sac 9
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_cod 10
replaceitem block ~-5 ~1 ~4 slot.container 10 clay_ball 17
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 12 coal 15
replaceitem block ~-5 ~1 ~4 slot.container 13 fishing_rod 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lead 7
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0

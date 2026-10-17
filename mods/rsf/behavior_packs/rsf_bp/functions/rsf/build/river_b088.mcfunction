# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2648/4224 | 主题内编号: b088/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·矿车铁轨转运仓库 (river_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 prismarine []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 mossy_cobblestone []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 stone_brick_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 spruce_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x8x6) ---
fill ~6 ~-1 ~-1 ~6 ~7 ~1 spruce_planks []
setblock ~6 ~6 ~0 barrel ["facing_direction"=1]
setblock ~6 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 2 nautilus_shell 3
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 4 string 14
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-4 ~1 ~4 slot.container 9 coal 14
replaceitem block ~-4 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~-4 ~1 ~4 slot.container 11 lead 6
replaceitem block ~-4 ~1 ~4 slot.container 12 bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-4 ~1 ~4 slot.container 14 lantern 4
loot insert ~-4 ~1 ~4 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-3 ~0

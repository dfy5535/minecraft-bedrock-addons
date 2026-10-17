# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2654/4224 | 主题内编号: b094/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·圆形圣泉祈祷亭 (river_shrine_rotunda_fountain)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 cobblestone []
setblock ~0 ~-5 ~0 prismarine []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 slime_ball 8
replaceitem block ~0 ~-2 ~-3 slot.container 1 ink_sac 11
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 10
replaceitem block ~0 ~-2 ~-3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 4 copper_ingot 14
replaceitem block ~0 ~-2 ~-3 slot.container 5 nautilus_shell 8
replaceitem block ~0 ~-2 ~-3 slot.container 9 fishing_rod 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 lead 7
replaceitem block ~0 ~-2 ~-3 slot.container 11 bucket 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 boat 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 lantern 5
replaceitem block ~0 ~-2 ~-3 slot.container 14 cooked_salmon 12
loot insert ~0 ~-2 ~-3 loot "rsf/river"
loot insert ~0 ~-2 ~-3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 oak_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 oak_log []
fill ~-3 ~1 ~-4 ~-3 ~5 ~-4 oak_log []
fill ~-3 ~1 ~4 ~-3 ~5 ~4 oak_log []
fill ~-1 ~1 ~-4 ~-1 ~5 ~-4 oak_log []
fill ~-1 ~1 ~4 ~-1 ~5 ~4 oak_log []
fill ~1 ~1 ~-4 ~1 ~5 ~-4 oak_log []
fill ~1 ~1 ~4 ~1 ~5 ~4 oak_log []
fill ~3 ~1 ~-4 ~3 ~5 ~-4 oak_log []
fill ~3 ~1 ~4 ~3 ~5 ~4 oak_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 oak_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 oak_log []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 oak_log []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 oak_log []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 oak_log []
fill ~5 ~1 ~0 ~5 ~5 ~0 oak_log []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 oak_log []
fill ~5 ~1 ~2 ~5 ~5 ~2 oak_log []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 mossy_stone_bricks []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 oak_log []
setblock ~0 ~4 ~-6 chiseled_stone_bricks []
setblock ~0 ~5 ~-6 campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 oak_log []
setblock ~0 ~4 ~6 chiseled_stone_bricks []
setblock ~0 ~5 ~6 campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 oak_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 oak_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~6 ~-1 ~-1 ~6 ~3 ~1 spruce_planks []
setblock ~6 ~2 ~0 barrel ["facing_direction"=1]
setblock ~6 ~4 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 sea_lantern []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ink_sac 14
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 4 nautilus_shell 3
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 9 clay_ball 17
replaceitem block ~-4 ~1 ~2 slot.container 10 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 11 coal 15
replaceitem block ~-4 ~1 ~2 slot.container 12 fishing_rod 1
replaceitem block ~-4 ~1 ~2 slot.container 13 lead 7
replaceitem block ~-4 ~1 ~2 slot.container 14 bucket 1
loot insert ~-4 ~1 ~2 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-3 ~0

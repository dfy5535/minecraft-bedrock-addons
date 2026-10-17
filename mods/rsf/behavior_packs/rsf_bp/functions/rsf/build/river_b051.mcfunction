# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2611/4224 | 主题内编号: b051/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·带哨塔围栏探险营地 (river_outpost_watch_camp)
# 建筑构造: 主体[u_courtyard] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 mossy_stone_bricks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 water []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~-4 ~-5 ~3 slot.container 1 copper_ingot 14
replaceitem block ~-4 ~-5 ~3 slot.container 2 nautilus_shell 8
replaceitem block ~-4 ~-5 ~3 slot.container 3 bone 8
replaceitem block ~-4 ~-5 ~3 slot.container 4 string 11
replaceitem block ~-4 ~-5 ~3 slot.container 5 slime_ball 8
replaceitem block ~-4 ~-5 ~3 slot.container 9 boat 1
replaceitem block ~-4 ~-5 ~3 slot.container 10 lantern 4
replaceitem block ~-4 ~-5 ~3 slot.container 11 cooked_salmon 11
replaceitem block ~-4 ~-5 ~3 slot.container 12 cooked_cod 12
replaceitem block ~-4 ~-5 ~3 slot.container 13 clay_ball 19
replaceitem block ~-4 ~-5 ~3 slot.container 14 iron_ingot 10
loot insert ~-4 ~-5 ~3 loot "rsf/river"
loot insert ~-4 ~-5 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 stone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 oak_fence []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 stripped_oak_log []
setblock ~-6 ~8 ~-5 torch []
setblock ~-6 ~7 ~5 stripped_oak_log []
setblock ~-6 ~8 ~5 torch []
setblock ~6 ~7 ~-5 stripped_oak_log []
setblock ~6 ~8 ~-5 torch []
setblock ~6 ~7 ~5 stripped_oak_log []
setblock ~6 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 mossy_cobblestone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~-1 ~-1 ~7 ~5 ~1 spruce_planks []
setblock ~7 ~4 ~0 barrel ["facing_direction"=1]
setblock ~7 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 11
replaceitem block ~5 ~1 ~3 slot.container 1 string 14
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 iron_ingot 6
replaceitem block ~5 ~1 ~3 slot.container 10 coal 13
replaceitem block ~5 ~1 ~3 slot.container 11 fishing_rod 1
replaceitem block ~5 ~1 ~3 slot.container 12 lead 5
replaceitem block ~5 ~1 ~3 slot.container 13 bucket 1
replaceitem block ~5 ~1 ~3 slot.container 14 boat 1
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 1 ink_sac 9
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 10 coal 18
replaceitem block ~-5 ~1 ~4 slot.container 11 fishing_rod 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lead 3
replaceitem block ~-5 ~1 ~4 slot.container 13 bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 14 boat 1
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1

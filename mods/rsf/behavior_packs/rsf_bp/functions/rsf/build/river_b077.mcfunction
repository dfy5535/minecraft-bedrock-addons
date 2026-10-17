# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2637/4224 | 主题内编号: b077/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子鸟居图腾神道 (river_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 spruce_planks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 spruce_planks [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 spruce_planks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-5 ~7 ~6 ~5 spruce_slab []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 stone_bricks []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 stone_brick_slab []
setblock ~0 ~10 ~0 barrel []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 1 ink_sac 14
replaceitem block ~5 ~1 ~2 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~2 slot.container 5 nautilus_shell 3
replaceitem block ~5 ~1 ~2 slot.container 9 cooked_cod 15
replaceitem block ~5 ~1 ~2 slot.container 10 clay_ball 22
replaceitem block ~5 ~1 ~2 slot.container 11 iron_ingot 6
replaceitem block ~5 ~1 ~2 slot.container 12 coal 13
replaceitem block ~5 ~1 ~2 slot.container 13 fishing_rod 1
replaceitem block ~5 ~1 ~2 slot.container 14 lead 5
loot insert ~5 ~1 ~2 loot "rsf/river"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 copper_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 3 nautilus_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 string 17
replaceitem block ~-5 ~1 ~3 slot.container 9 cooked_cod 13
replaceitem block ~-5 ~1 ~3 slot.container 10 clay_ball 20
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 12 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 13 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 14 lead 3
loot insert ~-5 ~1 ~3 loot "rsf/river"
loot insert ~-5 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

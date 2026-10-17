# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2625/4224 | 主题内编号: b065/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·断柱露天古神庙废墟 (river_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 spruce_planks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 spruce_planks [] replace water
fill ~-7 ~1 ~-7 ~7 ~7 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 spruce_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 stone_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 slime_ball 8
replaceitem block ~4 ~-2 ~4 slot.container 1 ink_sac 11
replaceitem block ~4 ~-2 ~4 slot.container 2 gunpowder 10
replaceitem block ~4 ~-2 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 4 copper_ingot 14
replaceitem block ~4 ~-2 ~4 slot.container 5 nautilus_shell 8
replaceitem block ~4 ~-2 ~4 slot.container 9 lantern 7
replaceitem block ~4 ~-2 ~4 slot.container 10 cooked_salmon 14
replaceitem block ~4 ~-2 ~4 slot.container 11 cooked_cod 15
replaceitem block ~4 ~-2 ~4 slot.container 12 clay_ball 22
replaceitem block ~4 ~-2 ~4 slot.container 13 iron_ingot 6
replaceitem block ~4 ~-2 ~4 slot.container 14 coal 13
loot insert ~4 ~-2 ~4 loot "rsf/river"
loot insert ~4 ~-2 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 stone_bricks []
fill ~-6 ~1 ~-6 ~-6 ~4 ~-6 spruce_log []
fill ~-6 ~1 ~6 ~-6 ~4 ~6 spruce_log []
fill ~-4 ~1 ~-6 ~-4 ~4 ~-6 spruce_log []
fill ~-4 ~1 ~6 ~-4 ~4 ~6 spruce_log []
fill ~-2 ~1 ~-6 ~-2 ~4 ~-6 spruce_log []
fill ~-2 ~1 ~6 ~-2 ~4 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_log []
fill ~0 ~1 ~6 ~0 ~4 ~6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~4 ~-6 spruce_log []
fill ~2 ~1 ~6 ~2 ~4 ~6 spruce_log []
fill ~4 ~1 ~-6 ~4 ~4 ~-6 spruce_log []
fill ~4 ~1 ~6 ~4 ~4 ~6 spruce_log []
fill ~6 ~1 ~-6 ~6 ~4 ~-6 spruce_log []
fill ~6 ~1 ~6 ~6 ~4 ~6 spruce_log []
fill ~-6 ~1 ~-4 ~-6 ~4 ~-4 spruce_log []
fill ~6 ~1 ~-4 ~6 ~4 ~-4 spruce_log []
fill ~-6 ~1 ~-2 ~-6 ~4 ~-2 spruce_log []
fill ~6 ~1 ~-2 ~6 ~4 ~-2 spruce_log []
fill ~-6 ~1 ~0 ~-6 ~4 ~0 spruce_log []
fill ~6 ~1 ~0 ~6 ~4 ~0 spruce_log []
fill ~-6 ~1 ~2 ~-6 ~4 ~2 spruce_log []
fill ~6 ~1 ~2 ~6 ~4 ~2 spruce_log []
fill ~-6 ~1 ~4 ~-6 ~4 ~4 spruce_log []
fill ~6 ~1 ~4 ~6 ~4 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 spruce_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~7 ~-1 ~-1 ~7 ~4 ~1 spruce_planks []
setblock ~7 ~3 ~0 barrel ["facing_direction"=1]
setblock ~7 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 copper_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 1 nautilus_shell 3
replaceitem block ~5 ~1 ~4 slot.container 2 bone 11
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~4 slot.container 5 ink_sac 14
replaceitem block ~5 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~5 ~1 ~4 slot.container 10 lead 3
replaceitem block ~5 ~1 ~4 slot.container 11 bucket 1
replaceitem block ~5 ~1 ~4 slot.container 12 boat 1
replaceitem block ~5 ~1 ~4 slot.container 13 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 14 cooked_salmon 15
loot insert ~5 ~1 ~4 loot "rsf/river"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~5 slot.container 1 string 17
replaceitem block ~-5 ~1 ~5 slot.container 2 slime_ball 6
replaceitem block ~-5 ~1 ~5 slot.container 3 ink_sac 9
replaceitem block ~-5 ~1 ~5 slot.container 4 gunpowder 8
replaceitem block ~-5 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 9 fishing_rod 1
replaceitem block ~-5 ~1 ~5 slot.container 10 lead 8
replaceitem block ~-5 ~1 ~5 slot.container 11 bucket 1
replaceitem block ~-5 ~1 ~5 slot.container 12 boat 1
replaceitem block ~-5 ~1 ~5 slot.container 13 lantern 6
replaceitem block ~-5 ~1 ~5 slot.container 14 cooked_salmon 13
loot insert ~-5 ~1 ~5 loot "rsf/river"
loot insert ~-5 ~1 ~5 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

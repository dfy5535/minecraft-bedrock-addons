# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2669/4224 | 主题内编号: b109/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·环柱能量矩阵奥术厅 (river_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 nautilus_shell 8
replaceitem block ~0 ~-4 ~3 slot.container 1 bone 8
replaceitem block ~0 ~-4 ~3 slot.container 2 string 11
replaceitem block ~0 ~-4 ~3 slot.container 3 slime_ball 8
replaceitem block ~0 ~-4 ~3 slot.container 4 ink_sac 11
replaceitem block ~0 ~-4 ~3 slot.container 5 gunpowder 10
replaceitem block ~0 ~-4 ~3 slot.container 9 clay_ball 17
replaceitem block ~0 ~-4 ~3 slot.container 10 iron_ingot 8
replaceitem block ~0 ~-4 ~3 slot.container 11 coal 15
replaceitem block ~0 ~-4 ~3 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-4 ~3 slot.container 13 lead 7
replaceitem block ~0 ~-4 ~3 slot.container 14 bucket 1
loot insert ~0 ~-4 ~3 loot "rsf/river"
loot insert ~0 ~-4 ~3 loot "chests/shipwrecksupply"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 nautilus_shell 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 string 17
replaceitem block ~0 ~-4 ~-3 slot.container 3 slime_ball 6
replaceitem block ~0 ~-4 ~-3 slot.container 4 ink_sac 9
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 8
replaceitem block ~0 ~-4 ~-3 slot.container 9 clay_ball 16
replaceitem block ~0 ~-4 ~-3 slot.container 10 iron_ingot 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 coal 14
replaceitem block ~0 ~-4 ~-3 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 lead 6
replaceitem block ~0 ~-4 ~-3 slot.container 14 bucket 1
loot insert ~0 ~-4 ~-3 loot "rsf/river"
loot insert ~0 ~-4 ~-3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 spruce_planks []
fill ~0 ~13 ~0 ~0 ~14 ~0 barrel []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 sea_lantern []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 sea_lantern []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 sea_lantern []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 sea_lantern []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 barrel []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 1 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 5 nautilus_shell 3
replaceitem block ~5 ~1 ~3 slot.container 9 bucket 1
replaceitem block ~5 ~1 ~3 slot.container 10 boat 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 8
replaceitem block ~5 ~1 ~3 slot.container 12 cooked_salmon 15
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_cod 16
replaceitem block ~5 ~1 ~3 slot.container 14 clay_ball 16
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 5 string 17
replaceitem block ~-5 ~1 ~4 slot.container 9 bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 10 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_salmon 13
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_cod 14
replaceitem block ~-5 ~1 ~4 slot.container 14 clay_ball 21
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0

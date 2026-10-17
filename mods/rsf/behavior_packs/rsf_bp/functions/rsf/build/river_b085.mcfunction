# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2645/4224 | 主题内编号: b085/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子烟囱砖石窑厂 (river_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 spruce_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 spruce_planks [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 barrel []

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
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 spruce_planks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 spruce_planks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 spruce_planks []
fill ~0 ~13 ~0 ~0 ~14 ~0 barrel []
setblock ~0 ~15 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~3 ~-7 spruce_log []
setblock ~-9 ~4 ~-7 lantern []
fill ~-9 ~0 ~7 ~-9 ~3 ~7 spruce_log []
setblock ~-9 ~4 ~7 lantern []
fill ~9 ~0 ~-7 ~9 ~3 ~-7 spruce_log []
setblock ~9 ~4 ~-7 lantern []
fill ~9 ~0 ~7 ~9 ~3 ~7 spruce_log []
setblock ~9 ~4 ~7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~7 ~-1 ~-1 ~7 ~4 ~1 spruce_planks []
setblock ~7 ~3 ~0 barrel ["facing_direction"=1]
setblock ~7 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~2 slot.container 1 ink_sac 14
replaceitem block ~5 ~1 ~2 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~2 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~2 slot.container 5 nautilus_shell 3
replaceitem block ~5 ~1 ~2 slot.container 9 fishing_rod 1
replaceitem block ~5 ~1 ~2 slot.container 10 lead 2
replaceitem block ~5 ~1 ~2 slot.container 11 bucket 1
replaceitem block ~5 ~1 ~2 slot.container 12 boat 1
replaceitem block ~5 ~1 ~2 slot.container 13 lantern 7
replaceitem block ~5 ~1 ~2 slot.container 14 cooked_salmon 14
loot insert ~5 ~1 ~2 loot "rsf/river"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 8
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 copper_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 3 nautilus_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 string 17
replaceitem block ~-5 ~1 ~3 slot.container 9 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lead 7
replaceitem block ~-5 ~1 ~3 slot.container 11 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 12 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_salmon 12
loot insert ~-5 ~1 ~3 loot "rsf/river"
loot insert ~-5 ~1 ~3 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0

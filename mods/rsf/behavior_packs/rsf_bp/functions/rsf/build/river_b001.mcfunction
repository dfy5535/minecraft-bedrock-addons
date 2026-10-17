# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2561/4224 | 主题内编号: b001/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·三层阶梯圣火祭坛 (river_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 stone_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 slime_ball 8
replaceitem block ~3 ~-2 ~2 slot.container 1 ink_sac 11
replaceitem block ~3 ~-2 ~2 slot.container 2 gunpowder 10
replaceitem block ~3 ~-2 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-2 ~2 slot.container 4 copper_ingot 14
replaceitem block ~3 ~-2 ~2 slot.container 5 nautilus_shell 8
replaceitem block ~3 ~-2 ~2 slot.container 9 bucket 1
replaceitem block ~3 ~-2 ~2 slot.container 10 boat 1
replaceitem block ~3 ~-2 ~2 slot.container 11 lantern 8
replaceitem block ~3 ~-2 ~2 slot.container 12 cooked_salmon 15
replaceitem block ~3 ~-2 ~2 slot.container 13 cooked_cod 16
replaceitem block ~3 ~-2 ~2 slot.container 14 clay_ball 16
loot insert ~3 ~-2 ~2 loot "rsf/river"
loot insert ~3 ~-2 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 spruce_planks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~5 ~2 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~4 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 spruce_log []
setblock ~-5 ~8 ~-4 lantern []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 spruce_log []
setblock ~-5 ~8 ~4 lantern []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 spruce_log []
setblock ~5 ~8 ~-4 lantern []
fill ~5 ~5 ~4 ~5 ~7 ~4 spruce_log []
setblock ~5 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x6x4) ---
fill ~6 ~-1 ~-1 ~6 ~5 ~1 spruce_planks []
setblock ~6 ~4 ~0 barrel ["facing_direction"=1]
setblock ~6 ~6 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 copper_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 1 nautilus_shell 3
replaceitem block ~4 ~1 ~2 slot.container 2 bone 11
replaceitem block ~4 ~1 ~2 slot.container 3 string 14
replaceitem block ~4 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 5 ink_sac 14
replaceitem block ~4 ~1 ~2 slot.container 9 iron_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 10 coal 12
replaceitem block ~4 ~1 ~2 slot.container 11 fishing_rod 1
replaceitem block ~4 ~1 ~2 slot.container 12 lead 4
replaceitem block ~4 ~1 ~2 slot.container 13 bucket 1
replaceitem block ~4 ~1 ~2 slot.container 14 boat 1
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 1 string 17
replaceitem block ~-4 ~1 ~3 slot.container 2 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 3 ink_sac 9
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 8
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 10 coal 17
replaceitem block ~-4 ~1 ~3 slot.container 11 fishing_rod 1
replaceitem block ~-4 ~1 ~3 slot.container 12 lead 2
replaceitem block ~-4 ~1 ~3 slot.container 13 bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 14 boat 1
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0

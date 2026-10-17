# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2597/4224 | 主题内编号: b037/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·环廊聖柱纪念碑 (river_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
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

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 barrel []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 slime_ball 8
replaceitem block ~4 ~-2 ~0 slot.container 1 ink_sac 11
replaceitem block ~4 ~-2 ~0 slot.container 2 gunpowder 10
replaceitem block ~4 ~-2 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~4 ~-2 ~0 slot.container 4 copper_ingot 14
replaceitem block ~4 ~-2 ~0 slot.container 5 nautilus_shell 8
replaceitem block ~4 ~-2 ~0 slot.container 9 bucket 1
replaceitem block ~4 ~-2 ~0 slot.container 10 boat 1
replaceitem block ~4 ~-2 ~0 slot.container 11 lantern 4
replaceitem block ~4 ~-2 ~0 slot.container 12 cooked_salmon 11
replaceitem block ~4 ~-2 ~0 slot.container 13 cooked_cod 12
replaceitem block ~4 ~-2 ~0 slot.container 14 clay_ball 19
loot insert ~4 ~-2 ~0 loot "rsf/river"
loot insert ~4 ~-2 ~0 loot "chests/shipwrecksupply"

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

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 spruce_log []
setblock ~-6 ~10 ~-5 lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 spruce_log []
setblock ~-6 ~10 ~5 lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 spruce_log []
setblock ~6 ~10 ~-5 lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 spruce_log []
setblock ~6 ~10 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 1 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 5 nautilus_shell 3
replaceitem block ~5 ~1 ~3 slot.container 9 cooked_cod 10
replaceitem block ~5 ~1 ~3 slot.container 10 clay_ball 17
replaceitem block ~5 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 12 coal 15
replaceitem block ~5 ~1 ~3 slot.container 13 fishing_rod 1
replaceitem block ~5 ~1 ~3 slot.container 14 lead 7
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 2 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 3 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 5 string 17
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_cod 15
replaceitem block ~-5 ~1 ~4 slot.container 10 clay_ball 22
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 12 coal 13
replaceitem block ~-5 ~1 ~4 slot.container 13 fishing_rod 1
replaceitem block ~-5 ~1 ~4 slot.container 14 lead 5
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2634/4224 | 主题内编号: b074/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·十字四象图腾柱阵 (river_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~-3 ~0 slot.container 1 bone 8
replaceitem block ~4 ~-3 ~0 slot.container 2 string 11
replaceitem block ~4 ~-3 ~0 slot.container 3 slime_ball 8
replaceitem block ~4 ~-3 ~0 slot.container 4 ink_sac 11
replaceitem block ~4 ~-3 ~0 slot.container 5 gunpowder 10
replaceitem block ~4 ~-3 ~0 slot.container 9 boat 1
replaceitem block ~4 ~-3 ~0 slot.container 10 lantern 5
replaceitem block ~4 ~-3 ~0 slot.container 11 cooked_salmon 12
replaceitem block ~4 ~-3 ~0 slot.container 12 cooked_cod 13
replaceitem block ~4 ~-3 ~0 slot.container 13 clay_ball 20
replaceitem block ~4 ~-3 ~0 slot.container 14 iron_ingot 11
loot insert ~4 ~-3 ~0 loot "rsf/river"
loot insert ~4 ~-3 ~0 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 stone_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 oak_log []
setblock ~-6 ~9 ~-5 campfire []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 oak_log []
setblock ~-6 ~9 ~5 campfire []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 oak_log []
setblock ~6 ~9 ~-5 campfire []
fill ~6 ~6 ~5 ~6 ~8 ~5 oak_log []
setblock ~6 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 cobblestone []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 torch []
setblock ~2 ~4 ~-9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~4 bookshelf []
setblock ~5 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 18
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 16
replaceitem block ~-5 ~1 ~3 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lead 8
replaceitem block ~-5 ~1 ~3 slot.container 14 bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

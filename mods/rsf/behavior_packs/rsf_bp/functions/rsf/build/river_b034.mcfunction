# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2594/4224 | 主题内编号: b034/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双子对称铭文方尖碑 (river_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 stone_bricks [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 stone_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~11 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 stone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 oak_planks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 oak_planks []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 ink_sac 11
replaceitem block ~4 ~-3 ~1 slot.container 1 gunpowder 10
replaceitem block ~4 ~-3 ~1 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-3 ~1 slot.container 3 copper_ingot 14
replaceitem block ~4 ~-3 ~1 slot.container 4 nautilus_shell 8
replaceitem block ~4 ~-3 ~1 slot.container 5 bone 8
replaceitem block ~4 ~-3 ~1 slot.container 9 lead 2
replaceitem block ~4 ~-3 ~1 slot.container 10 bucket 1
replaceitem block ~4 ~-3 ~1 slot.container 11 boat 1
replaceitem block ~4 ~-3 ~1 slot.container 12 lantern 7
replaceitem block ~4 ~-3 ~1 slot.container 13 cooked_salmon 14
replaceitem block ~4 ~-3 ~1 slot.container 14 cooked_cod 15
loot insert ~4 ~-3 ~1 loot "rsf/river"
loot insert ~4 ~-3 ~1 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 stone_bricks []
fill ~2 ~1 ~-3 ~6 ~10 ~3 stone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 mossy_stone_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 sea_lantern []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 nautilus_shell 3
replaceitem block ~-5 ~1 ~1 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~1 slot.container 2 string 14
replaceitem block ~-5 ~1 ~1 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~1 slot.container 4 ink_sac 14
replaceitem block ~-5 ~1 ~1 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~1 slot.container 9 clay_ball 20
replaceitem block ~-5 ~1 ~1 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~1 ~1 slot.container 11 coal 18
replaceitem block ~-5 ~1 ~1 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~1 slot.container 13 lead 3
replaceitem block ~-5 ~1 ~1 slot.container 14 bucket 1
loot insert ~-5 ~1 ~1 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-3 ~0

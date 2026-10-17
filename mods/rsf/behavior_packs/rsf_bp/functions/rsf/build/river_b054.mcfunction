# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2614/4224 | 主题内编号: b054/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·切石与伐木工匠棚屋 (river_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 stone_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~7 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 stone_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 oak_planks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~6 ~4 stone_bricks []
fill ~2 ~1 ~-4 ~6 ~6 ~4 stone_bricks []
fill ~-5 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 mossy_stone_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_stone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~16 ~0 sea_lantern []
setblock ~0 ~17 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 4 nautilus_shell 3
replaceitem block ~-5 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~2 slot.container 9 clay_ball 19
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 11 coal 17
replaceitem block ~-5 ~1 ~2 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~2 slot.container 13 lead 2
replaceitem block ~-5 ~1 ~2 slot.container 14 bucket 1
loot insert ~-5 ~1 ~2 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2608/4224 | 主题内编号: b048/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·阶梯王座巅峰试炼台 (river_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mossy_cobblestone [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 spruce_planks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 barrel []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 nautilus_shell 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 string 11
replaceitem block ~0 ~-3 ~-4 slot.container 3 slime_ball 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 ink_sac 11
replaceitem block ~0 ~-3 ~-4 slot.container 5 gunpowder 10
replaceitem block ~0 ~-3 ~-4 slot.container 9 cooked_salmon 10
replaceitem block ~0 ~-3 ~-4 slot.container 10 cooked_cod 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 clay_ball 18
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 9
replaceitem block ~0 ~-3 ~-4 slot.container 13 coal 16
replaceitem block ~0 ~-3 ~-4 slot.container 14 fishing_rod 1
loot insert ~0 ~-3 ~-4 loot "rsf/river"
loot insert ~0 ~-3 ~-4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 mossy_cobblestone []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 spruce_planks []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~6 ~-5 ~-8 ~6 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~8 ~6 ~-5 ~8 ~6 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-7 ~7 ~-4 ~-7 ~7 ~4 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-4 ~7 ~7 ~4 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_brick_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 barrel []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 barrel []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 spruce_log []
setblock ~-9 ~4 ~0 barrel []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 spruce_log []
setblock ~9 ~4 ~0 barrel []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~-1 ~-1 ~8 ~7 ~1 spruce_planks []
setblock ~8 ~6 ~0 barrel ["facing_direction"=1]
setblock ~8 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 prismarine []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~4 slot.container 1 copper_ingot 9
replaceitem block ~-6 ~1 ~4 slot.container 2 nautilus_shell 3
replaceitem block ~-6 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 4 string 14
replaceitem block ~-6 ~1 ~4 slot.container 5 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 9 coal 16
replaceitem block ~-6 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~-6 ~1 ~4 slot.container 11 lead 8
replaceitem block ~-6 ~1 ~4 slot.container 12 bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 6
loot insert ~-6 ~1 ~4 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1

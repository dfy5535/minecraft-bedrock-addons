# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2624/4224 | 主题内编号: b064/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·U型冥庭守墓人陵园 (river_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 spruce_planks []
setblock ~0 ~-7 ~0 barrel []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 nautilus_shell 8
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 8
replaceitem block ~0 ~-4 ~-3 slot.container 2 string 11
replaceitem block ~0 ~-4 ~-3 slot.container 3 slime_ball 8
replaceitem block ~0 ~-4 ~-3 slot.container 4 ink_sac 11
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 10
replaceitem block ~0 ~-4 ~-3 slot.container 9 boat 1
replaceitem block ~0 ~-4 ~-3 slot.container 10 lantern 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 cooked_salmon 14
replaceitem block ~0 ~-4 ~-3 slot.container 12 cooked_cod 15
replaceitem block ~0 ~-4 ~-3 slot.container 13 clay_ball 22
replaceitem block ~0 ~-4 ~-3 slot.container 14 iron_ingot 6
loot insert ~0 ~-4 ~-3 loot "rsf/river"
loot insert ~0 ~-4 ~-3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 stone_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 spruce_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 spruce_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 spruce_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 spruce_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 2 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 22
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 13
replaceitem block ~-5 ~1 ~3 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lead 5
replaceitem block ~-5 ~1 ~3 slot.container 14 bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-4 ~0

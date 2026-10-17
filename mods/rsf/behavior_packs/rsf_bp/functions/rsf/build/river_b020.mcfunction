# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2580/4224 | 主题内编号: b020/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·重甲防爆金库房间 (river_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_cobblestone [] replace water
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 spruce_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 1 copper_ingot 14
replaceitem block ~3 ~-3 ~2 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 8
replaceitem block ~3 ~-3 ~2 slot.container 4 string 11
replaceitem block ~3 ~-3 ~2 slot.container 5 slime_ball 8
replaceitem block ~3 ~-3 ~2 slot.container 9 coal 12
replaceitem block ~3 ~-3 ~2 slot.container 10 fishing_rod 1
replaceitem block ~3 ~-3 ~2 slot.container 11 lead 4
replaceitem block ~3 ~-3 ~2 slot.container 12 bucket 1
replaceitem block ~3 ~-3 ~2 slot.container 13 boat 1
replaceitem block ~3 ~-3 ~2 slot.container 14 lantern 9
loot insert ~3 ~-3 ~2 loot "rsf/river"
loot insert ~3 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 mossy_cobblestone []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~7 ~-3 spruce_planks []
setblock ~-5 ~8 ~-4 lantern []
fill ~-5 ~1 ~3 ~-4 ~7 ~4 spruce_planks []
setblock ~-5 ~8 ~3 lantern []
fill ~4 ~1 ~-4 ~5 ~7 ~-3 spruce_planks []
setblock ~4 ~8 ~-4 lantern []
fill ~4 ~1 ~3 ~5 ~7 ~4 spruce_planks []
setblock ~4 ~8 ~3 lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 spruce_planks []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 spruce_fence []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 spruce_log []
setblock ~-5 ~7 ~-4 lantern []
setblock ~-5 ~6 ~4 spruce_log []
setblock ~-5 ~7 ~4 lantern []
setblock ~5 ~6 ~-4 spruce_log []
setblock ~5 ~7 ~-4 lantern []
setblock ~5 ~6 ~4 spruce_log []
setblock ~5 ~7 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~-1 ~-1 ~6 ~4 ~1 spruce_planks []
setblock ~6 ~3 ~0 barrel ["facing_direction"=1]
setblock ~6 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 14
replaceitem block ~-4 ~1 ~2 slot.container 1 slime_ball 11
replaceitem block ~-4 ~1 ~2 slot.container 2 ink_sac 14
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 copper_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_salmon 14
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_cod 15
replaceitem block ~-4 ~1 ~2 slot.container 11 clay_ball 22
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_ingot 6
replaceitem block ~-4 ~1 ~2 slot.container 13 coal 13
replaceitem block ~-4 ~1 ~2 slot.container 14 fishing_rod 1
loot insert ~-4 ~1 ~2 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

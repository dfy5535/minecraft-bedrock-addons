# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2664/4224 | 主题内编号: b104/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双层指挥台卫戍堡 (river_bunker_terrace_command)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mossy_cobblestone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 prismarine []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 spruce_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 11
replaceitem block ~4 ~-3 ~3 slot.container 1 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 2 ink_sac 11
replaceitem block ~4 ~-3 ~3 slot.container 3 gunpowder 10
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 5 copper_ingot 14
replaceitem block ~4 ~-3 ~3 slot.container 9 lead 2
replaceitem block ~4 ~-3 ~3 slot.container 10 bucket 1
replaceitem block ~4 ~-3 ~3 slot.container 11 boat 1
replaceitem block ~4 ~-3 ~3 slot.container 12 lantern 7
replaceitem block ~4 ~-3 ~3 slot.container 13 cooked_salmon 14
replaceitem block ~4 ~-3 ~3 slot.container 14 cooked_cod 15
loot insert ~4 ~-3 ~3 loot "rsf/river"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-5 ~6 ~3 ~5 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~5 ~2 ~4 air []
fill ~-7 ~3 ~-6 ~7 ~3 ~6 stone_brick_slab []
fill ~-5 ~4 ~-4 ~5 ~7 ~4 spruce_planks []
fill ~-4 ~4 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_planks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_fence []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 spruce_log []
setblock ~-6 ~9 ~-5 lantern []
setblock ~-6 ~8 ~5 spruce_log []
setblock ~-6 ~9 ~5 lantern []
setblock ~6 ~8 ~-5 spruce_log []
setblock ~6 ~9 ~-5 lantern []
setblock ~6 ~8 ~5 spruce_log []
setblock ~6 ~9 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 2 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 9 clay_ball 20
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 18
replaceitem block ~-5 ~1 ~3 slot.container 12 fishing_rod 1
replaceitem block ~-5 ~1 ~3 slot.container 13 lead 3
replaceitem block ~-5 ~1 ~3 slot.container 14 bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

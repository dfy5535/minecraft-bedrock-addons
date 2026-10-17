# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2646/4224 | 主题内编号: b086/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·重装矿石金库碉堡 (river_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 nautilus_shell 8
replaceitem block ~4 ~-3 ~3 slot.container 1 bone 8
replaceitem block ~4 ~-3 ~3 slot.container 2 string 11
replaceitem block ~4 ~-3 ~3 slot.container 3 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 4 ink_sac 11
replaceitem block ~4 ~-3 ~3 slot.container 5 gunpowder 10
replaceitem block ~4 ~-3 ~3 slot.container 9 clay_ball 19
replaceitem block ~4 ~-3 ~3 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-3 ~3 slot.container 11 coal 17
replaceitem block ~4 ~-3 ~3 slot.container 12 fishing_rod 1
replaceitem block ~4 ~-3 ~3 slot.container 13 lead 2
replaceitem block ~4 ~-3 ~3 slot.container 14 bucket 1
loot insert ~4 ~-3 ~3 loot "rsf/river"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~7 ~-4 mossy_stone_bricks []
setblock ~-6 ~8 ~-5 campfire []
fill ~-6 ~1 ~4 ~-5 ~7 ~5 mossy_stone_bricks []
setblock ~-6 ~8 ~4 campfire []
fill ~5 ~1 ~-5 ~6 ~7 ~-4 mossy_stone_bricks []
setblock ~5 ~8 ~-5 campfire []
fill ~5 ~1 ~4 ~6 ~7 ~5 mossy_stone_bricks []
setblock ~5 ~8 ~4 campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 oak_planks []
fill ~0 ~14 ~0 ~0 ~15 ~0 chiseled_stone_bricks []
setblock ~0 ~16 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~-1 ~-1 ~7 ~5 ~1 spruce_planks []
setblock ~7 ~4 ~0 barrel ["facing_direction"=1]
setblock ~7 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 sea_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_salmon 12
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 13
replaceitem block ~-5 ~1 ~3 slot.container 13 clay_ball 20
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

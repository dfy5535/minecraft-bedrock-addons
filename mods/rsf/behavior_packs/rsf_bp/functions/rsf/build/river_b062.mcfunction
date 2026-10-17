# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2622/4224 | 主题内编号: b062/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·下沉阶梯深渊藏骨堂 (river_crypt_sunken_ossuary)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 6格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-7 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-7 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-7 ~3 campfire []
setblock ~4 ~-7 ~-3 campfire []
setblock ~4 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-5 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-5 ~3 slot.container 1 copper_ingot 14
replaceitem block ~4 ~-5 ~3 slot.container 2 nautilus_shell 8
replaceitem block ~4 ~-5 ~3 slot.container 3 bone 8
replaceitem block ~4 ~-5 ~3 slot.container 4 string 11
replaceitem block ~4 ~-5 ~3 slot.container 5 slime_ball 8
replaceitem block ~4 ~-5 ~3 slot.container 9 boat 1
replaceitem block ~4 ~-5 ~3 slot.container 10 lantern 4
replaceitem block ~4 ~-5 ~3 slot.container 11 cooked_salmon 11
replaceitem block ~4 ~-5 ~3 slot.container 12 cooked_cod 12
replaceitem block ~4 ~-5 ~3 slot.container 13 clay_ball 19
replaceitem block ~4 ~-5 ~3 slot.container 14 iron_ingot 10
loot insert ~4 ~-5 ~3 loot "rsf/river"
loot insert ~4 ~-5 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 stone_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~-1 ~-1 ~7 ~6 ~1 spruce_planks []
setblock ~7 ~5 ~0 barrel ["facing_direction"=1]
setblock ~7 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 3 copper_ingot 9
replaceitem block ~-5 ~1 ~3 slot.container 4 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 9 lead 6
replaceitem block ~-5 ~1 ~3 slot.container 10 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 4
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 11
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 12
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

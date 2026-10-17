# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2570/4224 | 主题内编号: b010/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·十字交叉深层地牢 (river_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 4格 | 地下深度 6格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~6 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 campfire []
setblock ~5 ~-7 ~0 campfire []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-5 ~4 slot.container 1 copper_ingot 14
replaceitem block ~0 ~-5 ~4 slot.container 2 nautilus_shell 8
replaceitem block ~0 ~-5 ~4 slot.container 3 bone 8
replaceitem block ~0 ~-5 ~4 slot.container 4 string 11
replaceitem block ~0 ~-5 ~4 slot.container 5 slime_ball 8
replaceitem block ~0 ~-5 ~4 slot.container 9 clay_ball 16
replaceitem block ~0 ~-5 ~4 slot.container 10 iron_ingot 7
replaceitem block ~0 ~-5 ~4 slot.container 11 coal 14
replaceitem block ~0 ~-5 ~4 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-5 ~4 slot.container 13 lead 6
replaceitem block ~0 ~-5 ~4 slot.container 14 bucket 1
loot insert ~0 ~-5 ~4 loot "rsf/river"
loot insert ~0 ~-5 ~4 loot "chests/shipwrecksupply"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-5 ~-4 slot.container 1 copper_ingot 12
replaceitem block ~0 ~-5 ~-4 slot.container 2 nautilus_shell 6
replaceitem block ~0 ~-5 ~-4 slot.container 3 bone 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 string 17
replaceitem block ~0 ~-5 ~-4 slot.container 5 slime_ball 6
replaceitem block ~0 ~-5 ~-4 slot.container 9 clay_ball 22
replaceitem block ~0 ~-5 ~-4 slot.container 10 iron_ingot 6
replaceitem block ~0 ~-5 ~-4 slot.container 11 coal 13
replaceitem block ~0 ~-5 ~-4 slot.container 12 fishing_rod 1
replaceitem block ~0 ~-5 ~-4 slot.container 13 lead 5
replaceitem block ~0 ~-5 ~-4 slot.container 14 bucket 1
loot insert ~0 ~-5 ~-4 loot "rsf/river"
loot insert ~0 ~-5 ~-4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~4 ~6 stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~4 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~3 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~4 ~-6 ~7 ~4 ~6 stone_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-7 ~3 ~-1 ~-7 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 oak_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 oak_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~-1 ~-1 ~8 ~4 ~1 spruce_planks []
setblock ~8 ~3 ~0 barrel ["facing_direction"=1]
setblock ~8 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 nautilus_shell 3
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 2 string 14
replaceitem block ~-6 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 4 ink_sac 14
replaceitem block ~-6 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~4 slot.container 9 cooked_salmon 11
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_cod 12
replaceitem block ~-6 ~1 ~4 slot.container 11 clay_ball 19
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~-6 ~1 ~4 slot.container 13 coal 17
replaceitem block ~-6 ~1 ~4 slot.container 14 fishing_rod 1
loot insert ~-6 ~1 ~4 loot "rsf/river"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon salmon ~1 ~1 ~1
summon squid ~0 ~-5 ~0

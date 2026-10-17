# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2602/4224 | 主题内编号: b042/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·地底铁栏死斗深坑 (river_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~3 campfire []
setblock ~4 ~-6 ~-3 campfire []
setblock ~4 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~3 slot.container 0 string 11
replaceitem block ~4 ~-4 ~3 slot.container 1 slime_ball 8
replaceitem block ~4 ~-4 ~3 slot.container 2 ink_sac 11
replaceitem block ~4 ~-4 ~3 slot.container 3 gunpowder 10
replaceitem block ~4 ~-4 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~4 ~-4 ~3 slot.container 5 copper_ingot 14
replaceitem block ~4 ~-4 ~3 slot.container 9 boat 1
replaceitem block ~4 ~-4 ~3 slot.container 10 lantern 5
replaceitem block ~4 ~-4 ~3 slot.container 11 cooked_salmon 12
replaceitem block ~4 ~-4 ~3 slot.container 12 cooked_cod 13
replaceitem block ~4 ~-4 ~3 slot.container 13 clay_ball 20
replaceitem block ~4 ~-4 ~3 slot.container 14 iron_ingot 11
loot insert ~4 ~-4 ~3 loot "rsf/river"
loot insert ~4 ~-4 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~4 ~-5 ~-6 ~6 ~-5 oak_log []
setblock ~-6 ~7 ~-5 campfire []
fill ~-6 ~4 ~5 ~-6 ~6 ~5 oak_log []
setblock ~-6 ~7 ~5 campfire []
fill ~6 ~4 ~-5 ~6 ~6 ~-5 oak_log []
setblock ~6 ~7 ~-5 campfire []
fill ~6 ~4 ~5 ~6 ~6 ~5 oak_log []
setblock ~6 ~7 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 oak_log []
setblock ~-8 ~4 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 oak_log []
setblock ~-8 ~4 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 oak_log []
setblock ~8 ~4 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~3 ~7 oak_log []
setblock ~8 ~4 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x5) ---
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
replaceitem block ~-5 ~1 ~3 slot.container 0 nautilus_shell 3
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 slime_ball 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ink_sac 14
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 9 lead 7
replaceitem block ~-5 ~1 ~3 slot.container 10 bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 11 boat 1
replaceitem block ~-5 ~1 ~3 slot.container 12 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_salmon 12
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 13
loot insert ~-5 ~1 ~3 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1

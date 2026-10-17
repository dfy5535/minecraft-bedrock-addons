# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2590/4224 | 主题内编号: b030/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·双坡顶驻军卫戍塔 (river_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 campfire []
setblock ~3 ~-5 ~-2 campfire []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~2 slot.container 1 copper_ingot 14
replaceitem block ~3 ~-3 ~2 slot.container 2 nautilus_shell 8
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 8
replaceitem block ~3 ~-3 ~2 slot.container 4 string 11
replaceitem block ~3 ~-3 ~2 slot.container 5 slime_ball 8
replaceitem block ~3 ~-3 ~2 slot.container 9 clay_ball 18
replaceitem block ~3 ~-3 ~2 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 11 coal 16
replaceitem block ~3 ~-3 ~2 slot.container 12 fishing_rod 1
replaceitem block ~3 ~-3 ~2 slot.container 13 lead 8
replaceitem block ~3 ~-3 ~2 slot.container 14 bucket 1
loot insert ~3 ~-3 ~2 loot "rsf/river"
loot insert ~3 ~-3 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~0 ~5 ~7 ~4 oak_planks []
fill ~-4 ~1 ~-3 ~-1 ~7 ~3 air []
fill ~-1 ~1 ~1 ~4 ~6 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-4 ~-5 ~10 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-4 ~5 ~10 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-4 ~4 ~10 ~4 stone_brick_slab []
fill ~0 ~11 ~-5 ~0 ~11 ~5 mossy_stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 spruce_log []
setblock ~-7 ~4 ~-6 lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 spruce_log []
setblock ~-7 ~4 ~6 lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 spruce_log []
setblock ~7 ~4 ~-6 lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 spruce_log []
setblock ~7 ~4 ~6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x5x3) ---
fill ~6 ~-1 ~-1 ~6 ~4 ~1 spruce_planks []
setblock ~6 ~3 ~0 barrel ["facing_direction"=1]
setblock ~6 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~0 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 ink_sac 14
replaceitem block ~-4 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 copper_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 4 nautilus_shell 3
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~2 slot.container 9 cooked_salmon 10
replaceitem block ~-4 ~1 ~2 slot.container 10 cooked_cod 11
replaceitem block ~-4 ~1 ~2 slot.container 11 clay_ball 18
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 13 coal 16
replaceitem block ~-4 ~1 ~2 slot.container 14 fishing_rod 1
loot insert ~-4 ~1 ~2 loot "rsf/river"
summon salmon ~0 ~1 ~-1
summon squid ~-1 ~1 ~1
summon drowned ~1 ~1 ~1

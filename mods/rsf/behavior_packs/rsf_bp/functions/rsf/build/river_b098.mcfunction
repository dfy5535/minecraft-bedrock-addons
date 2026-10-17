# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2658/4224 | 主题内编号: b098/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·四角炮楼重装要塞 (river_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[pagoda_double] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_planks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 campfire []
setblock ~5 ~-6 ~-4 campfire []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 string 11
replaceitem block ~5 ~-4 ~4 slot.container 1 slime_ball 8
replaceitem block ~5 ~-4 ~4 slot.container 2 ink_sac 11
replaceitem block ~5 ~-4 ~4 slot.container 3 gunpowder 10
replaceitem block ~5 ~-4 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~-4 ~4 slot.container 5 copper_ingot 14
replaceitem block ~5 ~-4 ~4 slot.container 9 lead 2
replaceitem block ~5 ~-4 ~4 slot.container 10 bucket 1
replaceitem block ~5 ~-4 ~4 slot.container 11 boat 1
replaceitem block ~5 ~-4 ~4 slot.container 12 lantern 7
replaceitem block ~5 ~-4 ~4 slot.container 13 cooked_salmon 14
replaceitem block ~5 ~-4 ~4 slot.container 14 cooked_cod 15
loot insert ~5 ~-4 ~4 loot "rsf/river"
loot insert ~5 ~-4 ~4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 mossy_stone_bricks []
setblock ~-7 ~9 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 mossy_stone_bricks []
setblock ~-7 ~9 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 mossy_stone_bricks []
setblock ~6 ~9 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~8 ~6 mossy_stone_bricks []
setblock ~6 ~9 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 oak_planks []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 oak_slab []
setblock ~0 ~11 ~0 sea_lantern []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~8 ~-1 ~-1 ~8 ~7 ~1 spruce_planks []
setblock ~8 ~6 ~0 barrel ["facing_direction"=1]
setblock ~8 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 nautilus_shell 3
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~4 slot.container 2 string 14
replaceitem block ~-6 ~1 ~4 slot.container 3 slime_ball 11
replaceitem block ~-6 ~1 ~4 slot.container 4 ink_sac 14
replaceitem block ~-6 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~4 slot.container 9 coal 17
replaceitem block ~-6 ~1 ~4 slot.container 10 fishing_rod 1
replaceitem block ~-6 ~1 ~4 slot.container 11 lead 2
replaceitem block ~-6 ~1 ~4 slot.container 12 bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 13 boat 1
replaceitem block ~-6 ~1 ~4 slot.container 14 lantern 7
loot insert ~-6 ~1 ~4 loot "rsf/river"
summon drowned ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

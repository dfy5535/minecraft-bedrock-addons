# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2619/4224 | 主题内编号: b059/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·阶梯金字塔法老墓室 (river_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 oak_planks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 oak_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 torch []
setblock ~3 ~-6 ~-2 torch []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 copper_ingot 14
replaceitem block ~3 ~-4 ~2 slot.container 1 nautilus_shell 8
replaceitem block ~3 ~-4 ~2 slot.container 2 bone 8
replaceitem block ~3 ~-4 ~2 slot.container 3 string 11
replaceitem block ~3 ~-4 ~2 slot.container 4 slime_ball 8
replaceitem block ~3 ~-4 ~2 slot.container 5 ink_sac 11
replaceitem block ~3 ~-4 ~2 slot.container 9 bucket 1
replaceitem block ~3 ~-4 ~2 slot.container 10 boat 1
replaceitem block ~3 ~-4 ~2 slot.container 11 lantern 7
replaceitem block ~3 ~-4 ~2 slot.container 12 cooked_salmon 14
replaceitem block ~3 ~-4 ~2 slot.container 13 cooked_cod 15
replaceitem block ~3 ~-4 ~2 slot.container 14 clay_ball 22
loot insert ~3 ~-4 ~2 loot "rsf/river"
loot insert ~3 ~-4 ~2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 oak_planks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 cobblestone []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 mossy_cobblestone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 oak_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mossy_cobblestone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 stripped_oak_log []
setblock ~-9 ~4 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 stripped_oak_log []
setblock ~-9 ~4 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 stripped_oak_log []
setblock ~9 ~4 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~3 ~8 stripped_oak_log []
setblock ~9 ~4 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~-1 ~-1 ~8 ~3 ~1 spruce_planks []
setblock ~8 ~2 ~0 barrel ["facing_direction"=1]
setblock ~8 ~4 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-6 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 chiseled_stone_bricks []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 11
replaceitem block ~6 ~1 ~4 slot.container 1 string 14
replaceitem block ~6 ~1 ~4 slot.container 2 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 3 ink_sac 14
replaceitem block ~6 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 9 bucket 1
replaceitem block ~6 ~1 ~4 slot.container 10 boat 1
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 7
replaceitem block ~6 ~1 ~4 slot.container 12 cooked_salmon 14
replaceitem block ~6 ~1 ~4 slot.container 13 cooked_cod 15
replaceitem block ~6 ~1 ~4 slot.container 14 clay_ball 22
loot insert ~6 ~1 ~4 loot "rsf/river"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 1 ink_sac 9
replaceitem block ~-6 ~1 ~5 slot.container 2 gunpowder 8
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 4 copper_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 5 nautilus_shell 6
replaceitem block ~-6 ~1 ~5 slot.container 9 bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 10 boat 1
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 5
replaceitem block ~-6 ~1 ~5 slot.container 12 cooked_salmon 12
replaceitem block ~-6 ~1 ~5 slot.container 13 cooked_cod 13
replaceitem block ~-6 ~1 ~5 slot.container 14 clay_ball 20
loot insert ~-6 ~1 ~5 loot "rsf/river"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

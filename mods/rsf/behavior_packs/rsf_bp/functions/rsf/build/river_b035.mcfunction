# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2595/4224 | 主题内编号: b035/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·巨石垒砌古战石冢 (river_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 oak_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 oak_planks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 oak_planks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 copper_ingot 14
replaceitem block ~0 ~-3 ~2 slot.container 1 nautilus_shell 8
replaceitem block ~0 ~-3 ~2 slot.container 2 bone 8
replaceitem block ~0 ~-3 ~2 slot.container 3 string 11
replaceitem block ~0 ~-3 ~2 slot.container 4 slime_ball 8
replaceitem block ~0 ~-3 ~2 slot.container 5 ink_sac 11
replaceitem block ~0 ~-3 ~2 slot.container 9 bucket 1
replaceitem block ~0 ~-3 ~2 slot.container 10 boat 1
replaceitem block ~0 ~-3 ~2 slot.container 11 lantern 10
replaceitem block ~0 ~-3 ~2 slot.container 12 cooked_salmon 10
replaceitem block ~0 ~-3 ~2 slot.container 13 cooked_cod 11
replaceitem block ~0 ~-3 ~2 slot.container 14 clay_ball 18
loot insert ~0 ~-3 ~2 loot "rsf/river"
loot insert ~0 ~-3 ~2 loot "chests/shipwrecksupply"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 copper_ingot 12
replaceitem block ~0 ~-3 ~-2 slot.container 1 nautilus_shell 6
replaceitem block ~0 ~-3 ~-2 slot.container 2 bone 14
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 slime_ball 6
replaceitem block ~0 ~-3 ~-2 slot.container 5 ink_sac 9
replaceitem block ~0 ~-3 ~-2 slot.container 9 bucket 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 boat 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 lantern 9
replaceitem block ~0 ~-3 ~-2 slot.container 12 cooked_salmon 16
replaceitem block ~0 ~-3 ~-2 slot.container 13 cooked_cod 10
replaceitem block ~0 ~-3 ~-2 slot.container 14 clay_ball 17
loot insert ~0 ~-3 ~-2 loot "rsf/river"
loot insert ~0 ~-3 ~-2 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 oak_planks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 stripped_oak_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 stripped_oak_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 stripped_oak_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 stripped_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 cobblestone []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 mossy_cobblestone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 stripped_oak_log []
setblock ~-7 ~4 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 stripped_oak_log []
setblock ~-7 ~4 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 stripped_oak_log []
setblock ~7 ~4 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~3 ~6 stripped_oak_log []
setblock ~7 ~4 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~6 ~-1 ~-1 ~6 ~4 ~1 spruce_planks []
setblock ~6 ~3 ~0 barrel ["facing_direction"=1]
setblock ~6 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 11
replaceitem block ~4 ~1 ~2 slot.container 1 string 14
replaceitem block ~4 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 3 ink_sac 14
replaceitem block ~4 ~1 ~2 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 fishing_rod 1
replaceitem block ~4 ~1 ~2 slot.container 10 lead 8
replaceitem block ~4 ~1 ~2 slot.container 11 bucket 1
replaceitem block ~4 ~1 ~2 slot.container 12 boat 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~2 slot.container 14 cooked_salmon 13
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 1 ink_sac 9
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 8
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 copper_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 5 nautilus_shell 6
replaceitem block ~-4 ~1 ~3 slot.container 9 fishing_rod 1
replaceitem block ~-4 ~1 ~3 slot.container 10 lead 6
replaceitem block ~-4 ~1 ~3 slot.container 11 bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 12 boat 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 4
replaceitem block ~-4 ~1 ~3 slot.container 14 cooked_salmon 11
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

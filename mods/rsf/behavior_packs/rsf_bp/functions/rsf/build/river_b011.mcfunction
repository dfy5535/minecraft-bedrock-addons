# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2571/4224 | 主题内编号: b011/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·深渊困兽角斗地牢 (river_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 oak_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 oak_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
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
fill ~-6 ~1 ~-5 ~6 ~5 ~5 oak_planks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 air []
fill ~6 ~1 ~5 ~6 ~6 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 stripped_oak_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 stripped_oak_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 stripped_oak_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 stripped_oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 stripped_oak_log []
setblock ~-6 ~8 ~-5 torch []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 stripped_oak_log []
setblock ~-6 ~8 ~5 torch []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 stripped_oak_log []
setblock ~6 ~8 ~-5 torch []
fill ~6 ~5 ~5 ~6 ~7 ~5 stripped_oak_log []
setblock ~6 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 oak_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~7 ~-1 ~-1 ~7 ~5 ~1 spruce_planks []
setblock ~7 ~4 ~0 barrel ["facing_direction"=1]
setblock ~7 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 11
replaceitem block ~5 ~1 ~3 slot.container 1 string 14
replaceitem block ~5 ~1 ~3 slot.container 2 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 3 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~3 slot.container 9 iron_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 10 coal 15
replaceitem block ~5 ~1 ~3 slot.container 11 fishing_rod 1
replaceitem block ~5 ~1 ~3 slot.container 12 lead 7
replaceitem block ~5 ~1 ~3 slot.container 13 bucket 1
replaceitem block ~5 ~1 ~3 slot.container 14 boat 1
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 1 ink_sac 9
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 4 copper_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 5 nautilus_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 10 coal 13
replaceitem block ~-5 ~1 ~4 slot.container 11 fishing_rod 1
replaceitem block ~-5 ~1 ~4 slot.container 12 lead 5
replaceitem block ~-5 ~1 ~4 slot.container 13 bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 14 boat 1
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2601/4224 | 主题内编号: b041/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·八角看台古罗马斗技场 (river_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~1 ~-7 ~8 ~7 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 spruce_planks []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 air []
fill ~7 ~1 ~6 ~7 ~6 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 spruce_log []
fill ~6 ~1 ~5 ~6 ~5 ~5 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-6 ~-7 ~7 ~-6 spruce_log []
setblock ~-7 ~8 ~-6 lantern []
fill ~-7 ~5 ~6 ~-7 ~7 ~6 spruce_log []
setblock ~-7 ~8 ~6 lantern []
fill ~7 ~5 ~-6 ~7 ~7 ~-6 spruce_log []
setblock ~7 ~8 ~-6 lantern []
fill ~7 ~5 ~6 ~7 ~7 ~6 spruce_log []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 spruce_log []
setblock ~-9 ~4 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 spruce_log []
setblock ~-9 ~4 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 spruce_log []
setblock ~9 ~4 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 spruce_log []
setblock ~9 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~8 ~-1 ~-1 ~8 ~5 ~1 spruce_planks []
setblock ~8 ~4 ~0 barrel ["facing_direction"=1]
setblock ~8 ~6 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 copper_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 1 nautilus_shell 3
replaceitem block ~6 ~1 ~4 slot.container 2 bone 11
replaceitem block ~6 ~1 ~4 slot.container 3 string 14
replaceitem block ~6 ~1 ~4 slot.container 4 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 5 ink_sac 14
replaceitem block ~6 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 10 coal 17
replaceitem block ~6 ~1 ~4 slot.container 11 fishing_rod 1
replaceitem block ~6 ~1 ~4 slot.container 12 lead 2
replaceitem block ~6 ~1 ~4 slot.container 13 bucket 1
replaceitem block ~6 ~1 ~4 slot.container 14 boat 1
loot insert ~6 ~1 ~4 loot "rsf/river"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 1 string 17
replaceitem block ~-6 ~1 ~5 slot.container 2 slime_ball 6
replaceitem block ~-6 ~1 ~5 slot.container 3 ink_sac 9
replaceitem block ~-6 ~1 ~5 slot.container 4 gunpowder 8
replaceitem block ~-6 ~1 ~5 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 9 iron_ingot 8
replaceitem block ~-6 ~1 ~5 slot.container 10 coal 15
replaceitem block ~-6 ~1 ~5 slot.container 11 fishing_rod 1
replaceitem block ~-6 ~1 ~5 slot.container 12 lead 7
replaceitem block ~-6 ~1 ~5 slot.container 13 bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 14 boat 1
loot insert ~-6 ~1 ~5 loot "rsf/river"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2667/4224 | 主题内编号: b107/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·观星高塔与秘术地宫 (river_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 oak_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 oak_planks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_cobblestone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 chiseled_stone_bricks []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 bone 8
replaceitem block ~3 ~-3 ~0 slot.container 1 string 11
replaceitem block ~3 ~-3 ~0 slot.container 2 slime_ball 8
replaceitem block ~3 ~-3 ~0 slot.container 3 ink_sac 11
replaceitem block ~3 ~-3 ~0 slot.container 4 gunpowder 10
replaceitem block ~3 ~-3 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 9 bucket 1
replaceitem block ~3 ~-3 ~0 slot.container 10 boat 1
replaceitem block ~3 ~-3 ~0 slot.container 11 lantern 4
replaceitem block ~3 ~-3 ~0 slot.container 12 cooked_salmon 11
replaceitem block ~3 ~-3 ~0 slot.container 13 cooked_cod 12
replaceitem block ~3 ~-3 ~0 slot.container 14 clay_ball 19
loot insert ~3 ~-3 ~0 loot "rsf/river"
loot insert ~3 ~-3 ~0 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 oak_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~8 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 cobblestone []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~6 ~-1 ~-1 ~6 ~6 ~1 spruce_planks []
setblock ~6 ~5 ~0 barrel ["facing_direction"=1]
setblock ~6 ~7 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 11
replaceitem block ~4 ~1 ~2 slot.container 1 string 14
replaceitem block ~4 ~1 ~2 slot.container 2 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 3 ink_sac 14
replaceitem block ~4 ~1 ~2 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 9 cooked_cod 10
replaceitem block ~4 ~1 ~2 slot.container 10 clay_ball 17
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 8
replaceitem block ~4 ~1 ~2 slot.container 12 coal 15
replaceitem block ~4 ~1 ~2 slot.container 13 fishing_rod 1
replaceitem block ~4 ~1 ~2 slot.container 14 lead 7
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 1 ink_sac 9
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 8
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 4 copper_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 5 nautilus_shell 6
replaceitem block ~-4 ~1 ~3 slot.container 9 cooked_cod 15
replaceitem block ~-4 ~1 ~3 slot.container 10 clay_ball 22
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 6
replaceitem block ~-4 ~1 ~3 slot.container 12 coal 13
replaceitem block ~-4 ~1 ~3 slot.container 13 fishing_rod 1
replaceitem block ~-4 ~1 ~3 slot.container 14 lead 5
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2685/4224 | 主题内编号: b125/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·巨型阶梯金字塔神王殿 (river_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 stone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 barrel []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 slime_ball 8
replaceitem block ~5 ~-3 ~0 slot.container 1 ink_sac 11
replaceitem block ~5 ~-3 ~0 slot.container 2 gunpowder 10
replaceitem block ~5 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~5 ~-3 ~0 slot.container 4 copper_ingot 14
replaceitem block ~5 ~-3 ~0 slot.container 5 nautilus_shell 8
replaceitem block ~5 ~-3 ~0 slot.container 9 cooked_cod 12
replaceitem block ~5 ~-3 ~0 slot.container 10 clay_ball 19
replaceitem block ~5 ~-3 ~0 slot.container 11 iron_ingot 10
replaceitem block ~5 ~-3 ~0 slot.container 12 coal 17
replaceitem block ~5 ~-3 ~0 slot.container 13 fishing_rod 1
replaceitem block ~5 ~-3 ~0 slot.container 14 lead 2
loot insert ~5 ~-3 ~0 loot "rsf/river"
loot insert ~5 ~-3 ~0 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_planks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 spruce_planks []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 spruce_fence []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 spruce_log []
setblock ~-6 ~8 ~-4 lantern []
setblock ~-6 ~7 ~4 spruce_log []
setblock ~-6 ~8 ~4 lantern []
setblock ~6 ~7 ~-4 spruce_log []
setblock ~6 ~8 ~-4 lantern []
setblock ~6 ~7 ~4 spruce_log []
setblock ~6 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 sea_lantern []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 sea_lantern []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 spruce_log []
setblock ~-9 ~4 ~0 sea_lantern []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 spruce_log []
setblock ~9 ~4 ~0 sea_lantern []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~8 ~-1 ~-1 ~8 ~4 ~1 spruce_planks []
setblock ~8 ~3 ~0 barrel ["facing_direction"=1]
setblock ~8 ~5 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~0 ~2 ~0 lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~6 ~1 ~4 slot.container 1 ink_sac 14
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~6 ~1 ~4 slot.container 4 copper_ingot 9
replaceitem block ~6 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~6 ~1 ~4 slot.container 9 fishing_rod 1
replaceitem block ~6 ~1 ~4 slot.container 10 lead 7
replaceitem block ~6 ~1 ~4 slot.container 11 bucket 1
replaceitem block ~6 ~1 ~4 slot.container 12 boat 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 5
replaceitem block ~6 ~1 ~4 slot.container 14 cooked_salmon 12
loot insert ~6 ~1 ~4 loot "rsf/river"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 8
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~5 slot.container 2 copper_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 3 nautilus_shell 6
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~5 slot.container 5 string 17
replaceitem block ~-6 ~1 ~5 slot.container 9 fishing_rod 1
replaceitem block ~-6 ~1 ~5 slot.container 10 lead 5
replaceitem block ~-6 ~1 ~5 slot.container 11 bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 12 boat 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 10
replaceitem block ~-6 ~1 ~5 slot.container 14 cooked_salmon 10
loot insert ~-6 ~1 ~5 loot "rsf/river"
loot insert ~-6 ~1 ~5 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

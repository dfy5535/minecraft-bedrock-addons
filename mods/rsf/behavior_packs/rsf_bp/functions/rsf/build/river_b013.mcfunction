# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2573/4224 | 主题内编号: b013/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·地底熔炉苦工地牢 (river_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 spruce_planks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 spruce_planks [] replace water
fill ~-7 ~1 ~-7 ~7 ~7 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 spruce_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 torch []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 gunpowder 10
replaceitem block ~4 ~-2 ~0 slot.container 1 rotten_flesh 17
replaceitem block ~4 ~-2 ~0 slot.container 2 copper_ingot 14
replaceitem block ~4 ~-2 ~0 slot.container 3 nautilus_shell 8
replaceitem block ~4 ~-2 ~0 slot.container 4 bone 8
replaceitem block ~4 ~-2 ~0 slot.container 5 string 11
replaceitem block ~4 ~-2 ~0 slot.container 9 bucket 1
replaceitem block ~4 ~-2 ~0 slot.container 10 boat 1
replaceitem block ~4 ~-2 ~0 slot.container 11 lantern 9
replaceitem block ~4 ~-2 ~0 slot.container 12 cooked_salmon 16
replaceitem block ~4 ~-2 ~0 slot.container 13 cooked_cod 10
replaceitem block ~4 ~-2 ~0 slot.container 14 clay_ball 17
loot insert ~4 ~-2 ~0 loot "rsf/river"
loot insert ~4 ~-2 ~0 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 spruce_planks []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 spruce_log []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 spruce_log []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 spruce_log []
fill ~6 ~1 ~6 ~6 ~5 ~6 spruce_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 stone_bricks []
fill ~-6 ~6 ~-6 ~6 ~6 ~6 spruce_fence []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 air []
setblock ~-6 ~6 ~-6 spruce_log []
setblock ~-6 ~7 ~-6 lantern []
setblock ~-6 ~6 ~6 spruce_log []
setblock ~-6 ~7 ~6 lantern []
setblock ~6 ~6 ~-6 spruce_log []
setblock ~6 ~7 ~-6 lantern []
setblock ~6 ~6 ~6 spruce_log []
setblock ~6 ~7 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~7 ~-1 ~-1 ~7 ~7 ~1 spruce_planks []
setblock ~7 ~6 ~0 barrel ["facing_direction"=1]
setblock ~7 ~8 ~1 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 slime_ball 11
replaceitem block ~5 ~1 ~4 slot.container 1 ink_sac 14
replaceitem block ~5 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~1 ~4 slot.container 4 copper_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 5 nautilus_shell 3
replaceitem block ~5 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 10 cooked_salmon 15
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_cod 16
replaceitem block ~5 ~1 ~4 slot.container 12 clay_ball 16
replaceitem block ~5 ~1 ~4 slot.container 13 iron_ingot 7
replaceitem block ~5 ~1 ~4 slot.container 14 coal 14
loot insert ~5 ~1 ~4 loot "rsf/river"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 8
replaceitem block ~-5 ~1 ~5 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~5 slot.container 2 copper_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 3 nautilus_shell 6
replaceitem block ~-5 ~1 ~5 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~5 slot.container 5 string 17
replaceitem block ~-5 ~1 ~5 slot.container 9 lantern 6
replaceitem block ~-5 ~1 ~5 slot.container 10 cooked_salmon 13
replaceitem block ~-5 ~1 ~5 slot.container 11 cooked_cod 14
replaceitem block ~-5 ~1 ~5 slot.container 12 clay_ball 21
replaceitem block ~-5 ~1 ~5 slot.container 13 iron_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 14 coal 12
loot insert ~-5 ~1 ~5 loot "rsf/river"
loot insert ~-5 ~1 ~5 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0

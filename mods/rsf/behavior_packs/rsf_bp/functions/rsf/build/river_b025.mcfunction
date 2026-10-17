# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2585/4224 | 主题内编号: b025/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·雉堞女墙四方哨塔 (river_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 spruce_planks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 spruce_planks [] replace water
fill ~-5 ~1 ~-4 ~5 ~11 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 oak_planks []
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
fill ~-4 ~1 ~-3 ~4 ~9 ~3 spruce_planks []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 spruce_log []
fill ~4 ~1 ~3 ~4 ~9 ~3 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~9 ~-3 ~4 ~9 ~3 stone_bricks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 spruce_fence []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~-4 ~10 ~-3 spruce_log []
setblock ~-4 ~11 ~-3 lantern []
setblock ~-4 ~10 ~3 spruce_log []
setblock ~-4 ~11 ~3 lantern []
setblock ~4 ~10 ~-3 spruce_log []
setblock ~4 ~11 ~-3 lantern []
setblock ~4 ~10 ~3 spruce_log []
setblock ~4 ~11 ~3 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 stone_bricks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 spruce_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 spruce_slab []
setblock ~0 ~3 ~-5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 5x5x3) ---
fill ~5 ~-1 ~-1 ~5 ~4 ~1 spruce_planks []
setblock ~5 ~3 ~0 barrel ["facing_direction"=1]
setblock ~5 ~5 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 copper_ingot 9
replaceitem block ~3 ~1 ~1 slot.container 1 nautilus_shell 3
replaceitem block ~3 ~1 ~1 slot.container 2 bone 11
replaceitem block ~3 ~1 ~1 slot.container 3 string 14
replaceitem block ~3 ~1 ~1 slot.container 4 slime_ball 11
replaceitem block ~3 ~1 ~1 slot.container 5 ink_sac 14
replaceitem block ~3 ~1 ~1 slot.container 9 fishing_rod 1
replaceitem block ~3 ~1 ~1 slot.container 10 lead 5
replaceitem block ~3 ~1 ~1 slot.container 11 bucket 1
replaceitem block ~3 ~1 ~1 slot.container 12 boat 1
replaceitem block ~3 ~1 ~1 slot.container 13 lantern 10
replaceitem block ~3 ~1 ~1 slot.container 14 cooked_salmon 10
loot insert ~3 ~1 ~1 loot "rsf/river"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-3 ~1 ~2 slot.container 1 string 17
replaceitem block ~-3 ~1 ~2 slot.container 2 slime_ball 6
replaceitem block ~-3 ~1 ~2 slot.container 3 ink_sac 9
replaceitem block ~-3 ~1 ~2 slot.container 4 gunpowder 8
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-3 ~1 ~2 slot.container 9 fishing_rod 1
replaceitem block ~-3 ~1 ~2 slot.container 10 lead 3
replaceitem block ~-3 ~1 ~2 slot.container 11 bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 12 boat 1
replaceitem block ~-3 ~1 ~2 slot.container 13 lantern 8
replaceitem block ~-3 ~1 ~2 slot.container 14 cooked_salmon 15
loot insert ~-3 ~1 ~2 loot "rsf/river"
loot insert ~-3 ~1 ~2 loot "chests/shipwrecksupply"
summon squid ~0 ~1 ~-1
summon drowned ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2613/4224 | 主题内编号: b053/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·测绘师观景制图站 (river_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 spruce_log []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 spruce_log []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 spruce_log []
fill ~4 ~1 ~3 ~4 ~6 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 cobblestone []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 spruce_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~6 ~-1 ~-1 ~6 ~7 ~1 spruce_planks []
setblock ~6 ~6 ~0 barrel ["facing_direction"=1]
setblock ~6 ~8 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 1 ink_sac 14
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~2 slot.container 4 copper_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 5 nautilus_shell 3
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 6
replaceitem block ~4 ~1 ~2 slot.container 10 cooked_salmon 13
replaceitem block ~4 ~1 ~2 slot.container 11 cooked_cod 14
replaceitem block ~4 ~1 ~2 slot.container 12 clay_ball 21
replaceitem block ~4 ~1 ~2 slot.container 13 iron_ingot 12
replaceitem block ~4 ~1 ~2 slot.container 14 coal 12
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 8
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 2 copper_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 3 nautilus_shell 6
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 5 string 17
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 4
replaceitem block ~-4 ~1 ~3 slot.container 10 cooked_salmon 11
replaceitem block ~-4 ~1 ~3 slot.container 11 cooked_cod 12
replaceitem block ~-4 ~1 ~3 slot.container 12 clay_ball 19
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 14 coal 17
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2673/4224 | 主题内编号: b113/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·八角全采光生态温室 (river_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
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
fill ~-5 ~6 ~-4 ~5 ~6 ~4 stone_bricks []
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

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 copper_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 1 nautilus_shell 3
replaceitem block ~4 ~1 ~2 slot.container 2 bone 11
replaceitem block ~4 ~1 ~2 slot.container 3 string 14
replaceitem block ~4 ~1 ~2 slot.container 4 slime_ball 11
replaceitem block ~4 ~1 ~2 slot.container 5 ink_sac 14
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 10
replaceitem block ~4 ~1 ~2 slot.container 10 cooked_salmon 10
replaceitem block ~4 ~1 ~2 slot.container 11 cooked_cod 11
replaceitem block ~4 ~1 ~2 slot.container 12 clay_ball 18
replaceitem block ~4 ~1 ~2 slot.container 13 iron_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 14 coal 16
loot insert ~4 ~1 ~2 loot "rsf/river"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~3 slot.container 1 string 17
replaceitem block ~-4 ~1 ~3 slot.container 2 slime_ball 6
replaceitem block ~-4 ~1 ~3 slot.container 3 ink_sac 9
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 8
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 10 cooked_salmon 15
replaceitem block ~-4 ~1 ~3 slot.container 11 cooked_cod 16
replaceitem block ~-4 ~1 ~3 slot.container 12 clay_ball 16
replaceitem block ~-4 ~1 ~3 slot.container 13 iron_ingot 7
replaceitem block ~-4 ~1 ~3 slot.container 14 coal 14
loot insert ~-4 ~1 ~3 loot "rsf/river"
loot insert ~-4 ~1 ~3 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

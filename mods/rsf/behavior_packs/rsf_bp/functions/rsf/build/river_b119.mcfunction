# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2679/4224 | 主题内编号: b119/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·半地下恒温洞穴苗圃 (river_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 oak_planks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 oak_planks [] replace water
fill ~-6 ~1 ~-6 ~6 ~6 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 oak_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 11
replaceitem block ~0 ~-3 ~-4 slot.container 2 slime_ball 8
replaceitem block ~0 ~-3 ~-4 slot.container 3 ink_sac 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 10
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 bucket 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 boat 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 cooked_salmon 15
replaceitem block ~0 ~-3 ~-4 slot.container 13 cooked_cod 16
replaceitem block ~0 ~-3 ~-4 slot.container 14 clay_ball 16
loot insert ~0 ~-3 ~-4 loot "rsf/river"
loot insert ~0 ~-3 ~-4 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 oak_planks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 cobblestone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~4 ~-5 ~5 ~4 ~5 cobblestone []
fill ~-4 ~5 ~-4 ~4 ~6 ~4 glass []
fill ~-3 ~5 ~-3 ~3 ~5 ~3 air []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 oak_fence []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~6 ~-1 ~-1 ~6 ~3 ~1 spruce_planks []
setblock ~6 ~2 ~0 barrel ["facing_direction"=1]
setblock ~6 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~1 ~3 slot.container 2 copper_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 3 nautilus_shell 3
replaceitem block ~4 ~1 ~3 slot.container 4 bone 11
replaceitem block ~4 ~1 ~3 slot.container 5 string 14
replaceitem block ~4 ~1 ~3 slot.container 9 bucket 1
replaceitem block ~4 ~1 ~3 slot.container 10 boat 1
replaceitem block ~4 ~1 ~3 slot.container 11 lantern 4
replaceitem block ~4 ~1 ~3 slot.container 12 cooked_salmon 11
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_cod 12
replaceitem block ~4 ~1 ~3 slot.container 14 clay_ball 19
loot insert ~4 ~1 ~3 loot "rsf/river"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 copper_ingot 12
replaceitem block ~-4 ~1 ~4 slot.container 1 nautilus_shell 6
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~4 slot.container 3 string 17
replaceitem block ~-4 ~1 ~4 slot.container 4 slime_ball 6
replaceitem block ~-4 ~1 ~4 slot.container 5 ink_sac 9
replaceitem block ~-4 ~1 ~4 slot.container 9 bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 10 boat 1
replaceitem block ~-4 ~1 ~4 slot.container 11 lantern 9
replaceitem block ~-4 ~1 ~4 slot.container 12 cooked_salmon 16
replaceitem block ~-4 ~1 ~4 slot.container 13 cooked_cod 10
replaceitem block ~-4 ~1 ~4 slot.container 14 clay_ball 17
loot insert ~-4 ~1 ~4 loot "rsf/river"
loot insert ~-4 ~1 ~4 loot "chests/shipwrecksupply"
summon spider ~0 ~1 ~-1
summon salmon ~-1 ~1 ~1

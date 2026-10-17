# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2569/4224 | 主题内编号: b009/128
# 地形主题 #21: 河流与冰冻河道 (river) —— 带跨河水车廊桥与渔夫码头仓库
# 建筑名称: 河湾渡口系·铁栏双室地下死牢 (river_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: river, frozen_river
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 spruce_planks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 lantern []
setblock ~4 ~-5 ~-3 lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 8
replaceitem block ~4 ~-3 ~3 slot.container 1 string 11
replaceitem block ~4 ~-3 ~3 slot.container 2 slime_ball 8
replaceitem block ~4 ~-3 ~3 slot.container 3 ink_sac 11
replaceitem block ~4 ~-3 ~3 slot.container 4 gunpowder 10
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-3 ~3 slot.container 9 lantern 6
replaceitem block ~4 ~-3 ~3 slot.container 10 cooked_salmon 13
replaceitem block ~4 ~-3 ~3 slot.container 11 cooked_cod 14
replaceitem block ~4 ~-3 ~3 slot.container 12 clay_ball 21
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_ingot 12
replaceitem block ~4 ~-3 ~3 slot.container 14 coal 12
loot insert ~4 ~-3 ~3 loot "rsf/river"
loot insert ~4 ~-3 ~3 loot "chests/shipwrecksupply"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 spruce_fence []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 air []
setblock ~-6 ~5 ~-5 spruce_log []
setblock ~-6 ~6 ~-5 lantern []
setblock ~-6 ~5 ~5 spruce_log []
setblock ~-6 ~6 ~5 lantern []
setblock ~6 ~5 ~-5 spruce_log []
setblock ~6 ~6 ~-5 lantern []
setblock ~6 ~5 ~5 spruce_log []
setblock ~6 ~6 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (river 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~7 ~-1 ~-1 ~7 ~3 ~1 spruce_planks []
setblock ~7 ~2 ~0 barrel ["facing_direction"=1]
setblock ~7 ~4 ~0 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 barrel []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 copper_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 1 nautilus_shell 3
replaceitem block ~5 ~1 ~3 slot.container 2 bone 11
replaceitem block ~5 ~1 ~3 slot.container 3 string 14
replaceitem block ~5 ~1 ~3 slot.container 4 slime_ball 11
replaceitem block ~5 ~1 ~3 slot.container 5 ink_sac 14
replaceitem block ~5 ~1 ~3 slot.container 9 bucket 1
replaceitem block ~5 ~1 ~3 slot.container 10 boat 1
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 6
replaceitem block ~5 ~1 ~3 slot.container 12 cooked_salmon 13
replaceitem block ~5 ~1 ~3 slot.container 13 cooked_cod 14
replaceitem block ~5 ~1 ~3 slot.container 14 clay_ball 21
loot insert ~5 ~1 ~3 loot "rsf/river"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 string 17
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 6
replaceitem block ~-5 ~1 ~4 slot.container 3 ink_sac 9
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 8
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~4 slot.container 9 bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 10 boat 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 4
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_salmon 11
replaceitem block ~-5 ~1 ~4 slot.container 13 cooked_cod 12
replaceitem block ~-5 ~1 ~4 slot.container 14 clay_ball 19
loot insert ~-5 ~1 ~4 loot "rsf/river"
loot insert ~-5 ~1 ~4 loot "chests/shipwrecksupply"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon spider ~1 ~1 ~1

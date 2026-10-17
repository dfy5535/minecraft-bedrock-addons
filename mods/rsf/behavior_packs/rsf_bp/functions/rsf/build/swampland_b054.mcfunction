# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1590/4224 | 主题内编号: b054/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·切石与伐木工匠棚屋 (swampland_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air [] replace log2
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 spruce_planks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 spruce_planks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mud_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 spruce_planks []
fill ~2 ~1 ~-4 ~6 ~7 ~4 spruce_planks []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 mossy_cobblestone []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-5 ~-7 ~7 ~5 mud_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-5 ~7 ~7 ~5 mud_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~-6 ~8 ~4 mud_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-4 ~6 ~8 ~4 mud_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-4 ~5 ~8 ~4 spruce_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~4 ~-7 spruce_log []
setblock ~-9 ~5 ~-7 soul_lantern []
fill ~-9 ~0 ~7 ~-9 ~4 ~7 spruce_log []
setblock ~-9 ~5 ~7 soul_lantern []
fill ~9 ~0 ~-7 ~9 ~4 ~-7 spruce_log []
setblock ~9 ~5 ~-7 soul_lantern []
fill ~9 ~0 ~7 ~9 ~4 ~7 spruce_log []
setblock ~9 ~5 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-6 ~-5 ~-4 ~-6 ~0 ~-4 oak_log []
fill ~-6 ~-5 ~4 ~-6 ~0 ~4 oak_log []
fill ~6 ~-5 ~-4 ~6 ~0 ~-4 oak_log []
fill ~6 ~-5 ~4 ~6 ~0 ~4 oak_log []
setblock ~0 ~1 ~-5 cauldron []
setblock ~0 ~4 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~2 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~2 slot.container 4 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~2 slot.container 9 glass_bottle 7
replaceitem block ~-5 ~1 ~2 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~2 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~2 slot.container 12 cooked_cod 12
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 14 lead 8
loot insert ~-5 ~1 ~2 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

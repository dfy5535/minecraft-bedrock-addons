# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1542/4224 | 主题内编号: b006/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·重檐飞角四方神龛 (swampland_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mud_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mud_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 fermented_spider_eye 10
replaceitem block ~3 ~-3 ~2 slot.container 1 gunpowder 8
replaceitem block ~3 ~-3 ~2 slot.container 2 redstone 11
replaceitem block ~3 ~-3 ~2 slot.container 3 glowstone_dust 10
replaceitem block ~3 ~-3 ~2 slot.container 4 bone 13
replaceitem block ~3 ~-3 ~2 slot.container 5 rotten_flesh 14
replaceitem block ~3 ~-3 ~2 slot.container 9 glass_bottle 11
replaceitem block ~3 ~-3 ~2 slot.container 10 golden_apple 7
replaceitem block ~3 ~-3 ~2 slot.container 11 mushroom_stew 1
replaceitem block ~3 ~-3 ~2 slot.container 12 cooked_cod 9
replaceitem block ~3 ~-3 ~2 slot.container 13 iron_ingot 8
replaceitem block ~3 ~-3 ~2 slot.container 14 lead 5
loot insert ~3 ~-3 ~2 loot "rsf/swampland"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 spruce_planks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 spruce_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 oak_fence []
setblock ~5 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 mud_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 mud_brick_slab []
setblock ~0 ~12 ~0 brewing_stand []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 spruce_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~-2 ~1 ~-5 cauldron []
setblock ~2 ~6 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-4 ~1 ~2 slot.container 2 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 4 fermented_spider_eye 5
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 11
replaceitem block ~-4 ~1 ~2 slot.container 9 name_tag 1
replaceitem block ~-4 ~1 ~2 slot.container 10 brewing_stand 4
replaceitem block ~-4 ~1 ~2 slot.container 11 cauldron 5
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 9
replaceitem block ~-4 ~1 ~2 slot.container 13 glass_bottle 12
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 1
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

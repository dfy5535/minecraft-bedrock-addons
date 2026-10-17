# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1639/4224 | 主题内编号: b103/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·十字全向防御方堡 (swampland_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 spruce_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-3 ~-3 ~2 slot.container 1 slime_ball 17
replaceitem block ~-3 ~-3 ~2 slot.container 2 spider_eye 14
replaceitem block ~-3 ~-3 ~2 slot.container 3 fermented_spider_eye 10
replaceitem block ~-3 ~-3 ~2 slot.container 4 gunpowder 8
replaceitem block ~-3 ~-3 ~2 slot.container 5 redstone 11
replaceitem block ~-3 ~-3 ~2 slot.container 9 lantern 6
replaceitem block ~-3 ~-3 ~2 slot.container 10 glass_bottle 9
replaceitem block ~-3 ~-3 ~2 slot.container 11 golden_apple 5
replaceitem block ~-3 ~-3 ~2 slot.container 12 mushroom_stew 1
replaceitem block ~-3 ~-3 ~2 slot.container 13 cooked_cod 14
replaceitem block ~-3 ~-3 ~2 slot.container 14 iron_ingot 6
loot insert ~-3 ~-3 ~2 loot "rsf/swampland"
loot insert ~-3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 mud_bricks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 mud_bricks []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 mud_brick_wall []
setblock ~6 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 mossy_stone_bricks []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mud_brick_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 oak_log []
setblock ~-6 ~9 ~-5 campfire []
setblock ~-6 ~8 ~5 oak_log []
setblock ~-6 ~9 ~5 campfire []
setblock ~6 ~8 ~-5 oak_log []
setblock ~6 ~9 ~-5 campfire []
setblock ~6 ~8 ~5 oak_log []
setblock ~6 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 oak_log []
setblock ~-8 ~5 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 oak_log []
setblock ~-8 ~5 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 oak_log []
setblock ~8 ~5 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~4 ~7 oak_log []
setblock ~8 ~5 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-6 ~-5 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-5 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-5 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-5 ~5 ~6 ~0 ~5 oak_log []
setblock ~1 ~1 ~-6 cauldron []
setblock ~-1 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~1 ~3 slot.container 1 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~3 slot.container 3 fermented_spider_eye 5
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 11
replaceitem block ~5 ~1 ~3 slot.container 5 redstone 14
replaceitem block ~5 ~1 ~3 slot.container 9 brewing_stand 2
replaceitem block ~5 ~1 ~3 slot.container 10 cauldron 3
replaceitem block ~5 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~5 ~1 ~3 slot.container 12 glass_bottle 10
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 6
replaceitem block ~5 ~1 ~3 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 1 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~4 slot.container 3 redstone 17
replaceitem block ~-5 ~1 ~4 slot.container 4 glowstone_dust 8
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 9 brewing_stand 7
replaceitem block ~-5 ~1 ~4 slot.container 10 cauldron 1
replaceitem block ~-5 ~1 ~4 slot.container 11 lantern 5
replaceitem block ~-5 ~1 ~4 slot.container 12 glass_bottle 8
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1631/4224 | 主题内编号: b095/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子灯笼守卫神龛 (swampland_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~11 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mud_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mud_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mud_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_mud []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 mossy_stone_bricks []
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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~8 ~3 mud_bricks []
fill ~2 ~1 ~-3 ~6 ~8 ~3 mud_bricks []
fill ~-5 ~1 ~-2 ~-3 ~7 ~2 air []
fill ~3 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mossy_stone_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 mud_brick_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 cobblestone []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 spruce_slab []
setblock ~0 ~11 ~0 slime []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~4 ~-5 oak_log []
setblock ~-8 ~5 ~-5 campfire []
fill ~-8 ~0 ~5 ~-8 ~4 ~5 oak_log []
setblock ~-8 ~5 ~5 campfire []
fill ~8 ~0 ~-5 ~8 ~4 ~-5 oak_log []
setblock ~8 ~5 ~-5 campfire []
fill ~8 ~0 ~5 ~8 ~4 ~5 oak_log []
setblock ~8 ~5 ~5 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x4x5) ---
fill ~-6 ~-4 ~-3 ~-6 ~0 ~-3 oak_log []
fill ~-6 ~-4 ~3 ~-6 ~0 ~3 oak_log []
fill ~6 ~-4 ~-3 ~6 ~0 ~-3 oak_log []
fill ~6 ~-4 ~3 ~6 ~0 ~3 oak_log []
setblock ~-1 ~1 ~-4 cauldron []
setblock ~1 ~5 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 slime []
setblock ~0 ~1 ~0 bookshelf []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 rotten_flesh 17
replaceitem block ~5 ~1 ~1 slot.container 1 slime_ball 12
replaceitem block ~5 ~1 ~1 slot.container 2 spider_eye 9
replaceitem block ~5 ~1 ~1 slot.container 3 fermented_spider_eye 5
replaceitem block ~5 ~1 ~1 slot.container 4 gunpowder 11
replaceitem block ~5 ~1 ~1 slot.container 5 redstone 14
replaceitem block ~5 ~1 ~1 slot.container 9 cooked_cod 8
replaceitem block ~5 ~1 ~1 slot.container 10 iron_ingot 7
replaceitem block ~5 ~1 ~1 slot.container 11 lead 4
replaceitem block ~5 ~1 ~1 slot.container 12 name_tag 1
replaceitem block ~5 ~1 ~1 slot.container 13 brewing_stand 5
replaceitem block ~5 ~1 ~1 slot.container 14 cauldron 6
loot insert ~5 ~1 ~1 loot "rsf/swampland"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 spider_eye 12
replaceitem block ~-5 ~1 ~2 slot.container 1 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 14
replaceitem block ~-5 ~1 ~2 slot.container 3 redstone 17
replaceitem block ~-5 ~1 ~2 slot.container 4 glowstone_dust 8
replaceitem block ~-5 ~1 ~2 slot.container 5 bone 11
replaceitem block ~-5 ~1 ~2 slot.container 9 cooked_cod 13
replaceitem block ~-5 ~1 ~2 slot.container 10 iron_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 11 lead 2
replaceitem block ~-5 ~1 ~2 slot.container 12 name_tag 1
replaceitem block ~-5 ~1 ~2 slot.container 13 brewing_stand 3
replaceitem block ~-5 ~1 ~2 slot.container 14 cauldron 4
loot insert ~-5 ~1 ~2 loot "rsf/swampland"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~2 ~0

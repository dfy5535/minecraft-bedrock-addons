# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1584/4224 | 主题内编号: b048/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·阶梯王座巅峰试炼台 (swampland_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobblestone [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_stone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 cauldron []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 fermented_spider_eye 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 gunpowder 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 redstone 11
replaceitem block ~0 ~-3 ~-4 slot.container 3 glowstone_dust 10
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 13
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 14
replaceitem block ~0 ~-3 ~-4 slot.container 9 cauldron 6
replaceitem block ~0 ~-3 ~-4 slot.container 10 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 11 glass_bottle 6
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 2
replaceitem block ~0 ~-3 ~-4 slot.container 13 mushroom_stew 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_cod 11
loot insert ~0 ~-3 ~-4 loot "rsf/swampland"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 cobblestone []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 spruce_planks []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 spruce_log []
setblock ~-7 ~10 ~-6 soul_lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 spruce_log []
setblock ~-7 ~10 ~6 soul_lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 spruce_log []
setblock ~7 ~10 ~-6 soul_lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 spruce_log []
setblock ~7 ~10 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-7 ~-6 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-6 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-6 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-6 ~6 ~7 ~0 ~6 oak_log []
setblock ~0 ~1 ~-7 cauldron []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 slime []
setblock ~0 ~1 ~0 bookshelf []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 slime_ball 12
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-6 ~1 ~4 slot.container 2 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 11
replaceitem block ~-6 ~1 ~4 slot.container 4 redstone 14
replaceitem block ~-6 ~1 ~4 slot.container 5 glowstone_dust 13
replaceitem block ~-6 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_cod 11
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 10
replaceitem block ~-6 ~1 ~4 slot.container 12 lead 7
replaceitem block ~-6 ~1 ~4 slot.container 13 name_tag 1
replaceitem block ~-6 ~1 ~4 slot.container 14 brewing_stand 1
loot insert ~-6 ~1 ~4 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1579/4224 | 主题内编号: b043/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·十字四门试炼擂台 (swampland_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 mud_bricks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 mud_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 mud_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_mud []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 mud_bricks []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 mud_bricks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 mud_brick_wall []
setblock ~7 ~2 ~0 mud_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 mossy_stone_bricks []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 mud_brick_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 oak_log []
setblock ~-7 ~8 ~-6 campfire []
setblock ~-7 ~7 ~6 oak_log []
setblock ~-7 ~8 ~6 campfire []
setblock ~7 ~7 ~-6 oak_log []
setblock ~7 ~8 ~-6 campfire []
setblock ~7 ~7 ~6 oak_log []
setblock ~7 ~8 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 spruce_log []
setblock ~-9 ~5 ~-8 torch []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 spruce_log []
setblock ~-9 ~5 ~8 torch []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 spruce_log []
setblock ~9 ~5 ~-8 torch []
fill ~9 ~0 ~8 ~9 ~4 ~8 spruce_log []
setblock ~9 ~5 ~8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~-7 ~-4 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-4 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-4 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-4 ~6 ~7 ~0 ~6 oak_log []
setblock ~2 ~1 ~-7 cauldron []
setblock ~-2 ~3 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 11
replaceitem block ~6 ~1 ~4 slot.container 1 redstone 14
replaceitem block ~6 ~1 ~4 slot.container 2 glowstone_dust 13
replaceitem block ~6 ~1 ~4 slot.container 3 bone 16
replaceitem block ~6 ~1 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~6 ~1 ~4 slot.container 5 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 9 brewing_stand 5
replaceitem block ~6 ~1 ~4 slot.container 10 cauldron 6
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~6 ~1 ~4 slot.container 12 glass_bottle 6
replaceitem block ~6 ~1 ~4 slot.container 13 golden_apple 2
replaceitem block ~6 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~6 ~1 ~4 loot "rsf/swampland"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 glowstone_dust 8
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~5 slot.container 3 slime_ball 15
replaceitem block ~-6 ~1 ~5 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 5 fermented_spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 9 brewing_stand 3
replaceitem block ~-6 ~1 ~5 slot.container 10 cauldron 4
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~-6 ~1 ~5 slot.container 12 glass_bottle 11
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_apple 7
replaceitem block ~-6 ~1 ~5 slot.container 14 mushroom_stew 1
loot insert ~-6 ~1 ~5 loot "rsf/swampland"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

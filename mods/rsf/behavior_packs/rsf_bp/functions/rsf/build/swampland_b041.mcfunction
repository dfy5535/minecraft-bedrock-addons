# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1577/4224 | 主题内编号: b041/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·八角看台古罗马斗技场 (swampland_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~10 ~8 air [] replace log2
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mossy_cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 mossy_stone_bricks []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 cauldron []
setblock ~-5 ~-4 ~-4 lantern []
setblock ~5 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 spider_eye 14
replaceitem block ~0 ~-2 ~4 slot.container 1 fermented_spider_eye 10
replaceitem block ~0 ~-2 ~4 slot.container 2 gunpowder 8
replaceitem block ~0 ~-2 ~4 slot.container 3 redstone 11
replaceitem block ~0 ~-2 ~4 slot.container 4 glowstone_dust 10
replaceitem block ~0 ~-2 ~4 slot.container 5 bone 13
replaceitem block ~0 ~-2 ~4 slot.container 9 cooked_cod 14
replaceitem block ~0 ~-2 ~4 slot.container 10 iron_ingot 6
replaceitem block ~0 ~-2 ~4 slot.container 11 lead 3
replaceitem block ~0 ~-2 ~4 slot.container 12 name_tag 1
replaceitem block ~0 ~-2 ~4 slot.container 13 brewing_stand 4
replaceitem block ~0 ~-2 ~4 slot.container 14 cauldron 5
loot insert ~0 ~-2 ~4 loot "rsf/swampland"
loot insert ~0 ~-2 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 mossy_stone_bricks []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 air []
fill ~7 ~1 ~6 ~7 ~7 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 oak_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 oak_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 oak_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 spruce_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 oak_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 oak_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 oak_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 oak_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-7 ~-5 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-5 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-5 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-5 ~6 ~7 ~0 ~6 oak_log []
setblock ~0 ~1 ~-7 cauldron []
setblock ~0 ~6 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~-5 ~1 ~5 anvil []
setblock ~5 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 9
replaceitem block ~6 ~1 ~4 slot.container 1 fermented_spider_eye 5
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 11
replaceitem block ~6 ~1 ~4 slot.container 3 redstone 14
replaceitem block ~6 ~1 ~4 slot.container 4 glowstone_dust 13
replaceitem block ~6 ~1 ~4 slot.container 5 bone 16
replaceitem block ~6 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~6 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~6 ~1 ~4 slot.container 11 cooked_cod 12
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 13 lead 8
replaceitem block ~6 ~1 ~4 slot.container 14 name_tag 1
loot insert ~6 ~1 ~4 loot "rsf/swampland"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 14
replaceitem block ~-6 ~1 ~5 slot.container 1 redstone 17
replaceitem block ~-6 ~1 ~5 slot.container 2 glowstone_dust 8
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 11
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-6 ~1 ~5 slot.container 5 slime_ball 15
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_apple 1
replaceitem block ~-6 ~1 ~5 slot.container 10 mushroom_stew 1
replaceitem block ~-6 ~1 ~5 slot.container 11 cooked_cod 10
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 9
replaceitem block ~-6 ~1 ~5 slot.container 13 lead 6
replaceitem block ~-6 ~1 ~5 slot.container 14 name_tag 1
loot insert ~-6 ~1 ~5 loot "rsf/swampland"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-2 ~0

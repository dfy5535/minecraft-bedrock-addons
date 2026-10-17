# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1547/4224 | 主题内编号: b011/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·深渊困兽角斗地牢 (swampland_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mud_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 mud_bricks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mud_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 slime []
setblock ~-4 ~-5 ~-3 campfire []
setblock ~4 ~-5 ~3 campfire []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 gunpowder 8
replaceitem block ~0 ~-3 ~3 slot.container 1 redstone 11
replaceitem block ~0 ~-3 ~3 slot.container 2 glowstone_dust 10
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 13
replaceitem block ~0 ~-3 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~0 ~-3 ~3 slot.container 5 slime_ball 17
replaceitem block ~0 ~-3 ~3 slot.container 9 cooked_cod 12
replaceitem block ~0 ~-3 ~3 slot.container 10 iron_ingot 11
replaceitem block ~0 ~-3 ~3 slot.container 11 lead 8
replaceitem block ~0 ~-3 ~3 slot.container 12 name_tag 1
replaceitem block ~0 ~-3 ~3 slot.container 13 brewing_stand 2
replaceitem block ~0 ~-3 ~3 slot.container 14 cauldron 3
loot insert ~0 ~-3 ~3 loot "rsf/swampland"
loot insert ~0 ~-3 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 mud_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 air []
fill ~6 ~1 ~5 ~6 ~7 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 oak_log []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 oak_log []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 oak_log []
fill ~5 ~1 ~4 ~5 ~6 ~4 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 spruce_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 mud_brick_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-6 ~-6 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-6 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-6 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-6 ~5 ~6 ~0 ~5 oak_log []
setblock ~-1 ~1 ~-6 cauldron []
setblock ~1 ~6 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~3 slot.container 1 redstone 14
replaceitem block ~5 ~1 ~3 slot.container 2 glowstone_dust 13
replaceitem block ~5 ~1 ~3 slot.container 3 bone 16
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~3 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 1
replaceitem block ~5 ~1 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~5 ~1 ~3 slot.container 11 cooked_cod 10
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 13 lead 6
replaceitem block ~5 ~1 ~3 slot.container 14 name_tag 1
loot insert ~5 ~1 ~3 loot "rsf/swampland"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 glowstone_dust 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 3 slime_ball 15
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~4 slot.container 5 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 10 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_cod 8
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 13 lead 4
replaceitem block ~-5 ~1 ~4 slot.container 14 name_tag 1
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0

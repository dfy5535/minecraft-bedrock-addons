# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1659/4224 | 主题内编号: b123/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·四角塔楼领主城堡复合体 (swampland_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~12 ~8 air [] replace log2
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mud_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 mud_bricks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 mud_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 packed_mud []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 mud_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 campfire []
setblock ~5 ~-5 ~-4 campfire []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 glowstone_dust 10
replaceitem block ~5 ~-3 ~4 slot.container 1 bone 13
replaceitem block ~5 ~-3 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~5 ~-3 ~4 slot.container 3 slime_ball 17
replaceitem block ~5 ~-3 ~4 slot.container 4 spider_eye 14
replaceitem block ~5 ~-3 ~4 slot.container 5 fermented_spider_eye 10
replaceitem block ~5 ~-3 ~4 slot.container 9 lantern 6
replaceitem block ~5 ~-3 ~4 slot.container 10 glass_bottle 9
replaceitem block ~5 ~-3 ~4 slot.container 11 golden_apple 5
replaceitem block ~5 ~-3 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~-3 ~4 slot.container 13 cooked_cod 14
replaceitem block ~5 ~-3 ~4 slot.container 14 iron_ingot 6
loot insert ~5 ~-3 ~4 loot "rsf/swampland"
loot insert ~5 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~8 ~6 mud_bricks []
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~10 ~-5 mossy_stone_bricks []
setblock ~-7 ~11 ~-6 campfire []
fill ~-7 ~1 ~5 ~-6 ~10 ~6 mossy_stone_bricks []
setblock ~-7 ~11 ~5 campfire []
fill ~6 ~1 ~-6 ~7 ~10 ~-5 mossy_stone_bricks []
setblock ~6 ~11 ~-6 campfire []
fill ~6 ~1 ~5 ~7 ~10 ~6 mossy_stone_bricks []
setblock ~6 ~11 ~5 campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 mossy_stone_bricks []
fill ~-7 ~9 ~-6 ~7 ~9 ~6 mud_brick_wall []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 air []
setblock ~-7 ~9 ~-6 oak_log []
setblock ~-7 ~10 ~-6 campfire []
setblock ~-7 ~9 ~6 oak_log []
setblock ~-7 ~10 ~6 campfire []
setblock ~7 ~9 ~-6 oak_log []
setblock ~7 ~10 ~-6 campfire []
setblock ~7 ~9 ~6 oak_log []
setblock ~7 ~10 ~6 campfire []

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
setblock ~-2 ~1 ~-7 cauldron []
setblock ~2 ~3 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 brewing_stand []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 11
replaceitem block ~6 ~1 ~4 slot.container 1 redstone 14
replaceitem block ~6 ~1 ~4 slot.container 2 glowstone_dust 13
replaceitem block ~6 ~1 ~4 slot.container 3 bone 16
replaceitem block ~6 ~1 ~4 slot.container 4 rotten_flesh 17
replaceitem block ~6 ~1 ~4 slot.container 5 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 9 brewing_stand 1
replaceitem block ~6 ~1 ~4 slot.container 10 cauldron 2
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~6 ~1 ~4 slot.container 12 glass_bottle 9
replaceitem block ~6 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~6 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~6 ~1 ~4 loot "rsf/swampland"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 glowstone_dust 8
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 11
replaceitem block ~-6 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-6 ~1 ~5 slot.container 3 slime_ball 15
replaceitem block ~-6 ~1 ~5 slot.container 4 spider_eye 12
replaceitem block ~-6 ~1 ~5 slot.container 5 fermented_spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 9 brewing_stand 6
replaceitem block ~-6 ~1 ~5 slot.container 10 cauldron 7
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 4
replaceitem block ~-6 ~1 ~5 slot.container 12 glass_bottle 7
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_apple 3
replaceitem block ~-6 ~1 ~5 slot.container 14 mushroom_stew 1
loot insert ~-6 ~1 ~5 loot "rsf/swampland"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

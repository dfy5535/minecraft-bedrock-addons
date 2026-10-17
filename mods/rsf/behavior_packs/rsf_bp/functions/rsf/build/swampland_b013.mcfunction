# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1549/4224 | 主题内编号: b013/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·地底熔炉苦工地牢 (swampland_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[pyramid_stepped] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~10 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 spruce_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 mossy_stone_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 spider_eye 14
replaceitem block ~4 ~-3 ~4 slot.container 1 fermented_spider_eye 10
replaceitem block ~4 ~-3 ~4 slot.container 2 gunpowder 8
replaceitem block ~4 ~-3 ~4 slot.container 3 redstone 11
replaceitem block ~4 ~-3 ~4 slot.container 4 glowstone_dust 10
replaceitem block ~4 ~-3 ~4 slot.container 5 bone 13
replaceitem block ~4 ~-3 ~4 slot.container 9 cooked_cod 9
replaceitem block ~4 ~-3 ~4 slot.container 10 iron_ingot 8
replaceitem block ~4 ~-3 ~4 slot.container 11 lead 5
replaceitem block ~4 ~-3 ~4 slot.container 12 name_tag 1
replaceitem block ~4 ~-3 ~4 slot.container 13 brewing_stand 6
replaceitem block ~4 ~-3 ~4 slot.container 14 cauldron 7
loot insert ~4 ~-3 ~4 loot "rsf/swampland"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~6 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 oak_log []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 oak_log []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 oak_log []
fill ~6 ~1 ~6 ~6 ~6 ~6 oak_log []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mossy_cobblestone []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mud_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 brewing_stand []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 spruce_planks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-6 ~-6 ~-6 ~-6 ~0 ~-6 oak_log []
fill ~-6 ~-6 ~6 ~-6 ~0 ~6 oak_log []
fill ~6 ~-6 ~-6 ~6 ~0 ~-6 oak_log []
fill ~6 ~-6 ~6 ~6 ~0 ~6 oak_log []
setblock ~1 ~1 ~-7 cauldron []
setblock ~-1 ~3 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 glowstone_dust 13
replaceitem block ~5 ~1 ~4 slot.container 1 bone 16
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~1 ~4 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~4 slot.container 5 fermented_spider_eye 5
replaceitem block ~5 ~1 ~4 slot.container 9 brewing_stand 3
replaceitem block ~5 ~1 ~4 slot.container 10 cauldron 4
replaceitem block ~5 ~1 ~4 slot.container 11 lantern 8
replaceitem block ~5 ~1 ~4 slot.container 12 glass_bottle 11
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~5 ~1 ~4 slot.container 14 mushroom_stew 1
loot insert ~5 ~1 ~4 loot "rsf/swampland"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 1 slime_ball 15
replaceitem block ~-5 ~1 ~5 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~5 slot.container 3 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~5 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~5 slot.container 5 redstone 17
replaceitem block ~-5 ~1 ~5 slot.container 9 brewing_stand 1
replaceitem block ~-5 ~1 ~5 slot.container 10 cauldron 2
replaceitem block ~-5 ~1 ~5 slot.container 11 lantern 6
replaceitem block ~-5 ~1 ~5 slot.container 12 glass_bottle 9
replaceitem block ~-5 ~1 ~5 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~5 slot.container 14 mushroom_stew 1
loot insert ~-5 ~1 ~5 loot "rsf/swampland"
loot insert ~-5 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

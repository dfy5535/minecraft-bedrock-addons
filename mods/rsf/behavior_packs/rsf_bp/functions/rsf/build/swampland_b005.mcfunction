# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1541/4224 | 主题内编号: b005/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·下沉圣泉秘宝祭坛 (swampland_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

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

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~5 ~-4 ~-5 ~7 ~-4 oak_log []
setblock ~-5 ~8 ~-4 lantern []
fill ~-5 ~5 ~4 ~-5 ~7 ~4 oak_log []
setblock ~-5 ~8 ~4 lantern []
fill ~5 ~5 ~-4 ~5 ~7 ~-4 oak_log []
setblock ~5 ~8 ~-4 lantern []
fill ~5 ~5 ~4 ~5 ~7 ~4 oak_log []
setblock ~5 ~8 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~2 ~1 ~-5 cauldron []
setblock ~-2 ~5 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 glowstone_dust 13
replaceitem block ~4 ~1 ~2 slot.container 1 bone 16
replaceitem block ~4 ~1 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~1 ~2 slot.container 3 slime_ball 12
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~4 ~1 ~2 slot.container 5 fermented_spider_eye 5
replaceitem block ~4 ~1 ~2 slot.container 9 cooked_cod 9
replaceitem block ~4 ~1 ~2 slot.container 10 iron_ingot 8
replaceitem block ~4 ~1 ~2 slot.container 11 lead 5
replaceitem block ~4 ~1 ~2 slot.container 12 name_tag 1
replaceitem block ~4 ~1 ~2 slot.container 13 brewing_stand 6
replaceitem block ~4 ~1 ~2 slot.container 14 cauldron 7
loot insert ~4 ~1 ~2 loot "rsf/swampland"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~3 slot.container 1 slime_ball 15
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-4 ~1 ~3 slot.container 3 fermented_spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-4 ~1 ~3 slot.container 5 redstone 17
replaceitem block ~-4 ~1 ~3 slot.container 9 cooked_cod 14
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 6
replaceitem block ~-4 ~1 ~3 slot.container 11 lead 3
replaceitem block ~-4 ~1 ~3 slot.container 12 name_tag 1
replaceitem block ~-4 ~1 ~3 slot.container 13 brewing_stand 4
replaceitem block ~-4 ~1 ~3 slot.container 14 cauldron 5
loot insert ~-4 ~1 ~3 loot "rsf/swampland"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-3 ~0

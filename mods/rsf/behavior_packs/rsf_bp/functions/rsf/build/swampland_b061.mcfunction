# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1597/4224 | 主题内编号: b061/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子封土古墓地宫 (swampland_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~10 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mossy_cobblestone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 spruce_planks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 spruce_planks []
setblock ~0 ~-6 ~0 brewing_stand []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 14
replaceitem block ~0 ~-3 ~-2 slot.container 1 slime_ball 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 spider_eye 14
replaceitem block ~0 ~-3 ~-2 slot.container 3 fermented_spider_eye 10
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 redstone 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 brewing_stand 5
replaceitem block ~0 ~-3 ~-2 slot.container 10 cauldron 6
replaceitem block ~0 ~-3 ~-2 slot.container 11 lantern 10
replaceitem block ~0 ~-3 ~-2 slot.container 12 glass_bottle 6
replaceitem block ~0 ~-3 ~-2 slot.container 13 golden_apple 2
replaceitem block ~0 ~-3 ~-2 slot.container 14 mushroom_stew 1
loot insert ~0 ~-3 ~-2 loot "rsf/swampland"
loot insert ~0 ~-3 ~-2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 mossy_stone_bricks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 mossy_stone_bricks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 spruce_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 mossy_cobblestone []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 glass []
fill ~-5 ~7 ~-2 ~5 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-7 ~-6 ~-4 ~-7 ~0 ~-4 oak_log []
fill ~-7 ~-6 ~4 ~-7 ~0 ~4 oak_log []
fill ~7 ~-6 ~-4 ~7 ~0 ~-4 oak_log []
fill ~7 ~-6 ~4 ~7 ~0 ~4 oak_log []
setblock ~-1 ~1 ~-5 cauldron []
setblock ~1 ~6 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~3 smithing_table []
setblock ~-5 ~1 ~3 anvil []
setblock ~5 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 glowstone_dust 13
replaceitem block ~6 ~1 ~2 slot.container 1 bone 16
replaceitem block ~6 ~1 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~6 ~1 ~2 slot.container 3 slime_ball 12
replaceitem block ~6 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~6 ~1 ~2 slot.container 5 fermented_spider_eye 5
replaceitem block ~6 ~1 ~2 slot.container 9 golden_apple 2
replaceitem block ~6 ~1 ~2 slot.container 10 mushroom_stew 1
replaceitem block ~6 ~1 ~2 slot.container 11 cooked_cod 11
replaceitem block ~6 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~6 ~1 ~2 slot.container 13 lead 7
replaceitem block ~6 ~1 ~2 slot.container 14 name_tag 1
loot insert ~6 ~1 ~2 loot "rsf/swampland"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-6 ~1 ~3 slot.container 1 slime_ball 15
replaceitem block ~-6 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-6 ~1 ~3 slot.container 3 fermented_spider_eye 8
replaceitem block ~-6 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-6 ~1 ~3 slot.container 5 redstone 17
replaceitem block ~-6 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~-6 ~1 ~3 slot.container 10 mushroom_stew 1
replaceitem block ~-6 ~1 ~3 slot.container 11 cooked_cod 9
replaceitem block ~-6 ~1 ~3 slot.container 12 iron_ingot 8
replaceitem block ~-6 ~1 ~3 slot.container 13 lead 5
replaceitem block ~-6 ~1 ~3 slot.container 14 name_tag 1
loot insert ~-6 ~1 ~3 loot "rsf/swampland"
loot insert ~-6 ~1 ~3 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon slime ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

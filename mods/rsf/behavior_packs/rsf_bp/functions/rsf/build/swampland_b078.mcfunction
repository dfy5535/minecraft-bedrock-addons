# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1614/4224 | 主题内编号: b078/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·下沉祭池图腾柱群 (swampland_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 slime_ball 17
replaceitem block ~-4 ~-4 ~3 slot.container 1 spider_eye 14
replaceitem block ~-4 ~-4 ~3 slot.container 2 fermented_spider_eye 10
replaceitem block ~-4 ~-4 ~3 slot.container 3 gunpowder 8
replaceitem block ~-4 ~-4 ~3 slot.container 4 redstone 11
replaceitem block ~-4 ~-4 ~3 slot.container 5 glowstone_dust 10
replaceitem block ~-4 ~-4 ~3 slot.container 9 cauldron 6
replaceitem block ~-4 ~-4 ~3 slot.container 10 lantern 10
replaceitem block ~-4 ~-4 ~3 slot.container 11 glass_bottle 6
replaceitem block ~-4 ~-4 ~3 slot.container 12 golden_apple 2
replaceitem block ~-4 ~-4 ~3 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~-4 ~3 slot.container 14 cooked_cod 11
loot insert ~-4 ~-4 ~3 loot "rsf/swampland"
loot insert ~-4 ~-4 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 spruce_log []
setblock ~-6 ~9 ~-5 torch []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 spruce_log []
setblock ~-6 ~9 ~5 torch []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 spruce_log []
setblock ~6 ~9 ~-5 torch []
fill ~6 ~6 ~5 ~6 ~8 ~5 spruce_log []
setblock ~6 ~9 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-6 ~-7 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-7 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-7 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-7 ~5 ~6 ~0 ~5 oak_log []
setblock ~0 ~1 ~-6 cauldron []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 13
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 12 lead 2
replaceitem block ~-5 ~1 ~3 slot.container 13 name_tag 1
replaceitem block ~-5 ~1 ~3 slot.container 14 brewing_stand 3
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

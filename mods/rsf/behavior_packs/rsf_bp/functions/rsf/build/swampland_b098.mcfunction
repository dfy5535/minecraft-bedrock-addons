# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1634/4224 | 主题内编号: b098/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·四角炮楼重装要塞 (swampland_bunker_corner_citadel)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace leaves2
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log
fill ~-9 ~1 ~-8 ~9 ~11 ~8 air [] replace log2
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 spruce_planks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 spruce_planks [] replace water
fill ~-8 ~0 ~-7 ~8 ~0 ~7 spruce_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 mud_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 spruce_planks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~4 torch []
setblock ~5 ~-6 ~-4 torch []
setblock ~5 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~4 slot.container 0 redstone 11
replaceitem block ~5 ~-4 ~4 slot.container 1 glowstone_dust 10
replaceitem block ~5 ~-4 ~4 slot.container 2 bone 13
replaceitem block ~5 ~-4 ~4 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~-4 ~4 slot.container 4 slime_ball 17
replaceitem block ~5 ~-4 ~4 slot.container 5 spider_eye 14
replaceitem block ~5 ~-4 ~4 slot.container 9 iron_ingot 11
replaceitem block ~5 ~-4 ~4 slot.container 10 lead 8
replaceitem block ~5 ~-4 ~4 slot.container 11 name_tag 1
replaceitem block ~5 ~-4 ~4 slot.container 12 brewing_stand 2
replaceitem block ~5 ~-4 ~4 slot.container 13 cauldron 3
replaceitem block ~5 ~-4 ~4 slot.container 14 lantern 7
loot insert ~5 ~-4 ~4 loot "rsf/swampland"
loot insert ~5 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 spruce_planks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 mossy_cobblestone []
setblock ~-7 ~10 ~-6 torch []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 mossy_cobblestone []
setblock ~-7 ~10 ~5 torch []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 mossy_cobblestone []
setblock ~6 ~10 ~-6 torch []
fill ~6 ~1 ~5 ~7 ~9 ~6 mossy_cobblestone []
setblock ~6 ~10 ~5 torch []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 mossy_cobblestone []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 oak_fence []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 spruce_log []
setblock ~-7 ~9 ~-6 torch []
setblock ~-7 ~8 ~6 spruce_log []
setblock ~-7 ~9 ~6 torch []
setblock ~7 ~8 ~-6 spruce_log []
setblock ~7 ~9 ~-6 torch []
setblock ~7 ~8 ~6 spruce_log []
setblock ~7 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-7 ~-7 ~-6 ~-7 ~0 ~-6 oak_log []
fill ~-7 ~-7 ~6 ~-7 ~0 ~6 oak_log []
fill ~7 ~-7 ~-6 ~7 ~0 ~-6 oak_log []
fill ~7 ~-7 ~6 ~7 ~0 ~6 oak_log []
setblock ~1 ~1 ~-7 cauldron []
setblock ~-1 ~3 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~4 slot.container 1 gunpowder 11
replaceitem block ~-6 ~1 ~4 slot.container 2 redstone 14
replaceitem block ~-6 ~1 ~4 slot.container 3 glowstone_dust 13
replaceitem block ~-6 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-6 ~1 ~4 slot.container 9 mushroom_stew 1
replaceitem block ~-6 ~1 ~4 slot.container 10 cooked_cod 12
replaceitem block ~-6 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 12 lead 8
replaceitem block ~-6 ~1 ~4 slot.container 13 name_tag 1
replaceitem block ~-6 ~1 ~4 slot.container 14 brewing_stand 2
loot insert ~-6 ~1 ~4 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-4 ~0

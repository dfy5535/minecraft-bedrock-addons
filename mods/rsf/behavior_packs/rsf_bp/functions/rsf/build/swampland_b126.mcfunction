# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1662/4224 | 主题内编号: b126/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子主塔天桥宫殿与暗牢 (swampland_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 9格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace leaves
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace leaves2
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace log
fill ~-9 ~1 ~-7 ~9 ~13 ~7 air [] replace log2
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 spruce_planks [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 spruce_planks [] replace water
fill ~-8 ~0 ~-6 ~8 ~0 ~6 spruce_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 mud_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

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
fill ~-7 ~1 ~-5 ~-2 ~10 ~5 spruce_planks []
fill ~2 ~1 ~-5 ~7 ~10 ~5 spruce_planks []
fill ~-6 ~1 ~-4 ~-3 ~9 ~4 air []
fill ~3 ~1 ~-4 ~6 ~9 ~4 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 mossy_cobblestone []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 mossy_cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 spruce_planks []
fill ~0 ~15 ~0 ~0 ~16 ~0 brewing_stand []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~-7 ~-7 ~-5 ~-7 ~0 ~-5 oak_log []
fill ~-7 ~-7 ~5 ~-7 ~0 ~5 oak_log []
fill ~7 ~-7 ~-5 ~7 ~0 ~-5 oak_log []
fill ~7 ~-7 ~5 ~7 ~0 ~5 oak_log []
setblock ~1 ~1 ~-6 cauldron []
setblock ~-1 ~6 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-6 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-6 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-6 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~3 slot.container 4 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~3 slot.container 5 gunpowder 11
replaceitem block ~-6 ~1 ~3 slot.container 9 name_tag 1
replaceitem block ~-6 ~1 ~3 slot.container 10 brewing_stand 5
replaceitem block ~-6 ~1 ~3 slot.container 11 cauldron 6
replaceitem block ~-6 ~1 ~3 slot.container 12 lantern 10
replaceitem block ~-6 ~1 ~3 slot.container 13 glass_bottle 6
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 2
loot insert ~-6 ~1 ~3 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

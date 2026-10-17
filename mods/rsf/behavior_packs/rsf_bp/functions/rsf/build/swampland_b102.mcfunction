# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1638/4224 | 主题内编号: b102/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子箭塔联防碉楼 (swampland_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~12 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 spruce_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 spruce_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mud_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 spruce_planks []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 torch []
setblock ~5 ~-5 ~-2 torch []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 slime_ball 17
replaceitem block ~5 ~-3 ~2 slot.container 1 spider_eye 14
replaceitem block ~5 ~-3 ~2 slot.container 2 fermented_spider_eye 10
replaceitem block ~5 ~-3 ~2 slot.container 3 gunpowder 8
replaceitem block ~5 ~-3 ~2 slot.container 4 redstone 11
replaceitem block ~5 ~-3 ~2 slot.container 5 glowstone_dust 10
replaceitem block ~5 ~-3 ~2 slot.container 9 name_tag 1
replaceitem block ~5 ~-3 ~2 slot.container 10 brewing_stand 4
replaceitem block ~5 ~-3 ~2 slot.container 11 cauldron 5
replaceitem block ~5 ~-3 ~2 slot.container 12 lantern 9
replaceitem block ~5 ~-3 ~2 slot.container 13 glass_bottle 12
replaceitem block ~5 ~-3 ~2 slot.container 14 golden_apple 1
loot insert ~5 ~-3 ~2 loot "rsf/swampland"
loot insert ~5 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 spruce_planks []
fill ~2 ~1 ~-4 ~7 ~9 ~4 spruce_planks []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 mossy_cobblestone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 mossy_cobblestone []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 glass []
fill ~-5 ~7 ~-2 ~5 ~7 ~2 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-7 ~-6 ~-4 ~-7 ~0 ~-4 oak_log []
fill ~-7 ~-6 ~4 ~-7 ~0 ~4 oak_log []
fill ~7 ~-6 ~-4 ~7 ~0 ~-4 oak_log []
fill ~7 ~-6 ~4 ~7 ~0 ~4 oak_log []
setblock ~-2 ~1 ~-5 cauldron []
setblock ~2 ~2 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-6 ~1 ~2 slot.container 2 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 4 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~2 slot.container 5 gunpowder 11
replaceitem block ~-6 ~1 ~2 slot.container 9 iron_ingot 6
replaceitem block ~-6 ~1 ~2 slot.container 10 lead 3
replaceitem block ~-6 ~1 ~2 slot.container 11 name_tag 1
replaceitem block ~-6 ~1 ~2 slot.container 12 brewing_stand 4
replaceitem block ~-6 ~1 ~2 slot.container 13 cauldron 5
replaceitem block ~-6 ~1 ~2 slot.container 14 lantern 9
loot insert ~-6 ~1 ~2 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

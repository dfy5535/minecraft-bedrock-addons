# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1556/4224 | 主题内编号: b020/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·重甲防爆金库房间 (swampland_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 spruce_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_stone_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

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

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~8 ~-3 spruce_planks []
setblock ~-5 ~9 ~-4 soul_lantern []
fill ~-5 ~1 ~3 ~-4 ~8 ~4 spruce_planks []
setblock ~-5 ~9 ~3 soul_lantern []
fill ~4 ~1 ~-4 ~5 ~8 ~-3 spruce_planks []
setblock ~4 ~9 ~-4 soul_lantern []
fill ~4 ~1 ~3 ~5 ~8 ~4 spruce_planks []
setblock ~4 ~9 ~3 soul_lantern []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 spruce_planks []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 spruce_fence []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~-5 ~7 ~-4 spruce_log []
setblock ~-5 ~8 ~-4 soul_lantern []
setblock ~-5 ~7 ~4 spruce_log []
setblock ~-5 ~8 ~4 soul_lantern []
setblock ~5 ~7 ~-4 spruce_log []
setblock ~5 ~8 ~-4 soul_lantern []
setblock ~5 ~7 ~4 spruce_log []
setblock ~5 ~8 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 spruce_log []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 spruce_log []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 spruce_log []
fill ~6 ~0 ~2 ~6 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~2 ~1 ~-5 cauldron []
setblock ~-2 ~5 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 redstone 14
replaceitem block ~-4 ~1 ~2 slot.container 1 glowstone_dust 13
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~2 slot.container 4 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 cauldron 3
replaceitem block ~-4 ~1 ~2 slot.container 10 lantern 7
replaceitem block ~-4 ~1 ~2 slot.container 11 glass_bottle 10
replaceitem block ~-4 ~1 ~2 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 13 mushroom_stew 1
replaceitem block ~-4 ~1 ~2 slot.container 14 cooked_cod 8
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-3 ~0

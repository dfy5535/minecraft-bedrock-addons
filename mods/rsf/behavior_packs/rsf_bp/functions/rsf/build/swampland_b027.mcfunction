# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1563/4224 | 主题内编号: b027/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子连廊警戒塔楼 (swampland_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace leaves2
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log
fill ~-8 ~1 ~-5 ~8 ~13 ~5 air [] replace log2
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mud_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 mud_bricks [] replace water
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mud_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_mud []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 mossy_stone_bricks []
setblock ~0 ~0 ~0 slime []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 mossy_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 mud_bricks []
fill ~2 ~1 ~-3 ~6 ~10 ~3 mud_bricks []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 mossy_stone_bricks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-3 ~6 ~9 ~3 mossy_stone_bricks []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 mud_brick_wall []
fill ~-5 ~10 ~-2 ~5 ~10 ~2 air []
setblock ~-6 ~10 ~-3 oak_log []
setblock ~-6 ~11 ~-3 campfire []
setblock ~-6 ~10 ~3 oak_log []
setblock ~-6 ~11 ~3 campfire []
setblock ~6 ~10 ~-3 oak_log []
setblock ~6 ~11 ~-3 campfire []
setblock ~6 ~10 ~3 oak_log []
setblock ~6 ~11 ~3 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~4 ~-7 spruce_log []
setblock ~-9 ~5 ~-7 soul_lantern []
fill ~-9 ~0 ~7 ~-9 ~4 ~7 spruce_log []
setblock ~-9 ~5 ~7 soul_lantern []
fill ~9 ~0 ~-7 ~9 ~4 ~-7 spruce_log []
setblock ~9 ~5 ~-7 soul_lantern []
fill ~9 ~0 ~7 ~9 ~4 ~7 spruce_log []
setblock ~9 ~5 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~-6 ~-4 ~-3 ~-6 ~0 ~-3 oak_log []
fill ~-6 ~-4 ~3 ~-6 ~0 ~3 oak_log []
fill ~6 ~-4 ~-3 ~6 ~0 ~-3 oak_log []
fill ~6 ~-4 ~3 ~6 ~0 ~3 oak_log []
setblock ~-3 ~1 ~-4 cauldron []
setblock ~3 ~2 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 gunpowder 11
replaceitem block ~5 ~1 ~1 slot.container 1 redstone 14
replaceitem block ~5 ~1 ~1 slot.container 2 glowstone_dust 13
replaceitem block ~5 ~1 ~1 slot.container 3 bone 16
replaceitem block ~5 ~1 ~1 slot.container 4 rotten_flesh 17
replaceitem block ~5 ~1 ~1 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~1 slot.container 9 lantern 6
replaceitem block ~5 ~1 ~1 slot.container 10 glass_bottle 9
replaceitem block ~5 ~1 ~1 slot.container 11 golden_apple 5
replaceitem block ~5 ~1 ~1 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~1 ~1 slot.container 13 cooked_cod 14
replaceitem block ~5 ~1 ~1 slot.container 14 iron_ingot 6
loot insert ~5 ~1 ~1 loot "rsf/swampland"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 glowstone_dust 8
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 11
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~2 slot.container 3 slime_ball 15
replaceitem block ~-5 ~1 ~2 slot.container 4 spider_eye 12
replaceitem block ~-5 ~1 ~2 slot.container 5 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~2 slot.container 9 lantern 4
replaceitem block ~-5 ~1 ~2 slot.container 10 glass_bottle 7
replaceitem block ~-5 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~-5 ~1 ~2 slot.container 12 mushroom_stew 1
replaceitem block ~-5 ~1 ~2 slot.container 13 cooked_cod 12
replaceitem block ~-5 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~-5 ~1 ~2 loot "rsf/swampland"
loot insert ~-5 ~1 ~2 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

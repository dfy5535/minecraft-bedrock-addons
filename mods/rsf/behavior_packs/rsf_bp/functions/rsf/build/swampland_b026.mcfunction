# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1562/4224 | 主题内编号: b026/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·尖顶信标引航高塔 (swampland_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~15 ~5 air [] replace log2
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 spruce_planks [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 spruce_planks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mud_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 mud_bricks []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 bone 13
replaceitem block ~2 ~-3 ~1 slot.container 1 rotten_flesh 14
replaceitem block ~2 ~-3 ~1 slot.container 2 slime_ball 17
replaceitem block ~2 ~-3 ~1 slot.container 3 spider_eye 14
replaceitem block ~2 ~-3 ~1 slot.container 4 fermented_spider_eye 10
replaceitem block ~2 ~-3 ~1 slot.container 5 gunpowder 8
replaceitem block ~2 ~-3 ~1 slot.container 9 glass_bottle 10
replaceitem block ~2 ~-3 ~1 slot.container 10 golden_apple 6
replaceitem block ~2 ~-3 ~1 slot.container 11 mushroom_stew 1
replaceitem block ~2 ~-3 ~1 slot.container 12 cooked_cod 8
replaceitem block ~2 ~-3 ~1 slot.container 13 iron_ingot 7
replaceitem block ~2 ~-3 ~1 slot.container 14 lead 4
loot insert ~2 ~-3 ~1 loot "rsf/swampland"
loot insert ~2 ~-3 ~1 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 spruce_planks []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~12 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~12 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~12 ~3 air []
fill ~4 ~1 ~3 ~4 ~12 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~11 ~-2 spruce_log []
fill ~3 ~1 ~-2 ~3 ~11 ~-2 spruce_log []
fill ~-3 ~1 ~2 ~-3 ~11 ~2 spruce_log []
fill ~3 ~1 ~2 ~3 ~11 ~2 spruce_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 mossy_stone_bricks []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~10 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~10 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~10 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~10 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 6x4x6) ---
fill ~-4 ~-6 ~-3 ~-4 ~0 ~-3 oak_log []
fill ~-4 ~-6 ~3 ~-4 ~0 ~3 oak_log []
fill ~4 ~-6 ~-3 ~4 ~0 ~-3 oak_log []
fill ~4 ~-6 ~3 ~4 ~0 ~3 oak_log []
setblock ~-1 ~1 ~-4 cauldron []
setblock ~1 ~6 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~10 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 brewing_stand []
setblock ~0 ~1 ~0 slime []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 fermented_spider_eye 5
replaceitem block ~-3 ~1 ~1 slot.container 1 gunpowder 11
replaceitem block ~-3 ~1 ~1 slot.container 2 redstone 14
replaceitem block ~-3 ~1 ~1 slot.container 3 glowstone_dust 13
replaceitem block ~-3 ~1 ~1 slot.container 4 bone 16
replaceitem block ~-3 ~1 ~1 slot.container 5 rotten_flesh 17
replaceitem block ~-3 ~1 ~1 slot.container 9 name_tag 1
replaceitem block ~-3 ~1 ~1 slot.container 10 brewing_stand 3
replaceitem block ~-3 ~1 ~1 slot.container 11 cauldron 4
replaceitem block ~-3 ~1 ~1 slot.container 12 lantern 8
replaceitem block ~-3 ~1 ~1 slot.container 13 glass_bottle 11
replaceitem block ~-3 ~1 ~1 slot.container 14 golden_apple 7
loot insert ~-3 ~1 ~1 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-3 ~0

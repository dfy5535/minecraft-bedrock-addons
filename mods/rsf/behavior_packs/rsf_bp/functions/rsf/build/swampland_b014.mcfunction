# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1550/4224 | 主题内编号: b014/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·暗渠蓄水池秘境地牢 (swampland_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 6格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 mossy_cobblestone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 water []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 slime_ball 17
replaceitem block ~-4 ~-5 ~3 slot.container 1 spider_eye 14
replaceitem block ~-4 ~-5 ~3 slot.container 2 fermented_spider_eye 10
replaceitem block ~-4 ~-5 ~3 slot.container 3 gunpowder 8
replaceitem block ~-4 ~-5 ~3 slot.container 4 redstone 11
replaceitem block ~-4 ~-5 ~3 slot.container 5 glowstone_dust 10
replaceitem block ~-4 ~-5 ~3 slot.container 9 name_tag 1
replaceitem block ~-4 ~-5 ~3 slot.container 10 brewing_stand 6
replaceitem block ~-4 ~-5 ~3 slot.container 11 cauldron 7
replaceitem block ~-4 ~-5 ~3 slot.container 12 lantern 4
replaceitem block ~-4 ~-5 ~3 slot.container 13 glass_bottle 7
replaceitem block ~-4 ~-5 ~3 slot.container 14 golden_apple 3
loot insert ~-4 ~-5 ~3 loot "rsf/swampland"
loot insert ~-4 ~-5 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 packed_mud []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 spruce_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-6 ~-8 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-8 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-8 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-8 ~5 ~6 ~0 ~5 oak_log []
setblock ~2 ~1 ~-6 cauldron []
setblock ~-2 ~4 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 slime []
setblock ~0 ~1 ~0 bookshelf []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 4 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 9 glass_bottle 9
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 12 cooked_cod 14
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 14 lead 3
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-5 ~0

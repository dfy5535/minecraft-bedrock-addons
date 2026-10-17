# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1613/4224 | 主题内编号: b077/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子鸟居图腾神道 (swampland_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace leaves2
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log
fill ~-8 ~1 ~-6 ~8 ~11 ~6 air [] replace log2
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-5 ~7 ~0 ~5 spruce_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 mossy_cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 mossy_stone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 spider_eye 14
replaceitem block ~-5 ~-3 ~2 slot.container 1 fermented_spider_eye 10
replaceitem block ~-5 ~-3 ~2 slot.container 2 gunpowder 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 redstone 11
replaceitem block ~-5 ~-3 ~2 slot.container 4 glowstone_dust 10
replaceitem block ~-5 ~-3 ~2 slot.container 5 bone 13
replaceitem block ~-5 ~-3 ~2 slot.container 9 lead 4
replaceitem block ~-5 ~-3 ~2 slot.container 10 name_tag 1
replaceitem block ~-5 ~-3 ~2 slot.container 11 brewing_stand 5
replaceitem block ~-5 ~-3 ~2 slot.container 12 cauldron 6
replaceitem block ~-5 ~-3 ~2 slot.container 13 lantern 10
replaceitem block ~-5 ~-3 ~2 slot.container 14 glass_bottle 6
loot insert ~-5 ~-3 ~2 loot "rsf/swampland"
loot insert ~-5 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 mossy_stone_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-5 ~7 ~7 ~5 spruce_slab []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 spruce_planks []
fill ~-6 ~10 ~-4 ~6 ~10 ~4 spruce_slab []
setblock ~0 ~11 ~0 cauldron []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~-6 ~-4 ~-4 ~-6 ~0 ~-4 oak_log []
fill ~-6 ~-4 ~4 ~-6 ~0 ~4 oak_log []
fill ~6 ~-4 ~-4 ~6 ~0 ~-4 oak_log []
fill ~6 ~-4 ~4 ~6 ~0 ~4 oak_log []
setblock ~-1 ~1 ~-5 cauldron []
setblock ~1 ~2 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-5 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 glowstone_dust 13
replaceitem block ~5 ~1 ~2 slot.container 1 bone 16
replaceitem block ~5 ~1 ~2 slot.container 2 rotten_flesh 17
replaceitem block ~5 ~1 ~2 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~2 slot.container 4 spider_eye 9
replaceitem block ~5 ~1 ~2 slot.container 5 fermented_spider_eye 5
replaceitem block ~5 ~1 ~2 slot.container 9 lantern 7
replaceitem block ~5 ~1 ~2 slot.container 10 glass_bottle 10
replaceitem block ~5 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~5 ~1 ~2 slot.container 12 mushroom_stew 1
replaceitem block ~5 ~1 ~2 slot.container 13 cooked_cod 8
replaceitem block ~5 ~1 ~2 slot.container 14 iron_ingot 7
loot insert ~5 ~1 ~2 loot "rsf/swampland"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~3 slot.container 1 slime_ball 15
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 12
replaceitem block ~-5 ~1 ~3 slot.container 3 fermented_spider_eye 8
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 14
replaceitem block ~-5 ~1 ~3 slot.container 5 redstone 17
replaceitem block ~-5 ~1 ~3 slot.container 9 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 10 glass_bottle 8
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_cod 13
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~2 ~0

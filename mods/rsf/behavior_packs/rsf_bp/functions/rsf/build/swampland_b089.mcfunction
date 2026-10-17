# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1625/4224 | 主题内编号: b089/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·四柱挑檐祈愿凉亭 (swampland_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace leaves
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace leaves2
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace log
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air [] replace log2
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~7 ~3 mossy_stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 oak_log []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 oak_log []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 oak_log []
fill ~4 ~1 ~3 ~4 ~7 ~3 oak_log []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 spruce_slab []
fill ~-3 ~8 ~-2 ~3 ~9 ~2 spruce_planks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 spruce_slab []
setblock ~0 ~11 ~0 cauldron []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 spruce_planks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 oak_log []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 oak_log []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 spruce_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 6x4x4) ---
fill ~-4 ~-4 ~-3 ~-4 ~0 ~-3 oak_log []
fill ~-4 ~-4 ~3 ~-4 ~0 ~3 oak_log []
fill ~4 ~-4 ~-3 ~4 ~0 ~-3 oak_log []
fill ~4 ~-4 ~3 ~4 ~0 ~3 oak_log []
setblock ~-2 ~1 ~-4 cauldron []
setblock ~2 ~4 ~-4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 slime []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 spider_eye 9
replaceitem block ~3 ~1 ~1 slot.container 1 fermented_spider_eye 5
replaceitem block ~3 ~1 ~1 slot.container 2 gunpowder 11
replaceitem block ~3 ~1 ~1 slot.container 3 redstone 14
replaceitem block ~3 ~1 ~1 slot.container 4 glowstone_dust 13
replaceitem block ~3 ~1 ~1 slot.container 5 bone 16
replaceitem block ~3 ~1 ~1 slot.container 9 lead 3
replaceitem block ~3 ~1 ~1 slot.container 10 name_tag 1
replaceitem block ~3 ~1 ~1 slot.container 11 brewing_stand 4
replaceitem block ~3 ~1 ~1 slot.container 12 cauldron 5
replaceitem block ~3 ~1 ~1 slot.container 13 lantern 9
replaceitem block ~3 ~1 ~1 slot.container 14 glass_bottle 12
loot insert ~3 ~1 ~1 loot "rsf/swampland"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 gunpowder 14
replaceitem block ~-3 ~1 ~2 slot.container 1 redstone 17
replaceitem block ~-3 ~1 ~2 slot.container 2 glowstone_dust 8
replaceitem block ~-3 ~1 ~2 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~2 slot.container 5 slime_ball 15
replaceitem block ~-3 ~1 ~2 slot.container 9 lead 8
replaceitem block ~-3 ~1 ~2 slot.container 10 name_tag 1
replaceitem block ~-3 ~1 ~2 slot.container 11 brewing_stand 2
replaceitem block ~-3 ~1 ~2 slot.container 12 cauldron 3
replaceitem block ~-3 ~1 ~2 slot.container 13 lantern 7
replaceitem block ~-3 ~1 ~2 slot.container 14 glass_bottle 10
loot insert ~-3 ~1 ~2 loot "rsf/swampland"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~2 ~0

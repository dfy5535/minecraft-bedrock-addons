# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1553/4224 | 主题内编号: b017/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双坡顶皇家藏宝室 (swampland_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mud_bricks []
setblock ~0 ~0 ~0 cauldron []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 spruce_planks []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 glowstone_dust 10
replaceitem block ~3 ~-2 ~3 slot.container 1 bone 13
replaceitem block ~3 ~-2 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~3 ~-2 ~3 slot.container 3 slime_ball 17
replaceitem block ~3 ~-2 ~3 slot.container 4 spider_eye 14
replaceitem block ~3 ~-2 ~3 slot.container 5 fermented_spider_eye 10
replaceitem block ~3 ~-2 ~3 slot.container 9 cooked_cod 10
replaceitem block ~3 ~-2 ~3 slot.container 10 iron_ingot 9
replaceitem block ~3 ~-2 ~3 slot.container 11 lead 6
replaceitem block ~3 ~-2 ~3 slot.container 12 name_tag 1
replaceitem block ~3 ~-2 ~3 slot.container 13 brewing_stand 7
replaceitem block ~3 ~-2 ~3 slot.container 14 cauldron 1
loot insert ~3 ~-2 ~3 loot "rsf/swampland"
loot insert ~3 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 oak_log []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 oak_log []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 oak_log []
fill ~5 ~1 ~5 ~5 ~6 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 spruce_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 spruce_planks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-5 ~-5 ~-5 ~-5 ~0 ~-5 oak_log []
fill ~-5 ~-5 ~5 ~-5 ~0 ~5 oak_log []
fill ~5 ~-5 ~-5 ~5 ~0 ~-5 oak_log []
fill ~5 ~-5 ~5 ~5 ~0 ~5 oak_log []
setblock ~-1 ~1 ~-6 cauldron []
setblock ~1 ~2 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 9
replaceitem block ~4 ~1 ~3 slot.container 1 fermented_spider_eye 5
replaceitem block ~4 ~1 ~3 slot.container 2 gunpowder 11
replaceitem block ~4 ~1 ~3 slot.container 3 redstone 14
replaceitem block ~4 ~1 ~3 slot.container 4 glowstone_dust 13
replaceitem block ~4 ~1 ~3 slot.container 5 bone 16
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 10
replaceitem block ~4 ~1 ~3 slot.container 10 glass_bottle 6
replaceitem block ~4 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~4 ~1 ~3 slot.container 12 mushroom_stew 1
replaceitem block ~4 ~1 ~3 slot.container 13 cooked_cod 11
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~3 loot "rsf/swampland"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 gunpowder 14
replaceitem block ~-4 ~1 ~4 slot.container 1 redstone 17
replaceitem block ~-4 ~1 ~4 slot.container 2 glowstone_dust 8
replaceitem block ~-4 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-4 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 15
replaceitem block ~-4 ~1 ~4 slot.container 9 lantern 8
replaceitem block ~-4 ~1 ~4 slot.container 10 glass_bottle 11
replaceitem block ~-4 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-4 ~1 ~4 slot.container 12 mushroom_stew 1
replaceitem block ~-4 ~1 ~4 slot.container 13 cooked_cod 9
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~4 loot "rsf/swampland"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon frog ~0 ~1 ~-1
summon bogged ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon slime ~0 ~-2 ~0

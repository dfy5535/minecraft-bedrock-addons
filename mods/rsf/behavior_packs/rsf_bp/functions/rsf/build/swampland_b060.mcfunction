# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1596/4224 | 主题内编号: b060/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·圆形穹顶万骨祠堂 (swampland_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mossy_stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_lantern []
setblock ~4 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 fermented_spider_eye 10
replaceitem block ~0 ~-4 ~3 slot.container 1 gunpowder 8
replaceitem block ~0 ~-4 ~3 slot.container 2 redstone 11
replaceitem block ~0 ~-4 ~3 slot.container 3 glowstone_dust 10
replaceitem block ~0 ~-4 ~3 slot.container 4 bone 13
replaceitem block ~0 ~-4 ~3 slot.container 5 rotten_flesh 14
replaceitem block ~0 ~-4 ~3 slot.container 9 glass_bottle 12
replaceitem block ~0 ~-4 ~3 slot.container 10 golden_apple 1
replaceitem block ~0 ~-4 ~3 slot.container 11 mushroom_stew 1
replaceitem block ~0 ~-4 ~3 slot.container 12 cooked_cod 10
replaceitem block ~0 ~-4 ~3 slot.container 13 iron_ingot 9
replaceitem block ~0 ~-4 ~3 slot.container 14 lead 6
loot insert ~0 ~-4 ~3 loot "rsf/swampland"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 fermented_spider_eye 8
replaceitem block ~0 ~-4 ~-3 slot.container 1 gunpowder 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 redstone 17
replaceitem block ~0 ~-4 ~-3 slot.container 3 glowstone_dust 8
replaceitem block ~0 ~-4 ~-3 slot.container 4 bone 11
replaceitem block ~0 ~-4 ~-3 slot.container 5 rotten_flesh 12
replaceitem block ~0 ~-4 ~-3 slot.container 9 glass_bottle 11
replaceitem block ~0 ~-4 ~-3 slot.container 10 golden_apple 7
replaceitem block ~0 ~-4 ~-3 slot.container 11 mushroom_stew 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 cooked_cod 9
replaceitem block ~0 ~-4 ~-3 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-4 ~-3 slot.container 14 lead 5
loot insert ~0 ~-4 ~-3 loot "rsf/swampland"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 spruce_planks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~7 ~-5 ~-8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~8 ~7 ~-5 ~8 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-7 ~8 ~-4 ~-7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-4 ~7 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-4 ~6 ~8 ~4 spruce_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 cauldron []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 cauldron []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 cauldron []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 cauldron []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-6 ~-7 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-7 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-7 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-7 ~5 ~6 ~0 ~5 oak_log []
setblock ~0 ~1 ~-6 cauldron []
setblock ~0 ~5 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 bookshelf []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 redstone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 glowstone_dust 13
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~3 slot.container 9 cauldron 1
replaceitem block ~-5 ~1 ~3 slot.container 10 lantern 5
replaceitem block ~-5 ~1 ~3 slot.container 11 glass_bottle 8
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 13 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 14 cooked_cod 13
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon bogged ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

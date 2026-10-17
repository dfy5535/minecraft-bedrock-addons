# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1592/4224 | 主题内编号: b056/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·隐士半地下避难山居 (swampland_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_archery]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 mossy_stone_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 redstone 11
replaceitem block ~3 ~-3 ~2 slot.container 1 glowstone_dust 10
replaceitem block ~3 ~-3 ~2 slot.container 2 bone 13
replaceitem block ~3 ~-3 ~2 slot.container 3 rotten_flesh 14
replaceitem block ~3 ~-3 ~2 slot.container 4 slime_ball 17
replaceitem block ~3 ~-3 ~2 slot.container 5 spider_eye 14
replaceitem block ~3 ~-3 ~2 slot.container 9 glass_bottle 12
replaceitem block ~3 ~-3 ~2 slot.container 10 golden_apple 1
replaceitem block ~3 ~-3 ~2 slot.container 11 mushroom_stew 1
replaceitem block ~3 ~-3 ~2 slot.container 12 cooked_cod 10
replaceitem block ~3 ~-3 ~2 slot.container 13 iron_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 14 lead 6
loot insert ~3 ~-3 ~2 loot "rsf/swampland"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 stone_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-4 ~-5 ~8 ~4 stone_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-4 ~5 ~8 ~4 stone_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-4 ~4 ~8 ~4 spruce_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 oak_log []
setblock ~0 ~4 ~-7 bookshelf []
setblock ~0 ~5 ~-7 campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 oak_log []
setblock ~0 ~4 ~7 bookshelf []
setblock ~0 ~5 ~7 campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 oak_log []
setblock ~-8 ~4 ~0 bookshelf []
setblock ~-8 ~5 ~0 campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 oak_log []
setblock ~8 ~4 ~0 bookshelf []
setblock ~8 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~-2 ~1 ~-5 cauldron []
setblock ~2 ~6 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 2 fermented_spider_eye 5
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 11
replaceitem block ~-4 ~1 ~2 slot.container 4 redstone 14
replaceitem block ~-4 ~1 ~2 slot.container 5 glowstone_dust 13
replaceitem block ~-4 ~1 ~2 slot.container 9 name_tag 1
replaceitem block ~-4 ~1 ~2 slot.container 10 brewing_stand 5
replaceitem block ~-4 ~1 ~2 slot.container 11 cauldron 6
replaceitem block ~-4 ~1 ~2 slot.container 12 lantern 10
replaceitem block ~-4 ~1 ~2 slot.container 13 glass_bottle 6
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 2
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-3 ~0

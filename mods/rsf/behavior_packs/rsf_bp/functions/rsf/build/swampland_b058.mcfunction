# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1594/4224 | 主题内编号: b058/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·十字拱顶家族陵墓 (swampland_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 mud_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 spruce_planks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 slime_ball 17
replaceitem block ~0 ~-4 ~3 slot.container 1 spider_eye 14
replaceitem block ~0 ~-4 ~3 slot.container 2 fermented_spider_eye 10
replaceitem block ~0 ~-4 ~3 slot.container 3 gunpowder 8
replaceitem block ~0 ~-4 ~3 slot.container 4 redstone 11
replaceitem block ~0 ~-4 ~3 slot.container 5 glowstone_dust 10
replaceitem block ~0 ~-4 ~3 slot.container 9 iron_ingot 10
replaceitem block ~0 ~-4 ~3 slot.container 10 lead 7
replaceitem block ~0 ~-4 ~3 slot.container 11 name_tag 1
replaceitem block ~0 ~-4 ~3 slot.container 12 brewing_stand 1
replaceitem block ~0 ~-4 ~3 slot.container 13 cauldron 2
replaceitem block ~0 ~-4 ~3 slot.container 14 lantern 6
loot insert ~0 ~-4 ~3 loot "rsf/swampland"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 slime_ball 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 spider_eye 12
replaceitem block ~0 ~-4 ~-3 slot.container 2 fermented_spider_eye 8
replaceitem block ~0 ~-4 ~-3 slot.container 3 gunpowder 14
replaceitem block ~0 ~-4 ~-3 slot.container 4 redstone 17
replaceitem block ~0 ~-4 ~-3 slot.container 5 glowstone_dust 8
replaceitem block ~0 ~-4 ~-3 slot.container 9 iron_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 10 lead 6
replaceitem block ~0 ~-4 ~-3 slot.container 11 name_tag 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 brewing_stand 7
replaceitem block ~0 ~-4 ~-3 slot.container 13 cauldron 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 lantern 5
loot insert ~0 ~-4 ~-3 loot "rsf/swampland"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 spruce_planks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 spruce_planks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 oak_fence []
setblock ~6 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 spruce_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 mud_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 mud_brick_slab []
setblock ~0 ~12 ~0 brewing_stand []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 spruce_log []
setblock ~-8 ~5 ~-7 torch []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 spruce_log []
setblock ~-8 ~5 ~7 torch []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 spruce_log []
setblock ~8 ~5 ~-7 torch []
fill ~8 ~0 ~7 ~8 ~4 ~7 spruce_log []
setblock ~8 ~5 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-6 ~-7 ~-5 ~-6 ~0 ~-5 oak_log []
fill ~-6 ~-7 ~5 ~-6 ~0 ~5 oak_log []
fill ~6 ~-7 ~-5 ~6 ~0 ~-5 oak_log []
fill ~6 ~-7 ~5 ~6 ~0 ~5 oak_log []
setblock ~-2 ~1 ~-6 cauldron []
setblock ~2 ~3 ~-6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 brewing_stand []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 fermented_spider_eye 5
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 11
replaceitem block ~-5 ~1 ~3 slot.container 2 redstone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 glowstone_dust 13
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 9 mushroom_stew 1
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_cod 14
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 12 lead 3
replaceitem block ~-5 ~1 ~3 slot.container 13 name_tag 1
replaceitem block ~-5 ~1 ~3 slot.container 14 brewing_stand 4
loot insert ~-5 ~1 ~3 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1

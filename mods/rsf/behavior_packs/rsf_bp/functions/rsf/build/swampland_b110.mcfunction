# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1646/4224 | 主题内编号: b110/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双子附魔与酿造实验楼 (swampland_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace leaves2
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log
fill ~-9 ~1 ~-6 ~9 ~11 ~6 air [] replace log2
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 spruce_planks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 spruce_planks [] replace water
fill ~-8 ~0 ~-5 ~8 ~0 ~5 spruce_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 mud_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 packed_mud []
setblock ~0 ~0 ~0 brewing_stand []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 mud_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 fermented_spider_eye 10
replaceitem block ~5 ~-3 ~2 slot.container 1 gunpowder 8
replaceitem block ~5 ~-3 ~2 slot.container 2 redstone 11
replaceitem block ~5 ~-3 ~2 slot.container 3 glowstone_dust 10
replaceitem block ~5 ~-3 ~2 slot.container 4 bone 13
replaceitem block ~5 ~-3 ~2 slot.container 5 rotten_flesh 14
replaceitem block ~5 ~-3 ~2 slot.container 9 mushroom_stew 1
replaceitem block ~5 ~-3 ~2 slot.container 10 cooked_cod 13
replaceitem block ~5 ~-3 ~2 slot.container 11 iron_ingot 12
replaceitem block ~5 ~-3 ~2 slot.container 12 lead 2
replaceitem block ~5 ~-3 ~2 slot.container 13 name_tag 1
replaceitem block ~5 ~-3 ~2 slot.container 14 brewing_stand 3
loot insert ~5 ~-3 ~2 loot "rsf/swampland"
loot insert ~5 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 spruce_planks []
fill ~2 ~1 ~-4 ~7 ~8 ~4 spruce_planks []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 mossy_cobblestone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-5 ~8 ~7 ~5 spruce_slab []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 mud_bricks []
fill ~-7 ~10 ~-4 ~7 ~10 ~4 mud_brick_slab []
setblock ~0 ~11 ~0 brewing_stand []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 spruce_planks []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 9x5x5) ---
fill ~-7 ~-6 ~-4 ~-7 ~0 ~-4 oak_log []
fill ~-7 ~-6 ~4 ~-7 ~0 ~4 oak_log []
fill ~7 ~-6 ~-4 ~7 ~0 ~-4 oak_log []
fill ~7 ~-6 ~4 ~7 ~0 ~4 oak_log []
setblock ~-1 ~1 ~-5 cauldron []
setblock ~1 ~5 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 1 rotten_flesh 17
replaceitem block ~-6 ~1 ~2 slot.container 2 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 3 spider_eye 9
replaceitem block ~-6 ~1 ~2 slot.container 4 fermented_spider_eye 5
replaceitem block ~-6 ~1 ~2 slot.container 5 gunpowder 11
replaceitem block ~-6 ~1 ~2 slot.container 9 cauldron 2
replaceitem block ~-6 ~1 ~2 slot.container 10 lantern 6
replaceitem block ~-6 ~1 ~2 slot.container 11 glass_bottle 9
replaceitem block ~-6 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~-6 ~1 ~2 slot.container 13 mushroom_stew 1
replaceitem block ~-6 ~1 ~2 slot.container 14 cooked_cod 14
loot insert ~-6 ~1 ~2 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-3 ~0

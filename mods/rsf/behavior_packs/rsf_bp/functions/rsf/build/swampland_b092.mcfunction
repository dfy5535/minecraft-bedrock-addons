# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1628/4224 | 主题内编号: b092/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·双层重檐供奉宝塔 (swampland_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
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
replaceitem block ~3 ~-3 ~2 slot.container 0 slime_ball 17
replaceitem block ~3 ~-3 ~2 slot.container 1 spider_eye 14
replaceitem block ~3 ~-3 ~2 slot.container 2 fermented_spider_eye 10
replaceitem block ~3 ~-3 ~2 slot.container 3 gunpowder 8
replaceitem block ~3 ~-3 ~2 slot.container 4 redstone 11
replaceitem block ~3 ~-3 ~2 slot.container 5 glowstone_dust 10
replaceitem block ~3 ~-3 ~2 slot.container 9 cauldron 1
replaceitem block ~3 ~-3 ~2 slot.container 10 lantern 5
replaceitem block ~3 ~-3 ~2 slot.container 11 glass_bottle 8
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_apple 4
replaceitem block ~3 ~-3 ~2 slot.container 13 mushroom_stew 1
replaceitem block ~3 ~-3 ~2 slot.container 14 cooked_cod 13
loot insert ~3 ~-3 ~2 loot "rsf/swampland"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 spruce_slab []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 mossy_stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 spruce_slab []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 mossy_stone_bricks []
fill ~-5 ~12 ~-4 ~5 ~12 ~4 spruce_slab []
setblock ~0 ~13 ~0 bookshelf []
setblock ~0 ~14 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 spruce_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~-5 ~-6 ~-4 ~-5 ~0 ~-4 oak_log []
fill ~-5 ~-6 ~4 ~-5 ~0 ~4 oak_log []
fill ~5 ~-6 ~-4 ~5 ~0 ~-4 oak_log []
fill ~5 ~-6 ~4 ~5 ~0 ~4 oak_log []
setblock ~-1 ~1 ~-5 cauldron []
setblock ~1 ~2 ~-5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 redstone 14
replaceitem block ~-4 ~1 ~2 slot.container 1 glowstone_dust 13
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~2 slot.container 4 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 10 lead 7
replaceitem block ~-4 ~1 ~2 slot.container 11 name_tag 1
replaceitem block ~-4 ~1 ~2 slot.container 12 brewing_stand 1
replaceitem block ~-4 ~1 ~2 slot.container 13 cauldron 2
replaceitem block ~-4 ~1 ~2 slot.container 14 lantern 6
loot insert ~-4 ~1 ~2 loot "rsf/swampland"
summon slime ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon frog ~0 ~-3 ~0

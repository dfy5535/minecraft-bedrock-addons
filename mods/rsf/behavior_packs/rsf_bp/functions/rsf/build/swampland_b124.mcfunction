# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1660/4224 | 主题内编号: b124/128
# 地形主题 #13: 传统沼泽与巫术湿地 (swampland) —— 带防潮水上高脚木桩与女巫坩埚台
# 建筑名称: 巫沼炼金系·三层重檐帝王阁楼与秘库 (swampland_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: swampland, swampland_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log2
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 cobblestone [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 cobblestone [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 spruce_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 mossy_stone_bricks []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 slime_ball 17
replaceitem block ~4 ~-4 ~4 slot.container 1 spider_eye 14
replaceitem block ~4 ~-4 ~4 slot.container 2 fermented_spider_eye 10
replaceitem block ~4 ~-4 ~4 slot.container 3 gunpowder 8
replaceitem block ~4 ~-4 ~4 slot.container 4 redstone 11
replaceitem block ~4 ~-4 ~4 slot.container 5 glowstone_dust 10
replaceitem block ~4 ~-4 ~4 slot.container 9 iron_ingot 10
replaceitem block ~4 ~-4 ~4 slot.container 10 lead 7
replaceitem block ~4 ~-4 ~4 slot.container 11 name_tag 1
replaceitem block ~4 ~-4 ~4 slot.container 12 brewing_stand 1
replaceitem block ~4 ~-4 ~4 slot.container 13 cauldron 2
replaceitem block ~4 ~-4 ~4 slot.container 14 lantern 6
loot insert ~4 ~-4 ~4 loot "rsf/swampland"
loot insert ~4 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 cobblestone []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-7 ~5 ~-7 ~7 ~5 ~7 spruce_slab []
fill ~-5 ~6 ~-5 ~5 ~10 ~5 mossy_stone_bricks []
fill ~-4 ~6 ~-4 ~4 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~6 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~10 ~-7 ~7 ~10 ~7 spruce_slab []
fill ~-5 ~11 ~-5 ~5 ~12 ~5 mossy_stone_bricks []
fill ~-6 ~13 ~-6 ~6 ~13 ~6 spruce_slab []
setblock ~0 ~14 ~0 bookshelf []
setblock ~0 ~15 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 cobblestone []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (swampland 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-6 ~-7 ~-6 ~-6 ~0 ~-6 oak_log []
fill ~-6 ~-7 ~6 ~-6 ~0 ~6 oak_log []
fill ~6 ~-7 ~-6 ~6 ~0 ~-6 oak_log []
fill ~6 ~-7 ~6 ~6 ~0 ~6 oak_log []
setblock ~-2 ~1 ~-7 cauldron []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 slime []
setblock ~0 ~1 ~0 bookshelf []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 redstone 14
replaceitem block ~-5 ~1 ~4 slot.container 1 glowstone_dust 13
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 4 slime_ball 12
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 9 glass_bottle 7
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 11 mushroom_stew 1
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_cod 12
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 14 lead 8
loot insert ~-5 ~1 ~4 loot "rsf/swampland"
summon skeleton ~0 ~1 ~-1
summon frog ~-1 ~1 ~1
summon bogged ~1 ~1 ~1

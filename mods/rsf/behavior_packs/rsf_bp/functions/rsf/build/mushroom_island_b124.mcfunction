# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3068/4224 | 主题内编号: b124/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·三层重檐帝王阁楼与秘库 (mushroom_island_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x17 | 地上高度 9格 | 地下深度 4格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~13 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~13 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~13 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~13 ~9 air [] replace log2
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 stone_bricks [] replace air
fill ~-6 ~-5 ~-8 ~6 ~-1 ~8 stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mycelium []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 brown_mushroom_block []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 quartz_block []
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~5 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-3 ~5 slot.container 1 bone 18
replaceitem block ~3 ~-3 ~5 slot.container 2 gunpowder 17
replaceitem block ~3 ~-3 ~5 slot.container 3 string 10
replaceitem block ~3 ~-3 ~5 slot.container 4 spider_eye 9
replaceitem block ~3 ~-3 ~5 slot.container 5 slime_ball 10
replaceitem block ~3 ~-3 ~5 slot.container 9 bowl 11
replaceitem block ~3 ~-3 ~5 slot.container 10 shroomlight 10
replaceitem block ~3 ~-3 ~5 slot.container 11 mushroom_stew 1
replaceitem block ~3 ~-3 ~5 slot.container 12 suspicious_stew 1
replaceitem block ~3 ~-3 ~5 slot.container 13 mycelium 10
replaceitem block ~3 ~-3 ~5 slot.container 14 red_mushroom 15
loot insert ~3 ~-3 ~5 loot "rsf/mushroom_island"
loot insert ~3 ~-3 ~5 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~4 ~7 stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~3 ~6 air []
fill ~-6 ~4 ~-8 ~6 ~4 ~8 stone_brick_slab []
fill ~-4 ~5 ~-6 ~4 ~9 ~6 quartz_block []
fill ~-3 ~5 ~-5 ~3 ~8 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~5 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-8 ~6 ~9 ~8 stone_brick_slab []
fill ~-4 ~10 ~-6 ~4 ~11 ~6 quartz_block []
fill ~-5 ~12 ~-7 ~5 ~12 ~7 quartz_slab []
setblock ~0 ~13 ~0 emerald_block []
setblock ~0 ~14 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 mushroom_stem []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 mushroom_stem []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 mushroom_stem []
fill ~7 ~0 ~2 ~7 ~4 ~2 mushroom_stem []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 6x9x5) ---
fill ~6 ~0 ~3 ~6 ~7 ~3 mushroom_stem []
fill ~5 ~8 ~2 ~7 ~8 ~4 red_mushroom_block []
setblock ~6 ~7 ~4 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~5 loom []
setblock ~0 ~1 ~5 crafting_table []
setblock ~3 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 spider_eye 12
replaceitem block ~-4 ~1 ~6 slot.container 1 slime_ball 13
replaceitem block ~-4 ~1 ~6 slot.container 2 ender_pearl 10
replaceitem block ~-4 ~1 ~6 slot.container 3 blaze_rod 9
replaceitem block ~-4 ~1 ~6 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~6 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~6 slot.container 9 brown_mushroom 14
replaceitem block ~-4 ~1 ~6 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~6 slot.container 11 diamond 6
replaceitem block ~-4 ~1 ~6 slot.container 12 iron_ingot 13
replaceitem block ~-4 ~1 ~6 slot.container 13 bowl 12
replaceitem block ~-4 ~1 ~6 slot.container 14 shroomlight 4
loot insert ~-4 ~1 ~6 loot "rsf/mushroom_island"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~6 slot.container 1 blaze_rod 4
replaceitem block ~4 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 3 bone 16
replaceitem block ~4 ~1 ~6 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~6 slot.container 5 string 16
replaceitem block ~4 ~1 ~6 slot.container 9 brown_mushroom 12
replaceitem block ~4 ~1 ~6 slot.container 10 golden_apple 3
replaceitem block ~4 ~1 ~6 slot.container 11 diamond 4
replaceitem block ~4 ~1 ~6 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~6 slot.container 13 bowl 10
replaceitem block ~4 ~1 ~6 slot.container 14 shroomlight 9
loot insert ~4 ~1 ~6 loot "rsf/mushroom_island"
loot insert ~4 ~1 ~6 loot "chests/simple_dungeon"
summon slime ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon skeleton ~0 ~-3 ~0

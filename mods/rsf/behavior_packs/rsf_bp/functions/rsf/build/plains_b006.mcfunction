# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0006/4224 | 主题内编号: b006/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·重檐飞角四方神龛 (plains_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air [] replace log2
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 oak_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 hay_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 oak_planks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 gunpowder 13
replaceitem block ~3 ~-3 ~2 slot.container 1 string 8
replaceitem block ~3 ~-3 ~2 slot.container 2 arrow 17
replaceitem block ~3 ~-3 ~2 slot.container 3 spider_eye 6
replaceitem block ~3 ~-3 ~2 slot.container 4 leather 9
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 7
replaceitem block ~3 ~-3 ~2 slot.container 10 coal 15
replaceitem block ~3 ~-3 ~2 slot.container 11 oak_log 20
replaceitem block ~3 ~-3 ~2 slot.container 12 apple 11
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_apple 7
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_pickaxe 1
loot insert ~3 ~-3 ~2 loot "rsf/plains"
loot insert ~3 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 stripped_oak_log []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 stripped_oak_log []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 stripped_oak_log []
fill ~5 ~1 ~4 ~5 ~8 ~4 stripped_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 oak_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 oak_planks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 cobblestone_slab []
setblock ~0 ~12 ~0 hay_block []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 cobblestone []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~1 ~7 ~7 ~1 stripped_oak_log []
fill ~7 ~6 ~-1 ~7 ~6 ~3 cobblestone_wall []
fill ~7 ~4 ~1 ~7 ~8 ~1 cobblestone_wall []
setblock ~7 ~8 ~1 lantern []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 8
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 10 torch 16
replaceitem block ~-4 ~1 ~2 slot.container 11 bread 9
replaceitem block ~-4 ~1 ~2 slot.container 12 cooked_beef 8
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 14 coal 16
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

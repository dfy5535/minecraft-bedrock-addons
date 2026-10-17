# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0124/4224 | 主题内编号: b124/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·三层重檐帝王阁楼与秘库 (plains_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~14 ~8 air [] replace log2
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 stone_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 mossy_cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 cobblestone []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-4 ~4 slot.container 1 bone 14
replaceitem block ~4 ~-4 ~4 slot.container 2 gunpowder 13
replaceitem block ~4 ~-4 ~4 slot.container 3 string 8
replaceitem block ~4 ~-4 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~-4 ~4 slot.container 5 spider_eye 6
replaceitem block ~4 ~-4 ~4 slot.container 9 golden_apple 2
replaceitem block ~4 ~-4 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~-4 ~4 slot.container 11 shield 1
replaceitem block ~4 ~-4 ~4 slot.container 12 torch 20
replaceitem block ~4 ~-4 ~4 slot.container 13 bread 13
replaceitem block ~4 ~-4 ~4 slot.container 14 cooked_beef 12
loot insert ~4 ~-4 ~4 loot "rsf/plains"
loot insert ~4 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-7 ~5 ~-7 ~7 ~5 ~7 stone_brick_slab []
fill ~-5 ~6 ~-5 ~5 ~10 ~5 cobblestone []
fill ~-4 ~6 ~-4 ~4 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~6 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~10 ~-7 ~7 ~10 ~7 stone_brick_slab []
fill ~-5 ~11 ~-5 ~5 ~12 ~5 cobblestone []
fill ~-6 ~13 ~-6 ~6 ~13 ~6 stone_brick_slab []
setblock ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 stone_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~8 ~0 ~0 ~8 ~5 ~0 stone_bricks []
fill ~8 ~4 ~-2 ~8 ~4 ~2 cobblestone_wall []
fill ~8 ~2 ~0 ~8 ~6 ~0 cobblestone_wall []
setblock ~8 ~6 ~0 campfire []
fill ~-8 ~1 ~-1 ~-8 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~4 slot.container 1 spider_eye 9
replaceitem block ~-5 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 9
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 10 coal 18
replaceitem block ~-5 ~1 ~4 slot.container 11 oak_log 16
replaceitem block ~-5 ~1 ~4 slot.container 12 apple 7
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~4 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

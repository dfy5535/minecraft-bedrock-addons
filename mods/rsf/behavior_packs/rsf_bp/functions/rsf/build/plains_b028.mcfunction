# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0028/4224 | 主题内编号: b028/128
# 地形主题 #01: 平原与向日葵荒野 (plains) —— 带风车谷仓木架与农耕瞭望台
# 建筑名称: 荒原开拓系·重檐挑角古钟楼 (plains_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: plains, sunflower_plains
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~14 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 mossy_cobblestone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cracked_stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 mossy_stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 stone_brick_slab []
fill ~-4 ~6 ~-3 ~4 ~10 ~3 cobblestone []
fill ~-3 ~6 ~-2 ~3 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~6 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 mossy_stone_bricks []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 oak_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 hay_block []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~4 ~-6 stone_bricks []
setblock ~-7 ~5 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~4 ~6 stone_bricks []
setblock ~-7 ~5 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~4 ~-6 stone_bricks []
setblock ~7 ~5 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~4 ~6 stone_bricks []
setblock ~7 ~5 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (plains 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~7 ~0 ~-1 ~7 ~9 ~-1 stone_bricks []
fill ~7 ~8 ~-3 ~7 ~8 ~1 cobblestone_wall []
fill ~7 ~6 ~-1 ~7 ~10 ~-1 cobblestone_wall []
setblock ~7 ~10 ~-1 campfire []
fill ~-7 ~1 ~-1 ~-7 ~1 ~1 hay_block []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 20
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 9
replaceitem block ~-4 ~1 ~2 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 9
replaceitem block ~-4 ~1 ~2 slot.container 9 oak_log 16
replaceitem block ~-4 ~1 ~2 slot.container 10 apple 7
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~2 slot.container 13 shield 1
replaceitem block ~-4 ~1 ~2 slot.container 14 torch 21
loot insert ~-4 ~1 ~2 loot "rsf/plains"
summon husk ~0 ~1 ~-1
summon iron_golem ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

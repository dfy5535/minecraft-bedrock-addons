# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4102/4224 | 主题内编号: b006/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·重檐飞角四方神龛 (the_end_altar_pagoda_shrine)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 obsidian []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 obsidian []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 phantom_membrane 13
replaceitem block ~3 ~-3 ~2 slot.container 1 dragon_breath 2
replaceitem block ~3 ~-3 ~2 slot.container 2 blaze_rod 5
replaceitem block ~3 ~-3 ~2 slot.container 3 ghast_tear 4
replaceitem block ~3 ~-3 ~2 slot.container 4 slime_ball 9
replaceitem block ~3 ~-3 ~2 slot.container 5 bone 12
replaceitem block ~3 ~-3 ~2 slot.container 9 chorus_fruit 19
replaceitem block ~3 ~-3 ~2 slot.container 10 popped_chorus_fruit 16
replaceitem block ~3 ~-3 ~2 slot.container 11 diamond 9
replaceitem block ~3 ~-3 ~2 slot.container 12 emerald 12
replaceitem block ~3 ~-3 ~2 slot.container 13 gold_ingot 10
replaceitem block ~3 ~-3 ~2 slot.container 14 iron_ingot 11
loot insert ~3 ~-3 ~2 loot "rsf/the_end"
loot insert ~3 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 purpur_block []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 purpur_pillar []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 purpur_pillar []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 purpur_pillar []
fill ~5 ~1 ~4 ~5 ~7 ~4 purpur_pillar []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 purpur_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 obsidian []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 purpur_slab []
setblock ~0 ~11 ~0 sea_lantern []
setblock ~0 ~12 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 purpur_block []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x5x6) ---
fill ~-6 ~0 ~1 ~-6 ~10 ~1 purpur_pillar []
fill ~6 ~0 ~1 ~6 ~10 ~1 purpur_pillar []
setblock ~-6 ~11 ~1 obsidian []
setblock ~6 ~11 ~1 obsidian []
setblock ~-6 ~12 ~1 end_rod []
setblock ~6 ~12 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~2 slot.container 2 shulker_shell 6
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 17
replaceitem block ~-4 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 5 dragon_breath 5
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 10 elytra 1
replaceitem block ~-4 ~1 ~2 slot.container 11 diamond_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 12 end_rod 11
replaceitem block ~-4 ~1 ~2 slot.container 13 chorus_fruit 20
replaceitem block ~-4 ~1 ~2 slot.container 14 popped_chorus_fruit 17
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1

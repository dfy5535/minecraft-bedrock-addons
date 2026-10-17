# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4191/4224 | 主题内编号: b095/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双子灯笼守卫神龛 (the_end_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 obsidian [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 obsidian [] replace water
fill ~-7 ~1 ~-4 ~7 ~8 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 purpur_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 end_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 purpur_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 end_rod []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~-3 ~2 slot.container 1 shulker_shell 11
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 22
replaceitem block ~-3 ~-3 ~2 slot.container 3 phantom_membrane 13
replaceitem block ~-3 ~-3 ~2 slot.container 4 dragon_breath 2
replaceitem block ~-3 ~-3 ~2 slot.container 5 blaze_rod 5
replaceitem block ~-3 ~-3 ~2 slot.container 9 end_rod 8
replaceitem block ~-3 ~-3 ~2 slot.container 10 chorus_fruit 17
replaceitem block ~-3 ~-3 ~2 slot.container 11 popped_chorus_fruit 14
replaceitem block ~-3 ~-3 ~2 slot.container 12 diamond 7
replaceitem block ~-3 ~-3 ~2 slot.container 13 emerald 10
replaceitem block ~-3 ~-3 ~2 slot.container 14 gold_ingot 15
loot insert ~-3 ~-3 ~2 loot "rsf/the_end"
loot insert ~-3 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~7 ~3 obsidian []
fill ~2 ~1 ~-3 ~6 ~7 ~3 obsidian []
fill ~-5 ~1 ~-2 ~-3 ~6 ~2 air []
fill ~3 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 purpur_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 purpur_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 end_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 purpur_slab []
setblock ~0 ~10 ~0 diamond_block []
setblock ~0 ~11 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~3 ~-5 purpur_pillar []
setblock ~-8 ~4 ~-5 end_rod []
fill ~-8 ~0 ~5 ~-8 ~3 ~5 purpur_pillar []
setblock ~-8 ~4 ~5 end_rod []
fill ~8 ~0 ~-5 ~8 ~3 ~-5 purpur_pillar []
setblock ~8 ~4 ~-5 end_rod []
fill ~8 ~0 ~5 ~8 ~3 ~5 purpur_pillar []
setblock ~8 ~4 ~5 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~1 ~-7 ~9 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~9 ~1 purpur_pillar []
setblock ~-7 ~10 ~1 obsidian []
setblock ~7 ~10 ~1 obsidian []
setblock ~-7 ~11 ~1 end_rod []
setblock ~7 ~11 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 end_rod []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 bone 15
replaceitem block ~5 ~1 ~1 slot.container 1 shulker_shell 6
replaceitem block ~5 ~1 ~1 slot.container 2 ender_pearl 17
replaceitem block ~5 ~1 ~1 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~1 slot.container 4 dragon_breath 5
replaceitem block ~5 ~1 ~1 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~1 slot.container 9 emerald 11
replaceitem block ~5 ~1 ~1 slot.container 10 gold_ingot 16
replaceitem block ~5 ~1 ~1 slot.container 11 iron_ingot 10
replaceitem block ~5 ~1 ~1 slot.container 12 golden_apple 4
replaceitem block ~5 ~1 ~1 slot.container 13 elytra 1
replaceitem block ~5 ~1 ~1 slot.container 14 diamond_sword 1
loot insert ~5 ~1 ~1 loot "rsf/the_end"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 20
replaceitem block ~-5 ~1 ~2 slot.container 1 phantom_membrane 11
replaceitem block ~-5 ~1 ~2 slot.container 2 dragon_breath 8
replaceitem block ~-5 ~1 ~2 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~2 slot.container 4 ghast_tear 2
replaceitem block ~-5 ~1 ~2 slot.container 5 slime_ball 7
replaceitem block ~-5 ~1 ~2 slot.container 9 emerald 9
replaceitem block ~-5 ~1 ~2 slot.container 10 gold_ingot 14
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 15
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 9
replaceitem block ~-5 ~1 ~2 slot.container 13 elytra 1
replaceitem block ~-5 ~1 ~2 slot.container 14 diamond_sword 1
loot insert ~-5 ~1 ~2 loot "rsf/the_end"
loot insert ~-5 ~1 ~2 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

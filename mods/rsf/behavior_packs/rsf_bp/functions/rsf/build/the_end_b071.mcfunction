# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4167/4224 | 主题内编号: b071/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·残破双子哨所遗迹 (the_end_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 obsidian [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 obsidian [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 purpur_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 end_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 end_bricks []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 end_rod []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 shulker_shell 11
replaceitem block ~5 ~-4 ~2 slot.container 1 ender_pearl 22
replaceitem block ~5 ~-4 ~2 slot.container 2 phantom_membrane 13
replaceitem block ~5 ~-4 ~2 slot.container 3 dragon_breath 2
replaceitem block ~5 ~-4 ~2 slot.container 4 blaze_rod 5
replaceitem block ~5 ~-4 ~2 slot.container 5 ghast_tear 4
replaceitem block ~5 ~-4 ~2 slot.container 9 diamond_sword 1
replaceitem block ~5 ~-4 ~2 slot.container 10 end_rod 11
replaceitem block ~5 ~-4 ~2 slot.container 11 chorus_fruit 20
replaceitem block ~5 ~-4 ~2 slot.container 12 popped_chorus_fruit 17
replaceitem block ~5 ~-4 ~2 slot.container 13 diamond 10
replaceitem block ~5 ~-4 ~2 slot.container 14 emerald 6
loot insert ~5 ~-4 ~2 loot "rsf/the_end"
loot insert ~5 ~-4 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 obsidian []
fill ~2 ~1 ~-4 ~6 ~7 ~4 obsidian []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 purpur_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 purpur_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 purpur_block []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-2 ~-7 ~10 ~-2 purpur_pillar []
fill ~7 ~0 ~-2 ~7 ~10 ~-2 purpur_pillar []
setblock ~-7 ~11 ~-2 obsidian []
setblock ~7 ~11 ~-2 obsidian []
setblock ~-7 ~12 ~-2 end_rod []
setblock ~7 ~12 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-5 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 bone 15
replaceitem block ~5 ~1 ~2 slot.container 1 shulker_shell 6
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 17
replaceitem block ~5 ~1 ~2 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~2 slot.container 4 dragon_breath 5
replaceitem block ~5 ~1 ~2 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~2 slot.container 9 popped_chorus_fruit 14
replaceitem block ~5 ~1 ~2 slot.container 10 diamond 7
replaceitem block ~5 ~1 ~2 slot.container 11 emerald 10
replaceitem block ~5 ~1 ~2 slot.container 12 gold_ingot 15
replaceitem block ~5 ~1 ~2 slot.container 13 iron_ingot 16
replaceitem block ~5 ~1 ~2 slot.container 14 golden_apple 3
loot insert ~5 ~1 ~2 loot "rsf/the_end"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 20
replaceitem block ~-5 ~1 ~3 slot.container 1 phantom_membrane 11
replaceitem block ~-5 ~1 ~3 slot.container 2 dragon_breath 8
replaceitem block ~-5 ~1 ~3 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~3 slot.container 4 ghast_tear 2
replaceitem block ~-5 ~1 ~3 slot.container 5 slime_ball 7
replaceitem block ~-5 ~1 ~3 slot.container 9 popped_chorus_fruit 12
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 5
replaceitem block ~-5 ~1 ~3 slot.container 11 emerald 8
replaceitem block ~-5 ~1 ~3 slot.container 12 gold_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
loot insert ~-5 ~1 ~3 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

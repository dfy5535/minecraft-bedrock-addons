# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4166/4224 | 主题内编号: b070/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·风化坍塌阶梯祭台 (the_end_ruin_crumbled_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 purpur_block [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 purpur_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 obsidian []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 end_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~-4 ~-5 ~-3 end_rod []
setblock ~4 ~-5 ~3 end_rod []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 blaze_rod 5
replaceitem block ~0 ~-3 ~3 slot.container 1 ghast_tear 4
replaceitem block ~0 ~-3 ~3 slot.container 2 slime_ball 9
replaceitem block ~0 ~-3 ~3 slot.container 3 bone 12
replaceitem block ~0 ~-3 ~3 slot.container 4 shulker_shell 11
replaceitem block ~0 ~-3 ~3 slot.container 5 ender_pearl 22
replaceitem block ~0 ~-3 ~3 slot.container 9 diamond_sword 1
replaceitem block ~0 ~-3 ~3 slot.container 10 end_rod 13
replaceitem block ~0 ~-3 ~3 slot.container 11 chorus_fruit 22
replaceitem block ~0 ~-3 ~3 slot.container 12 popped_chorus_fruit 12
replaceitem block ~0 ~-3 ~3 slot.container 13 diamond 5
replaceitem block ~0 ~-3 ~3 slot.container 14 emerald 8
loot insert ~0 ~-3 ~3 loot "rsf/the_end"
loot insert ~0 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 purpur_block []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 end_bricks []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 obsidian []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 purpur_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 purpur_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 purpur_pillar []
setblock ~0 ~4 ~-7 diamond_block []
setblock ~0 ~5 ~-7 end_rod []
fill ~0 ~0 ~7 ~0 ~3 ~7 purpur_pillar []
setblock ~0 ~4 ~7 diamond_block []
setblock ~0 ~5 ~7 end_rod []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 purpur_pillar []
setblock ~-8 ~4 ~0 diamond_block []
setblock ~-8 ~5 ~0 end_rod []
fill ~8 ~0 ~0 ~8 ~3 ~0 purpur_pillar []
setblock ~8 ~4 ~0 diamond_block []
setblock ~8 ~5 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 purpur_pillar []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 purpur_pillar []
setblock ~-7 ~10 ~-2 obsidian []
setblock ~7 ~10 ~-2 obsidian []
setblock ~-7 ~11 ~-2 end_rod []
setblock ~7 ~11 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 2 shulker_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 17
replaceitem block ~-5 ~1 ~3 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 5 dragon_breath 5
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 10 end_rod 10
replaceitem block ~-5 ~1 ~3 slot.container 11 chorus_fruit 19
replaceitem block ~-5 ~1 ~3 slot.container 12 popped_chorus_fruit 16
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 9
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 12
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

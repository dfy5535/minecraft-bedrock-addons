# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4169/4224 | 主题内编号: b073/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·八方图腾圣火石阵 (the_end_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_stone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 purpur_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 end_rod []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ghast_tear 4
replaceitem block ~4 ~-2 ~3 slot.container 1 slime_ball 9
replaceitem block ~4 ~-2 ~3 slot.container 2 bone 12
replaceitem block ~4 ~-2 ~3 slot.container 3 shulker_shell 11
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 22
replaceitem block ~4 ~-2 ~3 slot.container 5 phantom_membrane 13
replaceitem block ~4 ~-2 ~3 slot.container 9 popped_chorus_fruit 12
replaceitem block ~4 ~-2 ~3 slot.container 10 diamond 5
replaceitem block ~4 ~-2 ~3 slot.container 11 emerald 8
replaceitem block ~4 ~-2 ~3 slot.container 12 gold_ingot 13
replaceitem block ~4 ~-2 ~3 slot.container 13 iron_ingot 14
replaceitem block ~4 ~-2 ~3 slot.container 14 golden_apple 8
loot insert ~4 ~-2 ~3 loot "rsf/the_end"
loot insert ~4 ~-2 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 end_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 air []
fill ~6 ~1 ~5 ~6 ~7 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 purpur_pillar []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 purpur_pillar []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 purpur_pillar []
fill ~5 ~1 ~4 ~5 ~6 ~4 purpur_pillar []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 purpur_pillar []
setblock ~-6 ~9 ~-5 end_rod []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 purpur_pillar []
setblock ~-6 ~9 ~5 end_rod []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 purpur_pillar []
setblock ~6 ~9 ~-5 end_rod []
fill ~6 ~6 ~5 ~6 ~8 ~5 purpur_pillar []
setblock ~6 ~9 ~5 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 purpur_block []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~7 ~1 purpur_pillar []
setblock ~-7 ~8 ~1 obsidian []
setblock ~7 ~8 ~1 obsidian []
setblock ~-7 ~9 ~1 end_rod []
setblock ~7 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 17
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 dragon_breath 5
replaceitem block ~5 ~1 ~3 slot.container 3 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 9 elytra 1
replaceitem block ~5 ~1 ~3 slot.container 10 diamond_sword 1
replaceitem block ~5 ~1 ~3 slot.container 11 end_rod 14
replaceitem block ~5 ~1 ~3 slot.container 12 chorus_fruit 16
replaceitem block ~5 ~1 ~3 slot.container 13 popped_chorus_fruit 13
replaceitem block ~5 ~1 ~3 slot.container 14 diamond 6
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 dragon_breath 8
replaceitem block ~-5 ~1 ~4 slot.container 1 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 2 ghast_tear 2
replaceitem block ~-5 ~1 ~4 slot.container 3 slime_ball 7
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 5 shulker_shell 9
replaceitem block ~-5 ~1 ~4 slot.container 9 elytra 1
replaceitem block ~-5 ~1 ~4 slot.container 10 diamond_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 11 end_rod 12
replaceitem block ~-5 ~1 ~4 slot.container 12 chorus_fruit 21
replaceitem block ~-5 ~1 ~4 slot.container 13 popped_chorus_fruit 18
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond 4
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1
summon shulker ~0 ~-2 ~0

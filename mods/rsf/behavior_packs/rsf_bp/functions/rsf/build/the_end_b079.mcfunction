# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4175/4224 | 主题内编号: b079/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·四角结界守护柱阵 (the_end_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 obsidian [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 obsidian [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 end_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 end_rod []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 dragon_breath 2
replaceitem block ~4 ~-2 ~3 slot.container 1 blaze_rod 5
replaceitem block ~4 ~-2 ~3 slot.container 2 ghast_tear 4
replaceitem block ~4 ~-2 ~3 slot.container 3 slime_ball 9
replaceitem block ~4 ~-2 ~3 slot.container 4 bone 12
replaceitem block ~4 ~-2 ~3 slot.container 5 shulker_shell 11
replaceitem block ~4 ~-2 ~3 slot.container 9 end_rod 14
replaceitem block ~4 ~-2 ~3 slot.container 10 chorus_fruit 16
replaceitem block ~4 ~-2 ~3 slot.container 11 popped_chorus_fruit 13
replaceitem block ~4 ~-2 ~3 slot.container 12 diamond 6
replaceitem block ~4 ~-2 ~3 slot.container 13 emerald 9
replaceitem block ~4 ~-2 ~3 slot.container 14 gold_ingot 14
loot insert ~4 ~-2 ~3 loot "rsf/the_end"
loot insert ~4 ~-2 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 obsidian []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 purpur_block []
setblock ~-6 ~9 ~-5 end_rod []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 purpur_block []
setblock ~-6 ~9 ~4 end_rod []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 purpur_block []
setblock ~5 ~9 ~-5 end_rod []
fill ~5 ~1 ~4 ~6 ~8 ~5 purpur_block []
setblock ~5 ~9 ~4 end_rod []
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
fill ~8 ~0 ~-2 ~10 ~7 ~2 obsidian []
fill ~8 ~1 ~-1 ~9 ~6 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~8 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~2 ~-7 ~8 ~2 purpur_pillar []
fill ~7 ~0 ~2 ~7 ~8 ~2 purpur_pillar []
setblock ~-7 ~9 ~2 obsidian []
setblock ~7 ~9 ~2 obsidian []
setblock ~-7 ~10 ~2 end_rod []
setblock ~7 ~10 ~2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 bone 15
replaceitem block ~5 ~1 ~3 slot.container 1 shulker_shell 6
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 17
replaceitem block ~5 ~1 ~3 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 4 dragon_breath 5
replaceitem block ~5 ~1 ~3 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 9 iron_ingot 13
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~5 ~1 ~3 slot.container 11 elytra 1
replaceitem block ~5 ~1 ~3 slot.container 12 diamond_sword 1
replaceitem block ~5 ~1 ~3 slot.container 13 end_rod 8
replaceitem block ~5 ~1 ~3 slot.container 14 chorus_fruit 17
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 20
replaceitem block ~-5 ~1 ~4 slot.container 1 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 2 dragon_breath 8
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 2
replaceitem block ~-5 ~1 ~4 slot.container 5 slime_ball 7
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-5 ~1 ~4 slot.container 11 elytra 1
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 13 end_rod 13
replaceitem block ~-5 ~1 ~4 slot.container 14 chorus_fruit 22
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon endermite ~0 ~-2 ~0

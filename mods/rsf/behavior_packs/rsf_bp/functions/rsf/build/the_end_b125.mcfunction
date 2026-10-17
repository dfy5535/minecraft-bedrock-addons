# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4221/4224 | 主题内编号: b125/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·巨型阶梯金字塔神王殿 (the_end_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 end_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 end_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 end_stone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 purpur_block []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 obsidian []
setblock ~0 ~-6 ~0 end_rod []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 ghast_tear 4
replaceitem block ~5 ~-3 ~0 slot.container 1 slime_ball 9
replaceitem block ~5 ~-3 ~0 slot.container 2 bone 12
replaceitem block ~5 ~-3 ~0 slot.container 3 shulker_shell 11
replaceitem block ~5 ~-3 ~0 slot.container 4 ender_pearl 22
replaceitem block ~5 ~-3 ~0 slot.container 5 phantom_membrane 13
replaceitem block ~5 ~-3 ~0 slot.container 9 end_rod 13
replaceitem block ~5 ~-3 ~0 slot.container 10 chorus_fruit 22
replaceitem block ~5 ~-3 ~0 slot.container 11 popped_chorus_fruit 12
replaceitem block ~5 ~-3 ~0 slot.container 12 diamond 5
replaceitem block ~5 ~-3 ~0 slot.container 13 emerald 8
replaceitem block ~5 ~-3 ~0 slot.container 14 gold_ingot 13
loot insert ~5 ~-3 ~0 loot "rsf/the_end"
loot insert ~5 ~-3 ~0 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 end_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 purpur_block []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 purpur_block []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 purpur_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 purpur_block []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 purpur_block []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 obsidian []
setblock ~0 ~12 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 obsidian []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-8 ~0 ~-1 ~-8 ~9 ~-1 purpur_pillar []
fill ~8 ~0 ~-1 ~8 ~9 ~-1 purpur_pillar []
setblock ~-8 ~10 ~-1 obsidian []
setblock ~8 ~10 ~-1 obsidian []
setblock ~-8 ~11 ~-1 end_rod []
setblock ~8 ~11 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 1 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 2 bone 15
replaceitem block ~6 ~1 ~4 slot.container 3 shulker_shell 6
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 17
replaceitem block ~6 ~1 ~4 slot.container 5 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 9 emerald 6
replaceitem block ~6 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 11 iron_ingot 12
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 13 elytra 1
replaceitem block ~6 ~1 ~4 slot.container 14 diamond_sword 1
loot insert ~6 ~1 ~4 loot "rsf/the_end"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 bone 10
replaceitem block ~-6 ~1 ~5 slot.container 1 shulker_shell 9
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 20
replaceitem block ~-6 ~1 ~5 slot.container 3 phantom_membrane 11
replaceitem block ~-6 ~1 ~5 slot.container 4 dragon_breath 8
replaceitem block ~-6 ~1 ~5 slot.container 5 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 9 emerald 11
replaceitem block ~-6 ~1 ~5 slot.container 10 gold_ingot 16
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_ingot 10
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 13 elytra 1
replaceitem block ~-6 ~1 ~5 slot.container 14 diamond_sword 1
loot insert ~-6 ~1 ~5 loot "rsf/the_end"
loot insert ~-6 ~1 ~5 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1

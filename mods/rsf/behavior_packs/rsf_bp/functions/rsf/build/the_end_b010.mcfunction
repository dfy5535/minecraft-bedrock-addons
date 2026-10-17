# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4106/4224 | 主题内编号: b010/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·十字交叉深层地牢 (the_end_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 17x15 | 地上高度 4格 | 地下深度 6格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 purpur_block [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 purpur_block [] replace water
fill ~-8 ~1 ~-7 ~8 ~6 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 obsidian []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 obsidian []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 sea_lantern []
setblock ~0 ~-6 ~0 end_rod []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 phantom_membrane 13
replaceitem block ~4 ~-3 ~0 slot.container 1 dragon_breath 2
replaceitem block ~4 ~-3 ~0 slot.container 2 blaze_rod 5
replaceitem block ~4 ~-3 ~0 slot.container 3 ghast_tear 4
replaceitem block ~4 ~-3 ~0 slot.container 4 slime_ball 9
replaceitem block ~4 ~-3 ~0 slot.container 5 bone 12
replaceitem block ~4 ~-3 ~0 slot.container 9 golden_apple 6
replaceitem block ~4 ~-3 ~0 slot.container 10 elytra 1
replaceitem block ~4 ~-3 ~0 slot.container 11 diamond_sword 1
replaceitem block ~4 ~-3 ~0 slot.container 12 end_rod 14
replaceitem block ~4 ~-3 ~0 slot.container 13 chorus_fruit 16
replaceitem block ~4 ~-3 ~0 slot.container 14 popped_chorus_fruit 13
loot insert ~4 ~-3 ~0 loot "rsf/the_end"
loot insert ~4 ~-3 ~0 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~4 ~6 purpur_block []
fill ~-7 ~1 ~-2 ~7 ~4 ~2 purpur_block []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~3 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~4 ~-6 ~7 ~4 ~6 purpur_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-7 ~3 ~-1 ~-7 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 purpur_pillar []
setblock ~-9 ~4 ~-8 end_rod []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 purpur_pillar []
setblock ~-9 ~4 ~8 end_rod []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 purpur_pillar []
setblock ~9 ~4 ~-8 end_rod []
fill ~9 ~0 ~8 ~9 ~3 ~8 purpur_pillar []
setblock ~9 ~4 ~8 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 purpur_pillar []
setblock ~-8 ~10 ~-2 obsidian []
setblock ~8 ~10 ~-2 obsidian []
setblock ~-8 ~11 ~-2 end_rod []
setblock ~8 ~11 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 end_rod []
setblock ~0 ~1 ~0 sea_lantern []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 end_rod []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 1 dragon_breath 5
replaceitem block ~-6 ~1 ~4 slot.container 2 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 3 ghast_tear 7
replaceitem block ~-6 ~1 ~4 slot.container 4 slime_ball 12
replaceitem block ~-6 ~1 ~4 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~4 slot.container 9 diamond_sword 1
replaceitem block ~-6 ~1 ~4 slot.container 10 end_rod 13
replaceitem block ~-6 ~1 ~4 slot.container 11 chorus_fruit 22
replaceitem block ~-6 ~1 ~4 slot.container 12 popped_chorus_fruit 12
replaceitem block ~-6 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~-6 ~1 ~4 slot.container 14 emerald 8
loot insert ~-6 ~1 ~4 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1
summon enderman ~0 ~-5 ~0

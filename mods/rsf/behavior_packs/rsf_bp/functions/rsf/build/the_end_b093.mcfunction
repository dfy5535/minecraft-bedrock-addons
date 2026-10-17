# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4189/4224 | 主题内编号: b093/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·U型庭院神道祈福祠 (the_end_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 2格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_stone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 end_bricks []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 water []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 end_rod []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 shulker_shell 11
replaceitem block ~-4 ~-5 ~3 slot.container 1 ender_pearl 22
replaceitem block ~-4 ~-5 ~3 slot.container 2 phantom_membrane 13
replaceitem block ~-4 ~-5 ~3 slot.container 3 dragon_breath 2
replaceitem block ~-4 ~-5 ~3 slot.container 4 blaze_rod 5
replaceitem block ~-4 ~-5 ~3 slot.container 5 ghast_tear 4
replaceitem block ~-4 ~-5 ~3 slot.container 9 golden_apple 5
replaceitem block ~-4 ~-5 ~3 slot.container 10 elytra 1
replaceitem block ~-4 ~-5 ~3 slot.container 11 diamond_sword 1
replaceitem block ~-4 ~-5 ~3 slot.container 12 end_rod 13
replaceitem block ~-4 ~-5 ~3 slot.container 13 chorus_fruit 22
replaceitem block ~-4 ~-5 ~3 slot.container 14 popped_chorus_fruit 12
loot insert ~-4 ~-5 ~3 loot "rsf/the_end"
loot insert ~-4 ~-5 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 end_bricks []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 obsidian []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 purpur_slab []
fill ~-5 ~6 ~-4 ~5 ~7 ~4 purpur_block []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 purpur_slab []
setblock ~0 ~9 ~0 obsidian []
setblock ~0 ~10 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 purpur_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 purpur_pillar []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 purpur_pillar []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 purpur_slab []
setblock ~0 ~3 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~7 ~1 purpur_pillar []
setblock ~-7 ~8 ~1 obsidian []
setblock ~7 ~8 ~1 obsidian []
setblock ~-7 ~9 ~1 end_rod []
setblock ~7 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 1 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 2 bone 15
replaceitem block ~5 ~1 ~3 slot.container 3 shulker_shell 6
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 17
replaceitem block ~5 ~1 ~3 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 9 elytra 1
replaceitem block ~5 ~1 ~3 slot.container 10 diamond_sword 1
replaceitem block ~5 ~1 ~3 slot.container 11 end_rod 13
replaceitem block ~5 ~1 ~3 slot.container 12 chorus_fruit 22
replaceitem block ~5 ~1 ~3 slot.container 13 popped_chorus_fruit 12
replaceitem block ~5 ~1 ~3 slot.container 14 diamond 5
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 1 shulker_shell 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 20
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 4 dragon_breath 8
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 9 elytra 1
replaceitem block ~-5 ~1 ~4 slot.container 10 diamond_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 11 end_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 12 chorus_fruit 20
replaceitem block ~-5 ~1 ~4 slot.container 13 popped_chorus_fruit 17
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond 10
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1

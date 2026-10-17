# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4185/4224 | 主题内编号: b089/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·四柱挑檐祈愿凉亭 (the_end_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 end_bricks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 end_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_stone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 obsidian []
setblock ~0 ~0 ~0 obsidian []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~6 ~3 end_bricks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 purpur_pillar []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 purpur_pillar []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 purpur_pillar []
fill ~4 ~1 ~3 ~4 ~6 ~3 purpur_pillar []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 purpur_slab []
fill ~-3 ~7 ~-2 ~3 ~8 ~2 purpur_block []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 purpur_slab []
setblock ~0 ~10 ~0 obsidian []
setblock ~0 ~11 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 purpur_block []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 purpur_pillar []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 purpur_pillar []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 purpur_slab []
setblock ~0 ~3 ~-5 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~-5 ~0 ~1 ~-5 ~8 ~1 purpur_pillar []
fill ~5 ~0 ~1 ~5 ~8 ~1 purpur_pillar []
setblock ~-5 ~9 ~1 obsidian []
setblock ~5 ~9 ~1 obsidian []
setblock ~-5 ~10 ~1 end_rod []
setblock ~5 ~10 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 end_rod []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 17
replaceitem block ~3 ~1 ~1 slot.container 1 phantom_membrane 8
replaceitem block ~3 ~1 ~1 slot.container 2 dragon_breath 5
replaceitem block ~3 ~1 ~1 slot.container 3 blaze_rod 8
replaceitem block ~3 ~1 ~1 slot.container 4 ghast_tear 7
replaceitem block ~3 ~1 ~1 slot.container 5 slime_ball 12
replaceitem block ~3 ~1 ~1 slot.container 9 iron_ingot 16
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 3
replaceitem block ~3 ~1 ~1 slot.container 11 elytra 1
replaceitem block ~3 ~1 ~1 slot.container 12 diamond_sword 1
replaceitem block ~3 ~1 ~1 slot.container 13 end_rod 11
replaceitem block ~3 ~1 ~1 slot.container 14 chorus_fruit 20
loot insert ~3 ~1 ~1 loot "rsf/the_end"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 dragon_breath 8
replaceitem block ~-3 ~1 ~2 slot.container 1 blaze_rod 11
replaceitem block ~-3 ~1 ~2 slot.container 2 ghast_tear 2
replaceitem block ~-3 ~1 ~2 slot.container 3 slime_ball 7
replaceitem block ~-3 ~1 ~2 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~2 slot.container 5 shulker_shell 9
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 14
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~-3 ~1 ~2 slot.container 11 elytra 1
replaceitem block ~-3 ~1 ~2 slot.container 12 diamond_sword 1
replaceitem block ~-3 ~1 ~2 slot.container 13 end_rod 9
replaceitem block ~-3 ~1 ~2 slot.container 14 chorus_fruit 18
loot insert ~-3 ~1 ~2 loot "rsf/the_end"
loot insert ~-3 ~1 ~2 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1

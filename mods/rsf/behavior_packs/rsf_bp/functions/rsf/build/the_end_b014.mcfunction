# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4110/4224 | 主题内编号: b014/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·暗渠蓄水池秘境地牢 (the_end_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 6格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 purpur_block [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 purpur_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 obsidian []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

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
fill ~-6 ~1 ~-5 ~6 ~4 ~5 purpur_block []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~4 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 end_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 purpur_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~4 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x8x4) ---
fill ~-7 ~0 ~2 ~-7 ~8 ~2 purpur_pillar []
fill ~7 ~0 ~2 ~7 ~8 ~2 purpur_pillar []
setblock ~-7 ~9 ~2 obsidian []
setblock ~7 ~9 ~2 obsidian []
setblock ~-7 ~10 ~2 end_rod []
setblock ~7 ~10 ~2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 end_rod []
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
replaceitem block ~-5 ~1 ~3 slot.container 9 chorus_fruit 17
replaceitem block ~-5 ~1 ~3 slot.container 10 popped_chorus_fruit 14
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond 7
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 10
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 15
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 16
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1

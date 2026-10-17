# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4116/4224 | 主题内编号: b020/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·重甲防爆金库房间 (the_end_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 end_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 end_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_stone []
setblock ~0 ~0 ~0 emerald_block []

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

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 end_bricks []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~7 ~-3 obsidian []
setblock ~-5 ~8 ~-4 end_rod []
fill ~-5 ~1 ~3 ~-4 ~7 ~4 obsidian []
setblock ~-5 ~8 ~3 end_rod []
fill ~4 ~1 ~-4 ~5 ~7 ~-3 obsidian []
setblock ~4 ~8 ~-4 end_rod []
fill ~4 ~1 ~3 ~5 ~7 ~4 obsidian []
setblock ~4 ~8 ~3 end_rod []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 obsidian []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 cobblestone_wall []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 purpur_pillar []
setblock ~-5 ~7 ~-4 end_rod []
setblock ~-5 ~6 ~4 purpur_pillar []
setblock ~-5 ~7 ~4 end_rod []
setblock ~5 ~6 ~-4 purpur_pillar []
setblock ~5 ~7 ~-4 end_rod []
setblock ~5 ~6 ~4 purpur_pillar []
setblock ~5 ~7 ~4 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~4 ~-2 purpur_pillar []
fill ~-6 ~0 ~2 ~-6 ~4 ~2 purpur_pillar []
fill ~6 ~0 ~-2 ~6 ~4 ~-2 purpur_pillar []
fill ~6 ~0 ~2 ~6 ~4 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-6 ~0 ~-1 ~-6 ~9 ~-1 purpur_pillar []
fill ~6 ~0 ~-1 ~6 ~9 ~-1 purpur_pillar []
setblock ~-6 ~10 ~-1 obsidian []
setblock ~6 ~10 ~-1 obsidian []
setblock ~-6 ~11 ~-1 end_rod []
setblock ~6 ~11 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 2 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 15
replaceitem block ~-4 ~1 ~2 slot.container 4 shulker_shell 6
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 17
replaceitem block ~-4 ~1 ~2 slot.container 9 diamond_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 10 end_rod 9
replaceitem block ~-4 ~1 ~2 slot.container 11 chorus_fruit 18
replaceitem block ~-4 ~1 ~2 slot.container 12 popped_chorus_fruit 15
replaceitem block ~-4 ~1 ~2 slot.container 13 diamond 8
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 11
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4123/4224 | 主题内编号: b027/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双子连廊警戒塔楼 (the_end_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 obsidian [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 obsidian [] replace water
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 purpur_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 end_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 purpur_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 obsidian []
fill ~2 ~1 ~-3 ~6 ~9 ~3 obsidian []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 purpur_block []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-3 ~6 ~8 ~3 purpur_block []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 cobblestone_wall []
fill ~-5 ~9 ~-2 ~5 ~9 ~2 air []
setblock ~-6 ~9 ~-3 purpur_pillar []
setblock ~-6 ~10 ~-3 end_rod []
setblock ~-6 ~9 ~3 purpur_pillar []
setblock ~-6 ~10 ~3 end_rod []
setblock ~6 ~9 ~-3 purpur_pillar []
setblock ~6 ~10 ~-3 end_rod []
setblock ~6 ~9 ~3 purpur_pillar []
setblock ~6 ~10 ~3 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~3 ~-7 purpur_pillar []
setblock ~-9 ~4 ~-7 end_rod []
fill ~-9 ~0 ~7 ~-9 ~3 ~7 purpur_pillar []
setblock ~-9 ~4 ~7 end_rod []
fill ~9 ~0 ~-7 ~9 ~3 ~-7 purpur_pillar []
setblock ~9 ~4 ~-7 end_rod []
fill ~9 ~0 ~7 ~9 ~3 ~7 purpur_pillar []
setblock ~9 ~4 ~7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x4x2) ---
fill ~-7 ~0 ~-1 ~-7 ~6 ~-1 purpur_pillar []
fill ~7 ~0 ~-1 ~7 ~6 ~-1 purpur_pillar []
setblock ~-7 ~7 ~-1 obsidian []
setblock ~7 ~7 ~-1 obsidian []
setblock ~-7 ~8 ~-1 end_rod []
setblock ~7 ~8 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 end_rod []
fill ~-6 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 dragon_breath 5
replaceitem block ~5 ~1 ~1 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~1 slot.container 2 ghast_tear 7
replaceitem block ~5 ~1 ~1 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~1 slot.container 4 bone 15
replaceitem block ~5 ~1 ~1 slot.container 5 shulker_shell 6
replaceitem block ~5 ~1 ~1 slot.container 9 end_rod 8
replaceitem block ~5 ~1 ~1 slot.container 10 chorus_fruit 17
replaceitem block ~5 ~1 ~1 slot.container 11 popped_chorus_fruit 14
replaceitem block ~5 ~1 ~1 slot.container 12 diamond 7
replaceitem block ~5 ~1 ~1 slot.container 13 emerald 10
replaceitem block ~5 ~1 ~1 slot.container 14 gold_ingot 15
loot insert ~5 ~1 ~1 loot "rsf/the_end"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ghast_tear 2
replaceitem block ~-5 ~1 ~2 slot.container 1 slime_ball 7
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~2 slot.container 3 shulker_shell 9
replaceitem block ~-5 ~1 ~2 slot.container 4 ender_pearl 20
replaceitem block ~-5 ~1 ~2 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~2 slot.container 9 end_rod 13
replaceitem block ~-5 ~1 ~2 slot.container 10 chorus_fruit 22
replaceitem block ~-5 ~1 ~2 slot.container 11 popped_chorus_fruit 12
replaceitem block ~-5 ~1 ~2 slot.container 12 diamond 5
replaceitem block ~-5 ~1 ~2 slot.container 13 emerald 8
replaceitem block ~-5 ~1 ~2 slot.container 14 gold_ingot 13
loot insert ~-5 ~1 ~2 loot "rsf/the_end"
loot insert ~-5 ~1 ~2 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1

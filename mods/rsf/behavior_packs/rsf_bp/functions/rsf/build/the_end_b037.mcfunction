# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4133/4224 | 主题内编号: b037/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·环廊聖柱纪念碑 (the_end_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_stone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 purpur_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 obsidian []
setblock ~0 ~-5 ~0 end_rod []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 ghast_tear 4
replaceitem block ~4 ~-2 ~0 slot.container 1 slime_ball 9
replaceitem block ~4 ~-2 ~0 slot.container 2 bone 12
replaceitem block ~4 ~-2 ~0 slot.container 3 shulker_shell 11
replaceitem block ~4 ~-2 ~0 slot.container 4 ender_pearl 22
replaceitem block ~4 ~-2 ~0 slot.container 5 phantom_membrane 13
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 11
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 5
replaceitem block ~4 ~-2 ~0 slot.container 11 elytra 1
replaceitem block ~4 ~-2 ~0 slot.container 12 diamond_sword 1
replaceitem block ~4 ~-2 ~0 slot.container 13 end_rod 13
replaceitem block ~4 ~-2 ~0 slot.container 14 chorus_fruit 22
loot insert ~4 ~-2 ~0 loot "rsf/the_end"
loot insert ~4 ~-2 ~0 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 purpur_block []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 purpur_pillar []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 purpur_pillar []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 purpur_pillar []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 purpur_pillar []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 purpur_pillar []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 purpur_pillar []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 purpur_pillar []
fill ~0 ~1 ~5 ~0 ~6 ~5 purpur_pillar []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 purpur_pillar []
fill ~2 ~1 ~5 ~2 ~6 ~5 purpur_pillar []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 purpur_pillar []
fill ~4 ~1 ~5 ~4 ~6 ~5 purpur_pillar []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 purpur_pillar []
fill ~6 ~1 ~5 ~6 ~6 ~5 purpur_pillar []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 purpur_pillar []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 purpur_pillar []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 purpur_pillar []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 purpur_pillar []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 purpur_pillar []
fill ~6 ~1 ~1 ~6 ~6 ~1 purpur_pillar []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 purpur_pillar []
fill ~6 ~1 ~3 ~6 ~6 ~3 purpur_pillar []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 purpur_pillar []
setblock ~-6 ~10 ~-5 end_rod []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 purpur_pillar []
setblock ~-6 ~10 ~5 end_rod []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 purpur_pillar []
setblock ~6 ~10 ~-5 end_rod []
fill ~6 ~7 ~5 ~6 ~9 ~5 purpur_pillar []
setblock ~6 ~10 ~5 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~4 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~0 ~-7 ~6 ~0 purpur_pillar []
fill ~7 ~0 ~0 ~7 ~6 ~0 purpur_pillar []
setblock ~-7 ~7 ~0 obsidian []
setblock ~7 ~7 ~0 obsidian []
setblock ~-7 ~8 ~0 end_rod []
setblock ~7 ~8 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 end_rod []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 1 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 2 bone 15
replaceitem block ~5 ~1 ~3 slot.container 3 shulker_shell 6
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 17
replaceitem block ~5 ~1 ~3 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 9 end_rod 11
replaceitem block ~5 ~1 ~3 slot.container 10 chorus_fruit 20
replaceitem block ~5 ~1 ~3 slot.container 11 popped_chorus_fruit 17
replaceitem block ~5 ~1 ~3 slot.container 12 diamond 10
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 6
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 11
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 1 shulker_shell 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 20
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 4 dragon_breath 8
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 9 end_rod 9
replaceitem block ~-5 ~1 ~4 slot.container 10 chorus_fruit 18
replaceitem block ~-5 ~1 ~4 slot.container 11 popped_chorus_fruit 15
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 11
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 16
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1
summon shulker ~0 ~-2 ~0

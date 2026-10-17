# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4213/4224 | 主题内编号: b117/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·环柱生态标本采集馆 (the_end_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
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
replaceitem block ~4 ~-2 ~3 slot.container 0 ender_pearl 22
replaceitem block ~4 ~-2 ~3 slot.container 1 phantom_membrane 13
replaceitem block ~4 ~-2 ~3 slot.container 2 dragon_breath 2
replaceitem block ~4 ~-2 ~3 slot.container 3 blaze_rod 5
replaceitem block ~4 ~-2 ~3 slot.container 4 ghast_tear 4
replaceitem block ~4 ~-2 ~3 slot.container 5 slime_ball 9
replaceitem block ~4 ~-2 ~3 slot.container 9 emerald 8
replaceitem block ~4 ~-2 ~3 slot.container 10 gold_ingot 13
replaceitem block ~4 ~-2 ~3 slot.container 11 iron_ingot 14
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 8
replaceitem block ~4 ~-2 ~3 slot.container 13 elytra 1
replaceitem block ~4 ~-2 ~3 slot.container 14 diamond_sword 1
loot insert ~4 ~-2 ~3 loot "rsf/the_end"
loot insert ~4 ~-2 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 purpur_block []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 purpur_pillar []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 purpur_pillar []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 purpur_pillar []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 purpur_pillar []
fill ~-2 ~1 ~-5 ~-2 ~5 ~-5 purpur_pillar []
fill ~-2 ~1 ~5 ~-2 ~5 ~5 purpur_pillar []
fill ~0 ~1 ~-5 ~0 ~5 ~-5 purpur_pillar []
fill ~0 ~1 ~5 ~0 ~5 ~5 purpur_pillar []
fill ~2 ~1 ~-5 ~2 ~5 ~-5 purpur_pillar []
fill ~2 ~1 ~5 ~2 ~5 ~5 purpur_pillar []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 purpur_pillar []
fill ~4 ~1 ~5 ~4 ~5 ~5 purpur_pillar []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 purpur_pillar []
fill ~6 ~1 ~5 ~6 ~5 ~5 purpur_pillar []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 purpur_pillar []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 purpur_pillar []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 purpur_pillar []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 purpur_pillar []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 purpur_pillar []
fill ~6 ~1 ~1 ~6 ~5 ~1 purpur_pillar []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 purpur_pillar []
fill ~6 ~1 ~3 ~6 ~5 ~3 purpur_pillar []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 purpur_block []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 obsidian []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~0 ~-7 ~6 ~0 purpur_pillar []
fill ~7 ~0 ~0 ~7 ~6 ~0 purpur_pillar []
setblock ~-7 ~7 ~0 obsidian []
setblock ~7 ~7 ~0 obsidian []
setblock ~-7 ~8 ~0 end_rod []
setblock ~7 ~8 ~0 end_rod []

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
replaceitem block ~5 ~1 ~3 slot.container 9 end_rod 14
replaceitem block ~5 ~1 ~3 slot.container 10 chorus_fruit 16
replaceitem block ~5 ~1 ~3 slot.container 11 popped_chorus_fruit 13
replaceitem block ~5 ~1 ~3 slot.container 12 diamond 6
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~3 slot.container 14 gold_ingot 14
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 1 shulker_shell 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 20
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 4 dragon_breath 8
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 9 end_rod 12
replaceitem block ~-5 ~1 ~4 slot.container 10 chorus_fruit 21
replaceitem block ~-5 ~1 ~4 slot.container 11 popped_chorus_fruit 18
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 4
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 7
replaceitem block ~-5 ~1 ~4 slot.container 14 gold_ingot 12
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1

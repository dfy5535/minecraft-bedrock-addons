# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4219/4224 | 主题内编号: b123/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·四角塔楼领主城堡复合体 (the_end_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 obsidian [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 obsidian [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 end_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 obsidian []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 end_rod []
setblock ~5 ~-5 ~-4 end_rod []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 ghast_tear 4
replaceitem block ~5 ~-3 ~4 slot.container 1 slime_ball 9
replaceitem block ~5 ~-3 ~4 slot.container 2 bone 12
replaceitem block ~5 ~-3 ~4 slot.container 3 shulker_shell 11
replaceitem block ~5 ~-3 ~4 slot.container 4 ender_pearl 22
replaceitem block ~5 ~-3 ~4 slot.container 5 phantom_membrane 13
replaceitem block ~5 ~-3 ~4 slot.container 9 end_rod 8
replaceitem block ~5 ~-3 ~4 slot.container 10 chorus_fruit 17
replaceitem block ~5 ~-3 ~4 slot.container 11 popped_chorus_fruit 14
replaceitem block ~5 ~-3 ~4 slot.container 12 diamond 7
replaceitem block ~5 ~-3 ~4 slot.container 13 emerald 10
replaceitem block ~5 ~-3 ~4 slot.container 14 gold_ingot 15
loot insert ~5 ~-3 ~4 loot "rsf/the_end"
loot insert ~5 ~-3 ~4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 obsidian []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 purpur_block []
setblock ~-7 ~10 ~-6 end_rod []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 purpur_block []
setblock ~-7 ~10 ~5 end_rod []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 purpur_block []
setblock ~6 ~10 ~-6 end_rod []
fill ~6 ~1 ~5 ~7 ~9 ~6 purpur_block []
setblock ~6 ~10 ~5 end_rod []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 purpur_block []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 purpur_pillar []
setblock ~-7 ~9 ~-6 end_rod []
setblock ~-7 ~8 ~6 purpur_pillar []
setblock ~-7 ~9 ~6 end_rod []
setblock ~7 ~8 ~-6 purpur_pillar []
setblock ~7 ~9 ~-6 end_rod []
setblock ~7 ~8 ~6 purpur_pillar []
setblock ~7 ~9 ~6 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 end_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-3 ~-8 ~7 ~-3 purpur_pillar []
fill ~8 ~0 ~-3 ~8 ~7 ~-3 purpur_pillar []
setblock ~-8 ~8 ~-3 obsidian []
setblock ~8 ~8 ~-3 obsidian []
setblock ~-8 ~9 ~-3 end_rod []
setblock ~8 ~9 ~-3 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~8 ~0 end_rod []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 dragon_breath 5
replaceitem block ~6 ~1 ~4 slot.container 1 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 2 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 3 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 4 bone 15
replaceitem block ~6 ~1 ~4 slot.container 5 shulker_shell 6
replaceitem block ~6 ~1 ~4 slot.container 9 elytra 1
replaceitem block ~6 ~1 ~4 slot.container 10 diamond_sword 1
replaceitem block ~6 ~1 ~4 slot.container 11 end_rod 8
replaceitem block ~6 ~1 ~4 slot.container 12 chorus_fruit 17
replaceitem block ~6 ~1 ~4 slot.container 13 popped_chorus_fruit 14
replaceitem block ~6 ~1 ~4 slot.container 14 diamond 7
loot insert ~6 ~1 ~4 loot "rsf/the_end"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ghast_tear 2
replaceitem block ~-6 ~1 ~5 slot.container 1 slime_ball 7
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 10
replaceitem block ~-6 ~1 ~5 slot.container 3 shulker_shell 9
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 20
replaceitem block ~-6 ~1 ~5 slot.container 5 phantom_membrane 11
replaceitem block ~-6 ~1 ~5 slot.container 9 elytra 1
replaceitem block ~-6 ~1 ~5 slot.container 10 diamond_sword 1
replaceitem block ~-6 ~1 ~5 slot.container 11 end_rod 13
replaceitem block ~-6 ~1 ~5 slot.container 12 chorus_fruit 22
replaceitem block ~-6 ~1 ~5 slot.container 13 popped_chorus_fruit 12
replaceitem block ~-6 ~1 ~5 slot.container 14 diamond 5
loot insert ~-6 ~1 ~5 loot "rsf/the_end"
loot insert ~-6 ~1 ~5 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1

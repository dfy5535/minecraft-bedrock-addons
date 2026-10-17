# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4111/4224 | 主题内编号: b015/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·竖井阶梯深渊地牢 (the_end_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 obsidian [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 obsidian [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 obsidian []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 end_rod []
setblock ~3 ~-6 ~-2 end_rod []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 ender_pearl 22
replaceitem block ~3 ~-4 ~2 slot.container 1 phantom_membrane 13
replaceitem block ~3 ~-4 ~2 slot.container 2 dragon_breath 2
replaceitem block ~3 ~-4 ~2 slot.container 3 blaze_rod 5
replaceitem block ~3 ~-4 ~2 slot.container 4 ghast_tear 4
replaceitem block ~3 ~-4 ~2 slot.container 5 slime_ball 9
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 14
replaceitem block ~3 ~-4 ~2 slot.container 10 golden_apple 8
replaceitem block ~3 ~-4 ~2 slot.container 11 elytra 1
replaceitem block ~3 ~-4 ~2 slot.container 12 diamond_sword 1
replaceitem block ~3 ~-4 ~2 slot.container 13 end_rod 9
replaceitem block ~3 ~-4 ~2 slot.container 14 chorus_fruit 18
loot insert ~3 ~-4 ~2 loot "rsf/the_end"
loot insert ~3 ~-4 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 obsidian []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 purpur_block []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 end_bricks []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 purpur_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 obsidian []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 cobblestone_wall []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 purpur_pillar []
setblock ~-6 ~8 ~-4 end_rod []
setblock ~-6 ~7 ~4 purpur_pillar []
setblock ~-6 ~8 ~4 end_rod []
setblock ~6 ~7 ~-4 purpur_pillar []
setblock ~6 ~8 ~-4 end_rod []
setblock ~6 ~7 ~4 purpur_pillar []
setblock ~6 ~8 ~4 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 purpur_pillar []
setblock ~-7 ~4 ~-6 end_rod []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 purpur_pillar []
setblock ~-7 ~4 ~6 end_rod []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 purpur_pillar []
setblock ~7 ~4 ~-6 end_rod []
fill ~7 ~0 ~6 ~7 ~3 ~6 purpur_pillar []
setblock ~7 ~4 ~6 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~-6 ~0 ~-2 ~-6 ~9 ~-2 purpur_pillar []
fill ~6 ~0 ~-2 ~6 ~9 ~-2 purpur_pillar []
setblock ~-6 ~10 ~-2 obsidian []
setblock ~6 ~10 ~-2 obsidian []
setblock ~-6 ~11 ~-2 end_rod []
setblock ~6 ~11 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~0 ~1 ~0 diamond_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 end_rod []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 bone 15
replaceitem block ~4 ~1 ~2 slot.container 1 shulker_shell 6
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 17
replaceitem block ~4 ~1 ~2 slot.container 3 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 4 dragon_breath 5
replaceitem block ~4 ~1 ~2 slot.container 5 blaze_rod 8
replaceitem block ~4 ~1 ~2 slot.container 9 emerald 8
replaceitem block ~4 ~1 ~2 slot.container 10 gold_ingot 13
replaceitem block ~4 ~1 ~2 slot.container 11 iron_ingot 14
replaceitem block ~4 ~1 ~2 slot.container 12 golden_apple 8
replaceitem block ~4 ~1 ~2 slot.container 13 elytra 1
replaceitem block ~4 ~1 ~2 slot.container 14 diamond_sword 1
loot insert ~4 ~1 ~2 loot "rsf/the_end"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 20
replaceitem block ~-4 ~1 ~3 slot.container 1 phantom_membrane 11
replaceitem block ~-4 ~1 ~3 slot.container 2 dragon_breath 8
replaceitem block ~-4 ~1 ~3 slot.container 3 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 4 ghast_tear 2
replaceitem block ~-4 ~1 ~3 slot.container 5 slime_ball 7
replaceitem block ~-4 ~1 ~3 slot.container 9 emerald 6
replaceitem block ~-4 ~1 ~3 slot.container 10 gold_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~-4 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 13 elytra 1
replaceitem block ~-4 ~1 ~3 slot.container 14 diamond_sword 1
loot insert ~-4 ~1 ~3 loot "rsf/the_end"
loot insert ~-4 ~1 ~3 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1

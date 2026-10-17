# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4198/4224 | 主题内编号: b102/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双子箭塔联防碉楼 (the_end_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 purpur_block [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 purpur_block [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 purpur_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 obsidian []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 purpur_block []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 end_rod []
setblock ~5 ~-5 ~-2 end_rod []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 shulker_shell 11
replaceitem block ~5 ~-3 ~2 slot.container 1 ender_pearl 22
replaceitem block ~5 ~-3 ~2 slot.container 2 phantom_membrane 13
replaceitem block ~5 ~-3 ~2 slot.container 3 dragon_breath 2
replaceitem block ~5 ~-3 ~2 slot.container 4 blaze_rod 5
replaceitem block ~5 ~-3 ~2 slot.container 5 ghast_tear 4
replaceitem block ~5 ~-3 ~2 slot.container 9 golden_apple 3
replaceitem block ~5 ~-3 ~2 slot.container 10 elytra 1
replaceitem block ~5 ~-3 ~2 slot.container 11 diamond_sword 1
replaceitem block ~5 ~-3 ~2 slot.container 12 end_rod 11
replaceitem block ~5 ~-3 ~2 slot.container 13 chorus_fruit 20
replaceitem block ~5 ~-3 ~2 slot.container 14 popped_chorus_fruit 17
loot insert ~5 ~-3 ~2 loot "rsf/the_end"
loot insert ~5 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 purpur_block []
fill ~2 ~1 ~-4 ~7 ~8 ~4 purpur_block []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 end_bricks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-4 ~-7 ~8 ~-4 purpur_pillar []
setblock ~-7 ~9 ~-4 end_rod []
fill ~-7 ~6 ~4 ~-7 ~8 ~4 purpur_pillar []
setblock ~-7 ~9 ~4 end_rod []
fill ~7 ~6 ~-4 ~7 ~8 ~-4 purpur_pillar []
setblock ~7 ~9 ~-4 end_rod []
fill ~7 ~6 ~4 ~7 ~8 ~4 purpur_pillar []
setblock ~7 ~9 ~4 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~6 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x5x2) ---
fill ~-8 ~0 ~1 ~-8 ~6 ~1 purpur_pillar []
fill ~8 ~0 ~1 ~8 ~6 ~1 purpur_pillar []
setblock ~-8 ~7 ~1 obsidian []
setblock ~8 ~7 ~1 obsidian []
setblock ~-8 ~8 ~1 end_rod []
setblock ~8 ~8 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 1 bone 15
replaceitem block ~-6 ~1 ~2 slot.container 2 shulker_shell 6
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 17
replaceitem block ~-6 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 5 dragon_breath 5
replaceitem block ~-6 ~1 ~2 slot.container 9 gold_ingot 15
replaceitem block ~-6 ~1 ~2 slot.container 10 iron_ingot 16
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~-6 ~1 ~2 slot.container 12 elytra 1
replaceitem block ~-6 ~1 ~2 slot.container 13 diamond_sword 1
replaceitem block ~-6 ~1 ~2 slot.container 14 end_rod 11
loot insert ~-6 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1

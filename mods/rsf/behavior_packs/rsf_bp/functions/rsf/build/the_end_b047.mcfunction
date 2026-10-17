# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4143/4224 | 主题内编号: b047/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·深渊跨桥决斗长台 (the_end_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 obsidian [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 obsidian [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 purpur_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 end_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 purpur_block []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 end_rod []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 ender_pearl 22
replaceitem block ~-5 ~-3 ~2 slot.container 1 phantom_membrane 13
replaceitem block ~-5 ~-3 ~2 slot.container 2 dragon_breath 2
replaceitem block ~-5 ~-3 ~2 slot.container 3 blaze_rod 5
replaceitem block ~-5 ~-3 ~2 slot.container 4 ghast_tear 4
replaceitem block ~-5 ~-3 ~2 slot.container 5 slime_ball 9
replaceitem block ~-5 ~-3 ~2 slot.container 9 iron_ingot 10
replaceitem block ~-5 ~-3 ~2 slot.container 10 golden_apple 4
replaceitem block ~-5 ~-3 ~2 slot.container 11 elytra 1
replaceitem block ~-5 ~-3 ~2 slot.container 12 diamond_sword 1
replaceitem block ~-5 ~-3 ~2 slot.container 13 end_rod 12
replaceitem block ~-5 ~-3 ~2 slot.container 14 chorus_fruit 21
loot insert ~-5 ~-3 ~2 loot "rsf/the_end"
loot insert ~-5 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~5 ~4 obsidian []
fill ~-6 ~1 ~-3 ~6 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-4 ~-7 ~7 ~-4 purpur_pillar []
setblock ~-7 ~8 ~-4 end_rod []
fill ~-7 ~5 ~4 ~-7 ~7 ~4 purpur_pillar []
setblock ~-7 ~8 ~4 end_rod []
fill ~7 ~5 ~-4 ~7 ~7 ~-4 purpur_pillar []
setblock ~7 ~8 ~-4 end_rod []
fill ~7 ~5 ~4 ~7 ~7 ~4 purpur_pillar []
setblock ~7 ~8 ~4 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~4 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 purpur_pillar []
setblock ~-8 ~7 ~-2 obsidian []
setblock ~8 ~7 ~-2 obsidian []
setblock ~-8 ~8 ~-2 end_rod []
setblock ~8 ~8 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 bone 15
replaceitem block ~6 ~1 ~2 slot.container 1 shulker_shell 6
replaceitem block ~6 ~1 ~2 slot.container 2 ender_pearl 17
replaceitem block ~6 ~1 ~2 slot.container 3 phantom_membrane 8
replaceitem block ~6 ~1 ~2 slot.container 4 dragon_breath 5
replaceitem block ~6 ~1 ~2 slot.container 5 blaze_rod 8
replaceitem block ~6 ~1 ~2 slot.container 9 end_rod 14
replaceitem block ~6 ~1 ~2 slot.container 10 chorus_fruit 16
replaceitem block ~6 ~1 ~2 slot.container 11 popped_chorus_fruit 13
replaceitem block ~6 ~1 ~2 slot.container 12 diamond 6
replaceitem block ~6 ~1 ~2 slot.container 13 emerald 9
replaceitem block ~6 ~1 ~2 slot.container 14 gold_ingot 14
loot insert ~6 ~1 ~2 loot "rsf/the_end"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ender_pearl 20
replaceitem block ~-6 ~1 ~3 slot.container 1 phantom_membrane 11
replaceitem block ~-6 ~1 ~3 slot.container 2 dragon_breath 8
replaceitem block ~-6 ~1 ~3 slot.container 3 blaze_rod 11
replaceitem block ~-6 ~1 ~3 slot.container 4 ghast_tear 2
replaceitem block ~-6 ~1 ~3 slot.container 5 slime_ball 7
replaceitem block ~-6 ~1 ~3 slot.container 9 end_rod 12
replaceitem block ~-6 ~1 ~3 slot.container 10 chorus_fruit 21
replaceitem block ~-6 ~1 ~3 slot.container 11 popped_chorus_fruit 18
replaceitem block ~-6 ~1 ~3 slot.container 12 diamond 4
replaceitem block ~-6 ~1 ~3 slot.container 13 emerald 7
replaceitem block ~-6 ~1 ~3 slot.container 14 gold_ingot 12
loot insert ~-6 ~1 ~3 loot "rsf/the_end"
loot insert ~-6 ~1 ~3 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4215/4224 | 主题内编号: b119/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·半地下恒温洞穴苗圃 (the_end_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 obsidian [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 obsidian [] replace water
fill ~-6 ~1 ~-6 ~6 ~6 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 purpur_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 end_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 purpur_block []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 end_rod []
setblock ~-3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~3 slot.container 0 ender_pearl 22
replaceitem block ~-3 ~-3 ~3 slot.container 1 phantom_membrane 13
replaceitem block ~-3 ~-3 ~3 slot.container 2 dragon_breath 2
replaceitem block ~-3 ~-3 ~3 slot.container 3 blaze_rod 5
replaceitem block ~-3 ~-3 ~3 slot.container 4 ghast_tear 4
replaceitem block ~-3 ~-3 ~3 slot.container 5 slime_ball 9
replaceitem block ~-3 ~-3 ~3 slot.container 9 popped_chorus_fruit 14
replaceitem block ~-3 ~-3 ~3 slot.container 10 diamond 7
replaceitem block ~-3 ~-3 ~3 slot.container 11 emerald 10
replaceitem block ~-3 ~-3 ~3 slot.container 12 gold_ingot 15
replaceitem block ~-3 ~-3 ~3 slot.container 13 iron_ingot 16
replaceitem block ~-3 ~-3 ~3 slot.container 14 golden_apple 3
loot insert ~-3 ~-3 ~3 loot "rsf/the_end"
loot insert ~-3 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 obsidian []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 purpur_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 purpur_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~4 ~-5 ~5 ~4 ~5 purpur_block []
fill ~-4 ~5 ~-4 ~4 ~6 ~4 glass []
fill ~-3 ~5 ~-3 ~3 ~5 ~3 air []
setblock ~0 ~6 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~4 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~-6 ~0 ~2 ~-6 ~8 ~2 purpur_pillar []
fill ~6 ~0 ~2 ~6 ~8 ~2 purpur_pillar []
setblock ~-6 ~9 ~2 obsidian []
setblock ~6 ~9 ~2 obsidian []
setblock ~-6 ~10 ~2 end_rod []
setblock ~6 ~10 ~2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~3 ~0 end_rod []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~-3 ~1 ~3 anvil []
setblock ~3 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 15
replaceitem block ~4 ~1 ~3 slot.container 1 shulker_shell 6
replaceitem block ~4 ~1 ~3 slot.container 2 ender_pearl 17
replaceitem block ~4 ~1 ~3 slot.container 3 phantom_membrane 8
replaceitem block ~4 ~1 ~3 slot.container 4 dragon_breath 5
replaceitem block ~4 ~1 ~3 slot.container 5 blaze_rod 8
replaceitem block ~4 ~1 ~3 slot.container 9 iron_ingot 11
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 5
replaceitem block ~4 ~1 ~3 slot.container 11 elytra 1
replaceitem block ~4 ~1 ~3 slot.container 12 diamond_sword 1
replaceitem block ~4 ~1 ~3 slot.container 13 end_rod 13
replaceitem block ~4 ~1 ~3 slot.container 14 chorus_fruit 22
loot insert ~4 ~1 ~3 loot "rsf/the_end"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ender_pearl 20
replaceitem block ~-4 ~1 ~4 slot.container 1 phantom_membrane 11
replaceitem block ~-4 ~1 ~4 slot.container 2 dragon_breath 8
replaceitem block ~-4 ~1 ~4 slot.container 3 blaze_rod 11
replaceitem block ~-4 ~1 ~4 slot.container 4 ghast_tear 2
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 7
replaceitem block ~-4 ~1 ~4 slot.container 9 iron_ingot 16
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 11 elytra 1
replaceitem block ~-4 ~1 ~4 slot.container 12 diamond_sword 1
replaceitem block ~-4 ~1 ~4 slot.container 13 end_rod 11
replaceitem block ~-4 ~1 ~4 slot.container 14 chorus_fruit 20
loot insert ~-4 ~1 ~4 loot "rsf/the_end"
loot insert ~-4 ~1 ~4 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

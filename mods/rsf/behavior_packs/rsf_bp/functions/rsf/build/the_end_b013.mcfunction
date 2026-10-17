# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4109/4224 | 主题内编号: b013/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·地底熔炉苦工地牢 (the_end_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 end_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 end_bricks [] replace water
fill ~-7 ~1 ~-7 ~7 ~7 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 purpur_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 end_stone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 end_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 end_rod []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 ender_pearl 22
replaceitem block ~4 ~-3 ~4 slot.container 1 phantom_membrane 13
replaceitem block ~4 ~-3 ~4 slot.container 2 dragon_breath 2
replaceitem block ~4 ~-3 ~4 slot.container 3 blaze_rod 5
replaceitem block ~4 ~-3 ~4 slot.container 4 ghast_tear 4
replaceitem block ~4 ~-3 ~4 slot.container 5 slime_ball 9
replaceitem block ~4 ~-3 ~4 slot.container 9 emerald 12
replaceitem block ~4 ~-3 ~4 slot.container 10 gold_ingot 10
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 11
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 5
replaceitem block ~4 ~-3 ~4 slot.container 13 elytra 1
replaceitem block ~4 ~-3 ~4 slot.container 14 diamond_sword 1
loot insert ~4 ~-3 ~4 loot "rsf/the_end"
loot insert ~4 ~-3 ~4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 end_bricks []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 purpur_pillar []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 purpur_pillar []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 purpur_pillar []
fill ~6 ~1 ~6 ~6 ~5 ~6 purpur_pillar []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 purpur_block []
fill ~-6 ~6 ~-6 ~6 ~6 ~6 cobblestone_wall []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 air []
setblock ~-6 ~6 ~-6 purpur_pillar []
setblock ~-6 ~7 ~-6 end_rod []
setblock ~-6 ~6 ~6 purpur_pillar []
setblock ~-6 ~7 ~6 end_rod []
setblock ~6 ~6 ~-6 purpur_pillar []
setblock ~6 ~7 ~-6 end_rod []
setblock ~6 ~6 ~6 purpur_pillar []
setblock ~6 ~7 ~6 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~7 ~-2 purpur_pillar []
fill ~-5 ~0 ~2 ~-5 ~7 ~2 purpur_pillar []
fill ~5 ~0 ~-2 ~5 ~7 ~-2 purpur_pillar []
fill ~5 ~0 ~2 ~5 ~7 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~7 ~1 purpur_pillar []
setblock ~-7 ~8 ~1 obsidian []
setblock ~7 ~8 ~1 obsidian []
setblock ~-7 ~9 ~1 end_rod []
setblock ~7 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ghast_tear 7
replaceitem block ~5 ~1 ~4 slot.container 1 slime_ball 12
replaceitem block ~5 ~1 ~4 slot.container 2 bone 15
replaceitem block ~5 ~1 ~4 slot.container 3 shulker_shell 6
replaceitem block ~5 ~1 ~4 slot.container 4 ender_pearl 17
replaceitem block ~5 ~1 ~4 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~4 slot.container 9 elytra 1
replaceitem block ~5 ~1 ~4 slot.container 10 diamond_sword 1
replaceitem block ~5 ~1 ~4 slot.container 11 end_rod 10
replaceitem block ~5 ~1 ~4 slot.container 12 chorus_fruit 19
replaceitem block ~5 ~1 ~4 slot.container 13 popped_chorus_fruit 16
replaceitem block ~5 ~1 ~4 slot.container 14 diamond 9
loot insert ~5 ~1 ~4 loot "rsf/the_end"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~5 slot.container 1 shulker_shell 9
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 20
replaceitem block ~-5 ~1 ~5 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~5 slot.container 4 dragon_breath 8
replaceitem block ~-5 ~1 ~5 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~5 slot.container 9 elytra 1
replaceitem block ~-5 ~1 ~5 slot.container 10 diamond_sword 1
replaceitem block ~-5 ~1 ~5 slot.container 11 end_rod 8
replaceitem block ~-5 ~1 ~5 slot.container 12 chorus_fruit 17
replaceitem block ~-5 ~1 ~5 slot.container 13 popped_chorus_fruit 14
replaceitem block ~-5 ~1 ~5 slot.container 14 diamond 7
loot insert ~-5 ~1 ~5 loot "rsf/the_end"
loot insert ~-5 ~1 ~5 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1
summon shulker ~0 ~-3 ~0

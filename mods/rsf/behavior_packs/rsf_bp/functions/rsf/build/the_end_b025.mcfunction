# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4121/4224 | 主题内编号: b025/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·雉堞女墙四方哨塔 (the_end_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 end_bricks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 end_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~11 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_stone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 purpur_block []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~9 ~3 end_bricks []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 purpur_pillar []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 purpur_pillar []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 purpur_pillar []
fill ~4 ~1 ~3 ~4 ~9 ~3 purpur_pillar []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~9 ~-3 ~4 ~9 ~3 purpur_block []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 cobblestone_wall []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~-4 ~10 ~-3 purpur_pillar []
setblock ~-4 ~11 ~-3 end_rod []
setblock ~-4 ~10 ~3 purpur_pillar []
setblock ~-4 ~11 ~3 end_rod []
setblock ~4 ~10 ~-3 purpur_pillar []
setblock ~4 ~11 ~-3 end_rod []
setblock ~4 ~10 ~3 purpur_pillar []
setblock ~4 ~11 ~3 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 purpur_pillar []
setblock ~-7 ~4 ~-6 end_rod []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 purpur_pillar []
setblock ~-7 ~4 ~6 end_rod []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 purpur_pillar []
setblock ~7 ~4 ~-6 end_rod []
fill ~7 ~0 ~6 ~7 ~3 ~6 purpur_pillar []
setblock ~7 ~4 ~6 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 5x5x5) ---
fill ~-5 ~0 ~0 ~-5 ~9 ~0 purpur_pillar []
fill ~5 ~0 ~0 ~5 ~9 ~0 purpur_pillar []
setblock ~-5 ~10 ~0 obsidian []
setblock ~5 ~10 ~0 obsidian []
setblock ~-5 ~11 ~0 end_rod []
setblock ~5 ~11 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 17
replaceitem block ~3 ~1 ~1 slot.container 1 phantom_membrane 8
replaceitem block ~3 ~1 ~1 slot.container 2 dragon_breath 5
replaceitem block ~3 ~1 ~1 slot.container 3 blaze_rod 8
replaceitem block ~3 ~1 ~1 slot.container 4 ghast_tear 7
replaceitem block ~3 ~1 ~1 slot.container 5 slime_ball 12
replaceitem block ~3 ~1 ~1 slot.container 9 emerald 11
replaceitem block ~3 ~1 ~1 slot.container 10 gold_ingot 16
replaceitem block ~3 ~1 ~1 slot.container 11 iron_ingot 10
replaceitem block ~3 ~1 ~1 slot.container 12 golden_apple 4
replaceitem block ~3 ~1 ~1 slot.container 13 elytra 1
replaceitem block ~3 ~1 ~1 slot.container 14 diamond_sword 1
loot insert ~3 ~1 ~1 loot "rsf/the_end"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 dragon_breath 8
replaceitem block ~-3 ~1 ~2 slot.container 1 blaze_rod 11
replaceitem block ~-3 ~1 ~2 slot.container 2 ghast_tear 2
replaceitem block ~-3 ~1 ~2 slot.container 3 slime_ball 7
replaceitem block ~-3 ~1 ~2 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~2 slot.container 5 shulker_shell 9
replaceitem block ~-3 ~1 ~2 slot.container 9 emerald 9
replaceitem block ~-3 ~1 ~2 slot.container 10 gold_ingot 14
replaceitem block ~-3 ~1 ~2 slot.container 11 iron_ingot 15
replaceitem block ~-3 ~1 ~2 slot.container 12 golden_apple 9
replaceitem block ~-3 ~1 ~2 slot.container 13 elytra 1
replaceitem block ~-3 ~1 ~2 slot.container 14 diamond_sword 1
loot insert ~-3 ~1 ~2 loot "rsf/the_end"
loot insert ~-3 ~1 ~2 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1
summon shulker ~0 ~2 ~0

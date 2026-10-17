# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4142/4224 | 主题内编号: b046/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·要塞校场比武演武台 (the_end_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 purpur_block [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 purpur_block [] replace water
fill ~-8 ~1 ~-7 ~8 ~7 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 obsidian []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 purpur_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 end_rod []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 bone 12
replaceitem block ~-3 ~-3 ~2 slot.container 1 shulker_shell 11
replaceitem block ~-3 ~-3 ~2 slot.container 2 ender_pearl 22
replaceitem block ~-3 ~-3 ~2 slot.container 3 phantom_membrane 13
replaceitem block ~-3 ~-3 ~2 slot.container 4 dragon_breath 2
replaceitem block ~-3 ~-3 ~2 slot.container 5 blaze_rod 5
replaceitem block ~-3 ~-3 ~2 slot.container 9 end_rod 8
replaceitem block ~-3 ~-3 ~2 slot.container 10 chorus_fruit 17
replaceitem block ~-3 ~-3 ~2 slot.container 11 popped_chorus_fruit 14
replaceitem block ~-3 ~-3 ~2 slot.container 12 diamond 7
replaceitem block ~-3 ~-3 ~2 slot.container 13 emerald 10
replaceitem block ~-3 ~-3 ~2 slot.container 14 gold_ingot 15
loot insert ~-3 ~-3 ~2 loot "rsf/the_end"
loot insert ~-3 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 purpur_block []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~7 ~-5 end_bricks []
setblock ~-7 ~8 ~-6 end_rod []
fill ~-7 ~1 ~5 ~-6 ~7 ~6 end_bricks []
setblock ~-7 ~8 ~5 end_rod []
fill ~6 ~1 ~-6 ~7 ~7 ~-5 end_bricks []
setblock ~6 ~8 ~-6 end_rod []
fill ~6 ~1 ~5 ~7 ~7 ~6 end_bricks []
setblock ~6 ~8 ~5 end_rod []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 end_bricks []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cobblestone_wall []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 purpur_pillar []
setblock ~-7 ~7 ~-6 end_rod []
setblock ~-7 ~6 ~6 purpur_pillar []
setblock ~-7 ~7 ~6 end_rod []
setblock ~7 ~6 ~-6 purpur_pillar []
setblock ~7 ~7 ~-6 end_rod []
setblock ~7 ~6 ~6 purpur_pillar []
setblock ~7 ~7 ~6 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~7 ~2 obsidian []
fill ~8 ~1 ~-1 ~9 ~6 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~8 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~-2 ~-8 ~10 ~-2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~10 ~-2 purpur_pillar []
setblock ~-8 ~11 ~-2 obsidian []
setblock ~8 ~11 ~-2 obsidian []
setblock ~-8 ~12 ~-2 end_rod []
setblock ~8 ~12 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 end_rod []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 slime_ball 12
replaceitem block ~-6 ~1 ~4 slot.container 1 bone 15
replaceitem block ~-6 ~1 ~4 slot.container 2 shulker_shell 6
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 17
replaceitem block ~-6 ~1 ~4 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 5 dragon_breath 5
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 10 elytra 1
replaceitem block ~-6 ~1 ~4 slot.container 11 diamond_sword 1
replaceitem block ~-6 ~1 ~4 slot.container 12 end_rod 9
replaceitem block ~-6 ~1 ~4 slot.container 13 chorus_fruit 18
replaceitem block ~-6 ~1 ~4 slot.container 14 popped_chorus_fruit 15
loot insert ~-6 ~1 ~4 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

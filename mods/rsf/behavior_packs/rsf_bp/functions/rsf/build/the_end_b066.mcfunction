# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4162/4224 | 主题内编号: b066/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·崩塌角楼古堡残垣 (the_end_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 purpur_block [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 purpur_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 obsidian []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 obsidian []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~-4 ~-5 ~-3 end_rod []
setblock ~4 ~-5 ~3 end_rod []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 dragon_breath 2
replaceitem block ~0 ~-3 ~3 slot.container 1 blaze_rod 5
replaceitem block ~0 ~-3 ~3 slot.container 2 ghast_tear 4
replaceitem block ~0 ~-3 ~3 slot.container 3 slime_ball 9
replaceitem block ~0 ~-3 ~3 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~3 slot.container 5 shulker_shell 11
replaceitem block ~0 ~-3 ~3 slot.container 9 emerald 8
replaceitem block ~0 ~-3 ~3 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_ingot 14
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_apple 8
replaceitem block ~0 ~-3 ~3 slot.container 13 elytra 1
replaceitem block ~0 ~-3 ~3 slot.container 14 diamond_sword 1
loot insert ~0 ~-3 ~3 loot "rsf/the_end"
loot insert ~0 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 purpur_block []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 end_bricks []
setblock ~-6 ~9 ~-5 end_rod []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 end_bricks []
setblock ~-6 ~9 ~4 end_rod []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 end_bricks []
setblock ~5 ~9 ~-5 end_rod []
fill ~5 ~1 ~4 ~6 ~8 ~5 end_bricks []
setblock ~5 ~9 ~4 end_rod []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 purpur_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 purpur_pillar []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 purpur_pillar []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 purpur_pillar []
fill ~7 ~0 ~2 ~7 ~5 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~-1 ~-7 ~10 ~-1 purpur_pillar []
fill ~7 ~0 ~-1 ~7 ~10 ~-1 purpur_pillar []
setblock ~-7 ~11 ~-1 obsidian []
setblock ~7 ~11 ~-1 obsidian []
setblock ~-7 ~12 ~-1 end_rod []
setblock ~7 ~12 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 1 dragon_breath 5
replaceitem block ~-5 ~1 ~3 slot.container 2 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 10 elytra 1
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 12 end_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 13 chorus_fruit 17
replaceitem block ~-5 ~1 ~3 slot.container 14 popped_chorus_fruit 14
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1

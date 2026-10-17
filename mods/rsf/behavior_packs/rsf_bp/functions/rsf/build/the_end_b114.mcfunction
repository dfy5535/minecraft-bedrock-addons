# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4210/4224 | 主题内编号: b114/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双联拱顶植物培育馆 (the_end_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 purpur_block [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 purpur_block [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 purpur_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 obsidian []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 end_bricks []
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

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 purpur_block []
fill ~2 ~1 ~-4 ~7 ~6 ~4 purpur_block []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 end_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~5 ~-4 ~7 ~5 ~4 end_bricks []
fill ~-6 ~6 ~-3 ~6 ~7 ~3 glass []
fill ~-5 ~6 ~-2 ~5 ~6 ~2 air []
setblock ~0 ~7 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 end_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x5x4) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 purpur_pillar []
fill ~8 ~0 ~1 ~8 ~8 ~1 purpur_pillar []
setblock ~-8 ~9 ~1 obsidian []
setblock ~8 ~9 ~1 obsidian []
setblock ~-8 ~10 ~1 end_rod []
setblock ~8 ~10 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 1 dragon_breath 5
replaceitem block ~-6 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-6 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-6 ~1 ~2 slot.container 4 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-6 ~1 ~2 slot.container 9 chorus_fruit 19
replaceitem block ~-6 ~1 ~2 slot.container 10 popped_chorus_fruit 16
replaceitem block ~-6 ~1 ~2 slot.container 11 diamond 9
replaceitem block ~-6 ~1 ~2 slot.container 12 emerald 12
replaceitem block ~-6 ~1 ~2 slot.container 13 gold_ingot 10
replaceitem block ~-6 ~1 ~2 slot.container 14 iron_ingot 11
loot insert ~-6 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1

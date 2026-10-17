# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4223/4224 | 主题内编号: b127/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·万神殿巨型穹顶与试炼宫 (the_end_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
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

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 obsidian []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~-5 ~-5 ~-4 end_rod []
setblock ~5 ~-5 ~4 end_rod []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~4 slot.container 1 shulker_shell 11
replaceitem block ~0 ~-3 ~4 slot.container 2 ender_pearl 22
replaceitem block ~0 ~-3 ~4 slot.container 3 phantom_membrane 13
replaceitem block ~0 ~-3 ~4 slot.container 4 dragon_breath 2
replaceitem block ~0 ~-3 ~4 slot.container 5 blaze_rod 5
replaceitem block ~0 ~-3 ~4 slot.container 9 popped_chorus_fruit 18
replaceitem block ~0 ~-3 ~4 slot.container 10 diamond 4
replaceitem block ~0 ~-3 ~4 slot.container 11 emerald 7
replaceitem block ~0 ~-3 ~4 slot.container 12 gold_ingot 12
replaceitem block ~0 ~-3 ~4 slot.container 13 iron_ingot 13
replaceitem block ~0 ~-3 ~4 slot.container 14 golden_apple 7
loot insert ~0 ~-3 ~4 loot "rsf/the_end"
loot insert ~0 ~-3 ~4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 purpur_block []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 purpur_pillar []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 purpur_pillar []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 purpur_pillar []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 purpur_pillar []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 purpur_pillar []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 purpur_pillar []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 purpur_pillar []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 purpur_pillar []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 purpur_pillar []
fill ~1 ~1 ~6 ~1 ~6 ~6 purpur_pillar []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 purpur_pillar []
fill ~3 ~1 ~6 ~3 ~6 ~6 purpur_pillar []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 purpur_pillar []
fill ~5 ~1 ~6 ~5 ~6 ~6 purpur_pillar []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 purpur_pillar []
fill ~7 ~1 ~6 ~7 ~6 ~6 purpur_pillar []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 purpur_pillar []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 purpur_pillar []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 purpur_pillar []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 purpur_pillar []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 purpur_pillar []
fill ~7 ~1 ~0 ~7 ~6 ~0 purpur_pillar []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 purpur_pillar []
fill ~7 ~1 ~2 ~7 ~6 ~2 purpur_pillar []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 purpur_pillar []
fill ~7 ~1 ~4 ~7 ~6 ~4 purpur_pillar []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 end_bricks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 obsidian []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 sea_lantern []
setblock ~0 ~10 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 purpur_pillar []
setblock ~0 ~4 ~-8 emerald_block []
setblock ~0 ~5 ~-8 end_rod []
fill ~0 ~0 ~8 ~0 ~3 ~8 purpur_pillar []
setblock ~0 ~4 ~8 emerald_block []
setblock ~0 ~5 ~8 end_rod []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 purpur_pillar []
setblock ~-9 ~4 ~0 emerald_block []
setblock ~-9 ~5 ~0 end_rod []
fill ~9 ~0 ~0 ~9 ~3 ~0 purpur_pillar []
setblock ~9 ~4 ~0 emerald_block []
setblock ~9 ~5 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~1 ~-8 ~6 ~1 purpur_pillar []
fill ~8 ~0 ~1 ~8 ~6 ~1 purpur_pillar []
setblock ~-8 ~7 ~1 obsidian []
setblock ~8 ~7 ~1 obsidian []
setblock ~-8 ~8 ~1 end_rod []
setblock ~8 ~8 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 diamond_block []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 bone 15
replaceitem block ~6 ~1 ~4 slot.container 1 shulker_shell 6
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 17
replaceitem block ~6 ~1 ~4 slot.container 3 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 4 dragon_breath 5
replaceitem block ~6 ~1 ~4 slot.container 5 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 9 end_rod 10
replaceitem block ~6 ~1 ~4 slot.container 10 chorus_fruit 19
replaceitem block ~6 ~1 ~4 slot.container 11 popped_chorus_fruit 16
replaceitem block ~6 ~1 ~4 slot.container 12 diamond 9
replaceitem block ~6 ~1 ~4 slot.container 13 emerald 12
replaceitem block ~6 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~6 ~1 ~4 loot "rsf/the_end"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 20
replaceitem block ~-6 ~1 ~5 slot.container 1 phantom_membrane 11
replaceitem block ~-6 ~1 ~5 slot.container 2 dragon_breath 8
replaceitem block ~-6 ~1 ~5 slot.container 3 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 4 ghast_tear 2
replaceitem block ~-6 ~1 ~5 slot.container 5 slime_ball 7
replaceitem block ~-6 ~1 ~5 slot.container 9 end_rod 8
replaceitem block ~-6 ~1 ~5 slot.container 10 chorus_fruit 17
replaceitem block ~-6 ~1 ~5 slot.container 11 popped_chorus_fruit 14
replaceitem block ~-6 ~1 ~5 slot.container 12 diamond 7
replaceitem block ~-6 ~1 ~5 slot.container 13 emerald 10
replaceitem block ~-6 ~1 ~5 slot.container 14 gold_ingot 15
loot insert ~-6 ~1 ~5 loot "rsf/the_end"
loot insert ~-6 ~1 ~5 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon endermite ~0 ~-3 ~0

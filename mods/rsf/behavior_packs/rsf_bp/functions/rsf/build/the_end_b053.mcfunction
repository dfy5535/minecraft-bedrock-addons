# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4149/4224 | 主题内编号: b053/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·测绘师观景制图站 (the_end_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 end_bricks [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 end_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_stone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 purpur_block []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 end_bricks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 purpur_pillar []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 purpur_pillar []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 purpur_pillar []
fill ~4 ~1 ~3 ~4 ~6 ~3 purpur_pillar []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 purpur_block []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 purpur_block []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 obsidian []
setblock ~0 ~10 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 obsidian []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-6 ~0 ~0 ~-6 ~7 ~0 purpur_pillar []
fill ~6 ~0 ~0 ~6 ~7 ~0 purpur_pillar []
setblock ~-6 ~8 ~0 obsidian []
setblock ~6 ~8 ~0 obsidian []
setblock ~-6 ~9 ~0 end_rod []
setblock ~6 ~9 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ghast_tear 7
replaceitem block ~4 ~1 ~2 slot.container 1 slime_ball 12
replaceitem block ~4 ~1 ~2 slot.container 2 bone 15
replaceitem block ~4 ~1 ~2 slot.container 3 shulker_shell 6
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 17
replaceitem block ~4 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 9 elytra 1
replaceitem block ~4 ~1 ~2 slot.container 10 diamond_sword 1
replaceitem block ~4 ~1 ~2 slot.container 11 end_rod 8
replaceitem block ~4 ~1 ~2 slot.container 12 chorus_fruit 17
replaceitem block ~4 ~1 ~2 slot.container 13 popped_chorus_fruit 14
replaceitem block ~4 ~1 ~2 slot.container 14 diamond 7
loot insert ~4 ~1 ~2 loot "rsf/the_end"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~3 slot.container 1 shulker_shell 9
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 20
replaceitem block ~-4 ~1 ~3 slot.container 3 phantom_membrane 11
replaceitem block ~-4 ~1 ~3 slot.container 4 dragon_breath 8
replaceitem block ~-4 ~1 ~3 slot.container 5 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 9 elytra 1
replaceitem block ~-4 ~1 ~3 slot.container 10 diamond_sword 1
replaceitem block ~-4 ~1 ~3 slot.container 11 end_rod 13
replaceitem block ~-4 ~1 ~3 slot.container 12 chorus_fruit 22
replaceitem block ~-4 ~1 ~3 slot.container 13 popped_chorus_fruit 12
replaceitem block ~-4 ~1 ~3 slot.container 14 diamond 5
loot insert ~-4 ~1 ~3 loot "rsf/the_end"
loot insert ~-4 ~1 ~3 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1

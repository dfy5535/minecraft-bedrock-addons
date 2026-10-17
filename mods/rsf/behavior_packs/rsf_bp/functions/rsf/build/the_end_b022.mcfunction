# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4118/4224 | 主题内编号: b022/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·廊柱书库秘藏室 (the_end_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 obsidian []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 phantom_membrane 13
replaceitem block ~4 ~-3 ~3 slot.container 1 dragon_breath 2
replaceitem block ~4 ~-3 ~3 slot.container 2 blaze_rod 5
replaceitem block ~4 ~-3 ~3 slot.container 3 ghast_tear 4
replaceitem block ~4 ~-3 ~3 slot.container 4 slime_ball 9
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 12
replaceitem block ~4 ~-3 ~3 slot.container 9 diamond_sword 1
replaceitem block ~4 ~-3 ~3 slot.container 10 end_rod 14
replaceitem block ~4 ~-3 ~3 slot.container 11 chorus_fruit 16
replaceitem block ~4 ~-3 ~3 slot.container 12 popped_chorus_fruit 13
replaceitem block ~4 ~-3 ~3 slot.container 13 diamond 6
replaceitem block ~4 ~-3 ~3 slot.container 14 emerald 9
loot insert ~4 ~-3 ~3 loot "rsf/the_end"
loot insert ~4 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 end_bricks []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 purpur_pillar []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 purpur_pillar []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 purpur_pillar []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 purpur_pillar []
fill ~-2 ~1 ~-5 ~-2 ~5 ~-5 purpur_pillar []
fill ~-2 ~1 ~5 ~-2 ~5 ~5 purpur_pillar []
fill ~0 ~1 ~-5 ~0 ~5 ~-5 purpur_pillar []
fill ~0 ~1 ~5 ~0 ~5 ~5 purpur_pillar []
fill ~2 ~1 ~-5 ~2 ~5 ~-5 purpur_pillar []
fill ~2 ~1 ~5 ~2 ~5 ~5 purpur_pillar []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 purpur_pillar []
fill ~4 ~1 ~5 ~4 ~5 ~5 purpur_pillar []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 purpur_pillar []
fill ~6 ~1 ~5 ~6 ~5 ~5 purpur_pillar []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 purpur_pillar []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 purpur_pillar []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 purpur_pillar []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 purpur_pillar []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 purpur_pillar []
fill ~6 ~1 ~1 ~6 ~5 ~1 purpur_pillar []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 purpur_pillar []
fill ~6 ~1 ~3 ~6 ~5 ~3 purpur_pillar []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 end_bricks []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 obsidian []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 sea_lantern []
setblock ~0 ~10 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 obsidian []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~0 ~-7 ~6 ~0 purpur_pillar []
fill ~7 ~0 ~0 ~7 ~6 ~0 purpur_pillar []
setblock ~-7 ~7 ~0 obsidian []
setblock ~7 ~7 ~0 obsidian []
setblock ~-7 ~8 ~0 end_rod []
setblock ~7 ~8 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 end_rod []
fill ~-6 ~1 ~3 ~-1 ~2 ~3 barrel ["facing_direction"=2]
setblock ~0 ~1 ~3 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 2 shulker_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 17
replaceitem block ~-5 ~1 ~3 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 5 dragon_breath 5
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 12 elytra 1
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 14 end_rod 8
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

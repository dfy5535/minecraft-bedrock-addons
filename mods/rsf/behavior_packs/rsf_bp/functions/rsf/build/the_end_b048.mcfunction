# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4144/4224 | 主题内编号: b048/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·阶梯王座巅峰试炼台 (the_end_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 end_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 end_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-6 ~0 obsidian []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 end_rod []
setblock ~2 ~-5 ~0 end_rod []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 phantom_membrane 13
replaceitem block ~0 ~-3 ~-4 slot.container 1 dragon_breath 2
replaceitem block ~0 ~-3 ~-4 slot.container 2 blaze_rod 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 ghast_tear 4
replaceitem block ~0 ~-3 ~-4 slot.container 4 slime_ball 9
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 9 diamond_sword 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 end_rod 12
replaceitem block ~0 ~-3 ~-4 slot.container 11 chorus_fruit 21
replaceitem block ~0 ~-3 ~-4 slot.container 12 popped_chorus_fruit 18
replaceitem block ~0 ~-3 ~-4 slot.container 13 diamond 4
replaceitem block ~0 ~-3 ~-4 slot.container 14 emerald 7
loot insert ~0 ~-3 ~-4 loot "rsf/the_end"
loot insert ~0 ~-3 ~-4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 end_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 obsidian []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 end_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 purpur_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 purpur_pillar []
setblock ~-7 ~9 ~-6 end_rod []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 purpur_pillar []
setblock ~-7 ~9 ~6 end_rod []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 purpur_pillar []
setblock ~7 ~9 ~-6 end_rod []
fill ~7 ~6 ~6 ~7 ~8 ~6 purpur_pillar []
setblock ~7 ~9 ~6 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 obsidian []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~0 ~-8 ~7 ~0 purpur_pillar []
fill ~8 ~0 ~0 ~8 ~7 ~0 purpur_pillar []
setblock ~-8 ~8 ~0 obsidian []
setblock ~8 ~8 ~0 obsidian []
setblock ~-8 ~9 ~0 end_rod []
setblock ~8 ~9 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 end_rod []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 shulker_shell 6
replaceitem block ~-6 ~1 ~4 slot.container 1 ender_pearl 17
replaceitem block ~-6 ~1 ~4 slot.container 2 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 3 dragon_breath 5
replaceitem block ~-6 ~1 ~4 slot.container 4 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 5 ghast_tear 7
replaceitem block ~-6 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-6 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~-6 ~1 ~4 slot.container 11 gold_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 14 elytra 1
loot insert ~-6 ~1 ~4 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1

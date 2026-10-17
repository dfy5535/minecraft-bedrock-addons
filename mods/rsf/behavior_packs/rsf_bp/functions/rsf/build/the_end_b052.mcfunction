# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4148/4224 | 主题内编号: b052/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·重檐行商旅店客栈 (the_end_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 end_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 end_bricks [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 purpur_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 purpur_block []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 end_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 shulker_shell 11
replaceitem block ~4 ~-3 ~4 slot.container 1 ender_pearl 22
replaceitem block ~4 ~-3 ~4 slot.container 2 phantom_membrane 13
replaceitem block ~4 ~-3 ~4 slot.container 3 dragon_breath 2
replaceitem block ~4 ~-3 ~4 slot.container 4 blaze_rod 5
replaceitem block ~4 ~-3 ~4 slot.container 5 ghast_tear 4
replaceitem block ~4 ~-3 ~4 slot.container 9 diamond_sword 1
replaceitem block ~4 ~-3 ~4 slot.container 10 end_rod 9
replaceitem block ~4 ~-3 ~4 slot.container 11 chorus_fruit 18
replaceitem block ~4 ~-3 ~4 slot.container 12 popped_chorus_fruit 15
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 8
replaceitem block ~4 ~-3 ~4 slot.container 14 emerald 11
loot insert ~4 ~-3 ~4 loot "rsf/the_end"
loot insert ~4 ~-3 ~4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~3 ~6 end_bricks []
fill ~-5 ~1 ~-5 ~5 ~2 ~5 air []
fill ~-7 ~3 ~-7 ~7 ~3 ~7 purpur_slab []
fill ~-5 ~4 ~-5 ~5 ~6 ~5 end_bricks []
fill ~-4 ~4 ~-4 ~4 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 purpur_block []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 obsidian []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 purpur_pillar []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 purpur_pillar []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 purpur_slab []
setblock ~0 ~3 ~-8 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 purpur_pillar []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 purpur_pillar []
setblock ~-7 ~7 ~-2 obsidian []
setblock ~7 ~7 ~-2 obsidian []
setblock ~-7 ~8 ~-2 end_rod []
setblock ~7 ~8 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-5 ~1 ~5 smoker []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~4 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~4 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~4 slot.container 4 shulker_shell 6
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 17
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 14
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 15
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 9
replaceitem block ~-5 ~1 ~4 slot.container 12 elytra 1
replaceitem block ~-5 ~1 ~4 slot.container 13 diamond_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 14 end_rod 10
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

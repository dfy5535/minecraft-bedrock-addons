# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4203/4224 | 主题内编号: b107/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·观星高塔与秘术地宫 (the_end_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 obsidian [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 obsidian [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 purpur_block []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 end_rod []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 ghast_tear 4
replaceitem block ~3 ~-2 ~2 slot.container 1 slime_ball 9
replaceitem block ~3 ~-2 ~2 slot.container 2 bone 12
replaceitem block ~3 ~-2 ~2 slot.container 3 shulker_shell 11
replaceitem block ~3 ~-2 ~2 slot.container 4 ender_pearl 22
replaceitem block ~3 ~-2 ~2 slot.container 5 phantom_membrane 13
replaceitem block ~3 ~-2 ~2 slot.container 9 iron_ingot 15
replaceitem block ~3 ~-2 ~2 slot.container 10 golden_apple 9
replaceitem block ~3 ~-2 ~2 slot.container 11 elytra 1
replaceitem block ~3 ~-2 ~2 slot.container 12 diamond_sword 1
replaceitem block ~3 ~-2 ~2 slot.container 13 end_rod 10
replaceitem block ~3 ~-2 ~2 slot.container 14 chorus_fruit 19
loot insert ~3 ~-2 ~2 loot "rsf/the_end"
loot insert ~3 ~-2 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 obsidian []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 purpur_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~8 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 purpur_block []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 purpur_pillar []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 purpur_pillar []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 purpur_pillar []
fill ~6 ~0 ~2 ~6 ~7 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 purpur_pillar []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 purpur_pillar []
setblock ~-6 ~7 ~-2 obsidian []
setblock ~6 ~7 ~-2 obsidian []
setblock ~-6 ~8 ~-2 end_rod []
setblock ~6 ~8 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 end_rod []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 dragon_breath 5
replaceitem block ~4 ~1 ~2 slot.container 1 blaze_rod 8
replaceitem block ~4 ~1 ~2 slot.container 2 ghast_tear 7
replaceitem block ~4 ~1 ~2 slot.container 3 slime_ball 12
replaceitem block ~4 ~1 ~2 slot.container 4 bone 15
replaceitem block ~4 ~1 ~2 slot.container 5 shulker_shell 6
replaceitem block ~4 ~1 ~2 slot.container 9 end_rod 11
replaceitem block ~4 ~1 ~2 slot.container 10 chorus_fruit 20
replaceitem block ~4 ~1 ~2 slot.container 11 popped_chorus_fruit 17
replaceitem block ~4 ~1 ~2 slot.container 12 diamond 10
replaceitem block ~4 ~1 ~2 slot.container 13 emerald 6
replaceitem block ~4 ~1 ~2 slot.container 14 gold_ingot 11
loot insert ~4 ~1 ~2 loot "rsf/the_end"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ghast_tear 2
replaceitem block ~-4 ~1 ~3 slot.container 1 slime_ball 7
replaceitem block ~-4 ~1 ~3 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~3 slot.container 3 shulker_shell 9
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 20
replaceitem block ~-4 ~1 ~3 slot.container 5 phantom_membrane 11
replaceitem block ~-4 ~1 ~3 slot.container 9 end_rod 9
replaceitem block ~-4 ~1 ~3 slot.container 10 chorus_fruit 18
replaceitem block ~-4 ~1 ~3 slot.container 11 popped_chorus_fruit 15
replaceitem block ~-4 ~1 ~3 slot.container 12 diamond 8
replaceitem block ~-4 ~1 ~3 slot.container 13 emerald 11
replaceitem block ~-4 ~1 ~3 slot.container 14 gold_ingot 16
loot insert ~-4 ~1 ~3 loot "rsf/the_end"
loot insert ~-4 ~1 ~3 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4206/4224 | 主题内编号: b110/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双子附魔与酿造实验楼 (the_end_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 purpur_block [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 purpur_block [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 purpur_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 obsidian []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 obsidian []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 phantom_membrane 13
replaceitem block ~5 ~-3 ~2 slot.container 1 dragon_breath 2
replaceitem block ~5 ~-3 ~2 slot.container 2 blaze_rod 5
replaceitem block ~5 ~-3 ~2 slot.container 3 ghast_tear 4
replaceitem block ~5 ~-3 ~2 slot.container 4 slime_ball 9
replaceitem block ~5 ~-3 ~2 slot.container 5 bone 12
replaceitem block ~5 ~-3 ~2 slot.container 9 diamond 6
replaceitem block ~5 ~-3 ~2 slot.container 10 emerald 9
replaceitem block ~5 ~-3 ~2 slot.container 11 gold_ingot 14
replaceitem block ~5 ~-3 ~2 slot.container 12 iron_ingot 15
replaceitem block ~5 ~-3 ~2 slot.container 13 golden_apple 9
replaceitem block ~5 ~-3 ~2 slot.container 14 elytra 1
loot insert ~5 ~-3 ~2 loot "rsf/the_end"
loot insert ~5 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 purpur_block []
fill ~2 ~1 ~-4 ~7 ~7 ~4 purpur_block []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 end_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~6 ~-5 ~8 ~6 ~5 purpur_slab []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 obsidian []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 purpur_slab []
setblock ~0 ~10 ~0 sea_lantern []
setblock ~0 ~11 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 purpur_block []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~1 ~-8 ~9 ~1 purpur_pillar []
fill ~8 ~0 ~1 ~8 ~9 ~1 purpur_pillar []
setblock ~-8 ~10 ~1 obsidian []
setblock ~8 ~10 ~1 obsidian []
setblock ~-8 ~11 ~1 end_rod []
setblock ~8 ~11 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 end_rod []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 1 bone 15
replaceitem block ~-6 ~1 ~2 slot.container 2 shulker_shell 6
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 17
replaceitem block ~-6 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 5 dragon_breath 5
replaceitem block ~-6 ~1 ~2 slot.container 9 diamond_sword 1
replaceitem block ~-6 ~1 ~2 slot.container 10 end_rod 8
replaceitem block ~-6 ~1 ~2 slot.container 11 chorus_fruit 17
replaceitem block ~-6 ~1 ~2 slot.container 12 popped_chorus_fruit 14
replaceitem block ~-6 ~1 ~2 slot.container 13 diamond 7
replaceitem block ~-6 ~1 ~2 slot.container 14 emerald 10
loot insert ~-6 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4155/4224 | 主题内编号: b059/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·阶梯金字塔法老墓室 (the_end_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 obsidian [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 obsidian [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 end_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 purpur_block []
setblock ~0 ~-6 ~0 emerald_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 end_rod []
setblock ~2 ~-5 ~0 end_rod []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ghast_tear 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 slime_ball 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 shulker_shell 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 22
replaceitem block ~0 ~-3 ~-4 slot.container 5 phantom_membrane 13
replaceitem block ~0 ~-3 ~-4 slot.container 9 popped_chorus_fruit 12
replaceitem block ~0 ~-3 ~-4 slot.container 10 diamond 5
replaceitem block ~0 ~-3 ~-4 slot.container 11 emerald 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 gold_ingot 13
replaceitem block ~0 ~-3 ~-4 slot.container 13 iron_ingot 14
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 8
loot insert ~0 ~-3 ~-4 loot "rsf/the_end"
loot insert ~0 ~-3 ~-4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 obsidian []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 purpur_block []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 end_bricks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 purpur_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 purpur_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 obsidian []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 purpur_slab []
setblock ~0 ~11 ~0 sea_lantern []
setblock ~0 ~12 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 purpur_pillar []
setblock ~-9 ~4 ~-8 end_rod []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 purpur_pillar []
setblock ~-9 ~4 ~8 end_rod []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 purpur_pillar []
setblock ~9 ~4 ~-8 end_rod []
fill ~9 ~0 ~8 ~9 ~3 ~8 purpur_pillar []
setblock ~9 ~4 ~8 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-8 ~0 ~-1 ~-8 ~8 ~-1 purpur_pillar []
fill ~8 ~0 ~-1 ~8 ~8 ~-1 purpur_pillar []
setblock ~-8 ~9 ~-1 obsidian []
setblock ~8 ~9 ~-1 obsidian []
setblock ~-8 ~10 ~-1 end_rod []
setblock ~8 ~10 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 end_rod []
fill ~-6 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 diamond_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 dragon_breath 5
replaceitem block ~6 ~1 ~4 slot.container 1 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 2 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 3 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 4 bone 15
replaceitem block ~6 ~1 ~4 slot.container 5 shulker_shell 6
replaceitem block ~6 ~1 ~4 slot.container 9 iron_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 8
replaceitem block ~6 ~1 ~4 slot.container 11 elytra 1
replaceitem block ~6 ~1 ~4 slot.container 12 diamond_sword 1
replaceitem block ~6 ~1 ~4 slot.container 13 end_rod 9
replaceitem block ~6 ~1 ~4 slot.container 14 chorus_fruit 18
loot insert ~6 ~1 ~4 loot "rsf/the_end"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ghast_tear 2
replaceitem block ~-6 ~1 ~5 slot.container 1 slime_ball 7
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 10
replaceitem block ~-6 ~1 ~5 slot.container 3 shulker_shell 9
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 20
replaceitem block ~-6 ~1 ~5 slot.container 5 phantom_membrane 11
replaceitem block ~-6 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 6
replaceitem block ~-6 ~1 ~5 slot.container 11 elytra 1
replaceitem block ~-6 ~1 ~5 slot.container 12 diamond_sword 1
replaceitem block ~-6 ~1 ~5 slot.container 13 end_rod 14
replaceitem block ~-6 ~1 ~5 slot.container 14 chorus_fruit 16
loot insert ~-6 ~1 ~5 loot "rsf/the_end"
loot insert ~-6 ~1 ~5 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

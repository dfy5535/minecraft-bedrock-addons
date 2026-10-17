# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4157/4224 | 主题内编号: b061/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双子封土古墓地宫 (the_end_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 end_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 end_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 purpur_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 end_stone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 purpur_block []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 purpur_block []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 end_rod []
setblock ~2 ~-5 ~0 end_rod []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~-2 slot.container 1 shulker_shell 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 ender_pearl 22
replaceitem block ~0 ~-3 ~-2 slot.container 3 phantom_membrane 13
replaceitem block ~0 ~-3 ~-2 slot.container 4 dragon_breath 2
replaceitem block ~0 ~-3 ~-2 slot.container 5 blaze_rod 5
replaceitem block ~0 ~-3 ~-2 slot.container 9 elytra 1
replaceitem block ~0 ~-3 ~-2 slot.container 10 diamond_sword 1
replaceitem block ~0 ~-3 ~-2 slot.container 11 end_rod 12
replaceitem block ~0 ~-3 ~-2 slot.container 12 chorus_fruit 21
replaceitem block ~0 ~-3 ~-2 slot.container 13 popped_chorus_fruit 18
replaceitem block ~0 ~-3 ~-2 slot.container 14 diamond 4
loot insert ~0 ~-3 ~-2 loot "rsf/the_end"
loot insert ~0 ~-3 ~-2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 end_bricks []
fill ~2 ~1 ~-4 ~7 ~6 ~4 end_bricks []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 purpur_block []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 purpur_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 end_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 purpur_slab []
setblock ~0 ~10 ~0 diamond_block []
setblock ~0 ~11 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 purpur_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~0 ~-8 ~10 ~0 purpur_pillar []
fill ~8 ~0 ~0 ~8 ~10 ~0 purpur_pillar []
setblock ~-8 ~11 ~0 obsidian []
setblock ~8 ~11 ~0 obsidian []
setblock ~-8 ~12 ~0 end_rod []
setblock ~8 ~12 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-6 ~1 ~3 smithing_table []
setblock ~-5 ~1 ~3 anvil []
setblock ~5 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ghast_tear 7
replaceitem block ~6 ~1 ~2 slot.container 1 slime_ball 12
replaceitem block ~6 ~1 ~2 slot.container 2 bone 15
replaceitem block ~6 ~1 ~2 slot.container 3 shulker_shell 6
replaceitem block ~6 ~1 ~2 slot.container 4 ender_pearl 17
replaceitem block ~6 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~6 ~1 ~2 slot.container 9 popped_chorus_fruit 18
replaceitem block ~6 ~1 ~2 slot.container 10 diamond 4
replaceitem block ~6 ~1 ~2 slot.container 11 emerald 7
replaceitem block ~6 ~1 ~2 slot.container 12 gold_ingot 12
replaceitem block ~6 ~1 ~2 slot.container 13 iron_ingot 13
replaceitem block ~6 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~6 ~1 ~2 loot "rsf/the_end"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 bone 10
replaceitem block ~-6 ~1 ~3 slot.container 1 shulker_shell 9
replaceitem block ~-6 ~1 ~3 slot.container 2 ender_pearl 20
replaceitem block ~-6 ~1 ~3 slot.container 3 phantom_membrane 11
replaceitem block ~-6 ~1 ~3 slot.container 4 dragon_breath 8
replaceitem block ~-6 ~1 ~3 slot.container 5 blaze_rod 11
replaceitem block ~-6 ~1 ~3 slot.container 9 popped_chorus_fruit 16
replaceitem block ~-6 ~1 ~3 slot.container 10 diamond 9
replaceitem block ~-6 ~1 ~3 slot.container 11 emerald 12
replaceitem block ~-6 ~1 ~3 slot.container 12 gold_ingot 10
replaceitem block ~-6 ~1 ~3 slot.container 13 iron_ingot 11
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~-6 ~1 ~3 loot "rsf/the_end"
loot insert ~-6 ~1 ~3 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1
summon shulker ~0 ~-3 ~0

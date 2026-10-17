# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4224/4224 | 主题内编号: b128/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·U型紫禁朝堂大殿与地底金库 (the_end_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 5格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 end_bricks [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 end_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_block []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 end_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 diamond_block []
setblock ~0 ~-5 ~0 end_rod []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 bone 12
replaceitem block ~4 ~-2 ~0 slot.container 1 shulker_shell 11
replaceitem block ~4 ~-2 ~0 slot.container 2 ender_pearl 22
replaceitem block ~4 ~-2 ~0 slot.container 3 phantom_membrane 13
replaceitem block ~4 ~-2 ~0 slot.container 4 dragon_breath 2
replaceitem block ~4 ~-2 ~0 slot.container 5 blaze_rod 5
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 16
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 11 elytra 1
replaceitem block ~4 ~-2 ~0 slot.container 12 diamond_sword 1
replaceitem block ~4 ~-2 ~0 slot.container 13 end_rod 11
replaceitem block ~4 ~-2 ~0 slot.container 14 chorus_fruit 20
loot insert ~4 ~-2 ~0 loot "rsf/the_end"
loot insert ~4 ~-2 ~0 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 end_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 end_stone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-7 ~8 ~7 ~7 purpur_slab []
fill ~-6 ~8 ~-5 ~6 ~9 ~5 end_bricks []
fill ~-7 ~10 ~-6 ~7 ~10 ~6 purpur_slab []
setblock ~0 ~11 ~0 emerald_block []
setblock ~0 ~12 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 cobblestone_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-8 ~0 ~2 ~-8 ~7 ~2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~7 ~2 purpur_pillar []
setblock ~-8 ~8 ~2 obsidian []
setblock ~8 ~8 ~2 obsidian []
setblock ~-8 ~9 ~2 end_rod []
setblock ~8 ~9 ~2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-6 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 shulker_shell 6
replaceitem block ~-6 ~1 ~4 slot.container 1 ender_pearl 17
replaceitem block ~-6 ~1 ~4 slot.container 2 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 3 dragon_breath 5
replaceitem block ~-6 ~1 ~4 slot.container 4 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 5 ghast_tear 7
replaceitem block ~-6 ~1 ~4 slot.container 9 diamond 7
replaceitem block ~-6 ~1 ~4 slot.container 10 emerald 10
replaceitem block ~-6 ~1 ~4 slot.container 11 gold_ingot 15
replaceitem block ~-6 ~1 ~4 slot.container 12 iron_ingot 16
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 3
replaceitem block ~-6 ~1 ~4 slot.container 14 elytra 1
loot insert ~-6 ~1 ~4 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1

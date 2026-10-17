# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4171/4224 | 主题内编号: b075/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·远古巨石环廊法阵 (the_end_totem_rotunda_henge)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 obsidian [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 obsidian [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 end_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 end_bricks []
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 purpur_block []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 end_rod []
setblock ~2 ~-4 ~0 end_rod []
setblock ~0 ~-2 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-4 slot.container 0 ghast_tear 4
replaceitem block ~0 ~-2 ~-4 slot.container 1 slime_ball 9
replaceitem block ~0 ~-2 ~-4 slot.container 2 bone 12
replaceitem block ~0 ~-2 ~-4 slot.container 3 shulker_shell 11
replaceitem block ~0 ~-2 ~-4 slot.container 4 ender_pearl 22
replaceitem block ~0 ~-2 ~-4 slot.container 5 phantom_membrane 13
replaceitem block ~0 ~-2 ~-4 slot.container 9 end_rod 10
replaceitem block ~0 ~-2 ~-4 slot.container 10 chorus_fruit 19
replaceitem block ~0 ~-2 ~-4 slot.container 11 popped_chorus_fruit 16
replaceitem block ~0 ~-2 ~-4 slot.container 12 diamond 9
replaceitem block ~0 ~-2 ~-4 slot.container 13 emerald 12
replaceitem block ~0 ~-2 ~-4 slot.container 14 gold_ingot 10
loot insert ~0 ~-2 ~-4 loot "rsf/the_end"
loot insert ~0 ~-2 ~-4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 purpur_block []
fill ~-7 ~1 ~-6 ~-7 ~5 ~-6 purpur_pillar []
fill ~-7 ~1 ~6 ~-7 ~5 ~6 purpur_pillar []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 purpur_pillar []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 purpur_pillar []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 purpur_pillar []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 purpur_pillar []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 purpur_pillar []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 purpur_pillar []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 purpur_pillar []
fill ~1 ~1 ~6 ~1 ~5 ~6 purpur_pillar []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 purpur_pillar []
fill ~3 ~1 ~6 ~3 ~5 ~6 purpur_pillar []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 purpur_pillar []
fill ~5 ~1 ~6 ~5 ~5 ~6 purpur_pillar []
fill ~7 ~1 ~-6 ~7 ~5 ~-6 purpur_pillar []
fill ~7 ~1 ~6 ~7 ~5 ~6 purpur_pillar []
fill ~-7 ~1 ~-4 ~-7 ~5 ~-4 purpur_pillar []
fill ~7 ~1 ~-4 ~7 ~5 ~-4 purpur_pillar []
fill ~-7 ~1 ~-2 ~-7 ~5 ~-2 purpur_pillar []
fill ~7 ~1 ~-2 ~7 ~5 ~-2 purpur_pillar []
fill ~-7 ~1 ~0 ~-7 ~5 ~0 purpur_pillar []
fill ~7 ~1 ~0 ~7 ~5 ~0 purpur_pillar []
fill ~-7 ~1 ~2 ~-7 ~5 ~2 purpur_pillar []
fill ~7 ~1 ~2 ~7 ~5 ~2 purpur_pillar []
fill ~-7 ~1 ~4 ~-7 ~5 ~4 purpur_pillar []
fill ~7 ~1 ~4 ~7 ~5 ~4 purpur_pillar []

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

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~-3 ~-8 ~9 ~-3 purpur_pillar []
fill ~8 ~0 ~-3 ~8 ~9 ~-3 purpur_pillar []
setblock ~-8 ~10 ~-3 obsidian []
setblock ~8 ~10 ~-3 obsidian []
setblock ~-8 ~11 ~-3 end_rod []
setblock ~8 ~11 ~-3 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 dragon_breath 5
replaceitem block ~6 ~1 ~4 slot.container 1 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 2 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 3 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 4 bone 15
replaceitem block ~6 ~1 ~4 slot.container 5 shulker_shell 6
replaceitem block ~6 ~1 ~4 slot.container 9 emerald 12
replaceitem block ~6 ~1 ~4 slot.container 10 gold_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~6 ~1 ~4 slot.container 13 elytra 1
replaceitem block ~6 ~1 ~4 slot.container 14 diamond_sword 1
loot insert ~6 ~1 ~4 loot "rsf/the_end"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ghast_tear 2
replaceitem block ~-6 ~1 ~5 slot.container 1 slime_ball 7
replaceitem block ~-6 ~1 ~5 slot.container 2 bone 10
replaceitem block ~-6 ~1 ~5 slot.container 3 shulker_shell 9
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 20
replaceitem block ~-6 ~1 ~5 slot.container 5 phantom_membrane 11
replaceitem block ~-6 ~1 ~5 slot.container 9 emerald 10
replaceitem block ~-6 ~1 ~5 slot.container 10 gold_ingot 15
replaceitem block ~-6 ~1 ~5 slot.container 11 iron_ingot 16
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 3
replaceitem block ~-6 ~1 ~5 slot.container 13 elytra 1
replaceitem block ~-6 ~1 ~5 slot.container 14 diamond_sword 1
loot insert ~-6 ~1 ~5 loot "rsf/the_end"
loot insert ~-6 ~1 ~5 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1

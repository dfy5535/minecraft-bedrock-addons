# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4164/4224 | 主题内编号: b068/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·断裂凯旋高架拱廊 (the_end_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 end_bricks [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 end_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 purpur_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 purpur_block []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 obsidian []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~-4 ~-5 ~-3 end_rod []
setblock ~4 ~-5 ~3 end_rod []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 dragon_breath 2
replaceitem block ~0 ~-3 ~3 slot.container 1 blaze_rod 5
replaceitem block ~0 ~-3 ~3 slot.container 2 ghast_tear 4
replaceitem block ~0 ~-3 ~3 slot.container 3 slime_ball 9
replaceitem block ~0 ~-3 ~3 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~3 slot.container 5 shulker_shell 11
replaceitem block ~0 ~-3 ~3 slot.container 9 emerald 8
replaceitem block ~0 ~-3 ~3 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-3 ~3 slot.container 11 iron_ingot 14
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_apple 8
replaceitem block ~0 ~-3 ~3 slot.container 13 elytra 1
replaceitem block ~0 ~-3 ~3 slot.container 14 diamond_sword 1
loot insert ~0 ~-3 ~3 loot "rsf/the_end"
loot insert ~0 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 end_bricks []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 purpur_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 obsidian []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-1 ~-8 ~7 ~-1 purpur_pillar []
fill ~8 ~0 ~-1 ~8 ~7 ~-1 purpur_pillar []
setblock ~-8 ~8 ~-1 obsidian []
setblock ~8 ~8 ~-1 obsidian []
setblock ~-8 ~9 ~-1 end_rod []
setblock ~8 ~9 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 blaze_rod 8
replaceitem block ~-6 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-6 ~1 ~2 slot.container 2 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~2 slot.container 4 shulker_shell 6
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 17
replaceitem block ~-6 ~1 ~2 slot.container 9 diamond 10
replaceitem block ~-6 ~1 ~2 slot.container 10 emerald 6
replaceitem block ~-6 ~1 ~2 slot.container 11 gold_ingot 11
replaceitem block ~-6 ~1 ~2 slot.container 12 iron_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_apple 6
replaceitem block ~-6 ~1 ~2 slot.container 14 elytra 1
loot insert ~-6 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1

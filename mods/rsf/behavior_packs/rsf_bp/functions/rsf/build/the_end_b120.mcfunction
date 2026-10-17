# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4216/4224 | 主题内编号: b120/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·引水渠跨桥水培温室 (the_end_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 end_bricks [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 end_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~7 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 purpur_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 purpur_block []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 obsidian []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 end_rod []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 phantom_membrane 13
replaceitem block ~-4 ~-3 ~2 slot.container 1 dragon_breath 2
replaceitem block ~-4 ~-3 ~2 slot.container 2 blaze_rod 5
replaceitem block ~-4 ~-3 ~2 slot.container 3 ghast_tear 4
replaceitem block ~-4 ~-3 ~2 slot.container 4 slime_ball 9
replaceitem block ~-4 ~-3 ~2 slot.container 5 bone 12
replaceitem block ~-4 ~-3 ~2 slot.container 9 gold_ingot 13
replaceitem block ~-4 ~-3 ~2 slot.container 10 iron_ingot 14
replaceitem block ~-4 ~-3 ~2 slot.container 11 golden_apple 8
replaceitem block ~-4 ~-3 ~2 slot.container 12 elytra 1
replaceitem block ~-4 ~-3 ~2 slot.container 13 diamond_sword 1
replaceitem block ~-4 ~-3 ~2 slot.container 14 end_rod 9
loot insert ~-4 ~-3 ~2 loot "rsf/the_end"
loot insert ~-4 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~5 ~4 end_bricks []
fill ~-5 ~1 ~-3 ~5 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 obsidian []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 cobblestone_wall []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 purpur_pillar []
setblock ~-6 ~8 ~-4 end_rod []
setblock ~-6 ~7 ~4 purpur_pillar []
setblock ~-6 ~8 ~4 end_rod []
setblock ~6 ~7 ~-4 purpur_pillar []
setblock ~6 ~8 ~-4 end_rod []
setblock ~6 ~7 ~4 purpur_pillar []
setblock ~6 ~8 ~4 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 obsidian []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-7 ~0 ~-1 ~-7 ~9 ~-1 purpur_pillar []
fill ~7 ~0 ~-1 ~7 ~9 ~-1 purpur_pillar []
setblock ~-7 ~10 ~-1 obsidian []
setblock ~7 ~10 ~-1 obsidian []
setblock ~-7 ~11 ~-1 end_rod []
setblock ~7 ~11 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~3 crafting_table []
setblock ~-4 ~1 ~3 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 end_rod []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 shulker_shell 6
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 17
replaceitem block ~-5 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~2 slot.container 3 dragon_breath 5
replaceitem block ~-5 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~2 slot.container 9 diamond_sword 1
replaceitem block ~-5 ~1 ~2 slot.container 10 end_rod 11
replaceitem block ~-5 ~1 ~2 slot.container 11 chorus_fruit 20
replaceitem block ~-5 ~1 ~2 slot.container 12 popped_chorus_fruit 17
replaceitem block ~-5 ~1 ~2 slot.container 13 diamond 10
replaceitem block ~-5 ~1 ~2 slot.container 14 emerald 6
loot insert ~-5 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1

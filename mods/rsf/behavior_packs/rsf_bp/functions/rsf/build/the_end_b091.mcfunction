# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4187/4224 | 主题内编号: b091/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·跨水拱桥水神小祠 (the_end_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 obsidian [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 obsidian [] replace water
fill ~-7 ~1 ~-4 ~7 ~8 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 purpur_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 end_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 end_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 end_rod []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 ender_pearl 22
replaceitem block ~4 ~-3 ~4 slot.container 1 phantom_membrane 13
replaceitem block ~4 ~-3 ~4 slot.container 2 dragon_breath 2
replaceitem block ~4 ~-3 ~4 slot.container 3 blaze_rod 5
replaceitem block ~4 ~-3 ~4 slot.container 4 ghast_tear 4
replaceitem block ~4 ~-3 ~4 slot.container 5 slime_ball 9
replaceitem block ~4 ~-3 ~4 slot.container 9 emerald 12
replaceitem block ~4 ~-3 ~4 slot.container 10 gold_ingot 10
replaceitem block ~4 ~-3 ~4 slot.container 11 iron_ingot 11
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 5
replaceitem block ~4 ~-3 ~4 slot.container 13 elytra 1
replaceitem block ~4 ~-3 ~4 slot.container 14 diamond_sword 1
loot insert ~4 ~-3 ~4 loot "rsf/the_end"
loot insert ~4 ~-3 ~4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~6 ~3 obsidian []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 purpur_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 end_bricks []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 purpur_slab []
setblock ~0 ~10 ~0 diamond_block []
setblock ~0 ~11 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 purpur_block []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 end_rod []
setblock ~2 ~4 ~-6 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-7 ~0 ~0 ~-7 ~10 ~0 purpur_pillar []
fill ~7 ~0 ~0 ~7 ~10 ~0 purpur_pillar []
setblock ~-7 ~11 ~0 obsidian []
setblock ~7 ~11 ~0 obsidian []
setblock ~-7 ~12 ~0 end_rod []
setblock ~7 ~12 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 dragon_breath 5
replaceitem block ~5 ~1 ~1 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~1 slot.container 2 ghast_tear 7
replaceitem block ~5 ~1 ~1 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~1 slot.container 4 bone 15
replaceitem block ~5 ~1 ~1 slot.container 5 shulker_shell 6
replaceitem block ~5 ~1 ~1 slot.container 9 popped_chorus_fruit 13
replaceitem block ~5 ~1 ~1 slot.container 10 diamond 6
replaceitem block ~5 ~1 ~1 slot.container 11 emerald 9
replaceitem block ~5 ~1 ~1 slot.container 12 gold_ingot 14
replaceitem block ~5 ~1 ~1 slot.container 13 iron_ingot 15
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 9
loot insert ~5 ~1 ~1 loot "rsf/the_end"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ghast_tear 2
replaceitem block ~-5 ~1 ~2 slot.container 1 slime_ball 7
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~2 slot.container 3 shulker_shell 9
replaceitem block ~-5 ~1 ~2 slot.container 4 ender_pearl 20
replaceitem block ~-5 ~1 ~2 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~2 slot.container 9 popped_chorus_fruit 18
replaceitem block ~-5 ~1 ~2 slot.container 10 diamond 4
replaceitem block ~-5 ~1 ~2 slot.container 11 emerald 7
replaceitem block ~-5 ~1 ~2 slot.container 12 gold_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 13
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~-5 ~1 ~2 loot "rsf/the_end"
loot insert ~-5 ~1 ~2 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1
summon endermite ~0 ~-2 ~0

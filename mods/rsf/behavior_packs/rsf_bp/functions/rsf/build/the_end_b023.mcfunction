# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4119/4224 | 主题内编号: b023/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双层露台阁楼宝室 (the_end_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 obsidian [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 obsidian [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 purpur_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 end_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 purpur_block []
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

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~3 ~5 obsidian []
fill ~-4 ~1 ~-4 ~4 ~2 ~4 air []
fill ~-6 ~3 ~-6 ~6 ~3 ~6 purpur_slab []
fill ~-4 ~4 ~-4 ~4 ~7 ~4 end_bricks []
fill ~-3 ~4 ~-3 ~3 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 purpur_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 end_bricks []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 purpur_slab []
setblock ~0 ~11 ~0 diamond_block []
setblock ~0 ~12 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 end_bricks []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x8x3) ---
fill ~-6 ~0 ~1 ~-6 ~7 ~1 purpur_pillar []
fill ~6 ~0 ~1 ~6 ~7 ~1 purpur_pillar []
setblock ~-6 ~8 ~1 obsidian []
setblock ~6 ~8 ~1 obsidian []
setblock ~-6 ~9 ~1 end_rod []
setblock ~6 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 15
replaceitem block ~4 ~1 ~3 slot.container 1 shulker_shell 6
replaceitem block ~4 ~1 ~3 slot.container 2 ender_pearl 17
replaceitem block ~4 ~1 ~3 slot.container 3 phantom_membrane 8
replaceitem block ~4 ~1 ~3 slot.container 4 dragon_breath 5
replaceitem block ~4 ~1 ~3 slot.container 5 blaze_rod 8
replaceitem block ~4 ~1 ~3 slot.container 9 elytra 1
replaceitem block ~4 ~1 ~3 slot.container 10 diamond_sword 1
replaceitem block ~4 ~1 ~3 slot.container 11 end_rod 13
replaceitem block ~4 ~1 ~3 slot.container 12 chorus_fruit 22
replaceitem block ~4 ~1 ~3 slot.container 13 popped_chorus_fruit 12
replaceitem block ~4 ~1 ~3 slot.container 14 diamond 5
loot insert ~4 ~1 ~3 loot "rsf/the_end"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ender_pearl 20
replaceitem block ~-4 ~1 ~4 slot.container 1 phantom_membrane 11
replaceitem block ~-4 ~1 ~4 slot.container 2 dragon_breath 8
replaceitem block ~-4 ~1 ~4 slot.container 3 blaze_rod 11
replaceitem block ~-4 ~1 ~4 slot.container 4 ghast_tear 2
replaceitem block ~-4 ~1 ~4 slot.container 5 slime_ball 7
replaceitem block ~-4 ~1 ~4 slot.container 9 elytra 1
replaceitem block ~-4 ~1 ~4 slot.container 10 diamond_sword 1
replaceitem block ~-4 ~1 ~4 slot.container 11 end_rod 11
replaceitem block ~-4 ~1 ~4 slot.container 12 chorus_fruit 20
replaceitem block ~-4 ~1 ~4 slot.container 13 popped_chorus_fruit 17
replaceitem block ~-4 ~1 ~4 slot.container 14 diamond 10
loot insert ~-4 ~1 ~4 loot "rsf/the_end"
loot insert ~-4 ~1 ~4 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

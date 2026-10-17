# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4179/4224 | 主题内编号: b083/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·铁砧锻造与模具工坊 (the_end_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 obsidian [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 obsidian [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 end_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

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

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 obsidian []
fill ~-6 ~1 ~0 ~6 ~4 ~5 end_bricks []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 purpur_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 purpur_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 purpur_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 purpur_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 purpur_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 purpur_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 purpur_pillar []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 purpur_pillar []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 purpur_pillar []
fill ~7 ~0 ~2 ~7 ~4 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~7 ~1 purpur_pillar []
setblock ~-7 ~8 ~1 obsidian []
setblock ~7 ~8 ~1 obsidian []
setblock ~-7 ~9 ~1 end_rod []
setblock ~7 ~9 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 dragon_breath 5
replaceitem block ~5 ~1 ~3 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 2 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 15
replaceitem block ~5 ~1 ~3 slot.container 5 shulker_shell 6
replaceitem block ~5 ~1 ~3 slot.container 9 elytra 1
replaceitem block ~5 ~1 ~3 slot.container 10 diamond_sword 1
replaceitem block ~5 ~1 ~3 slot.container 11 end_rod 10
replaceitem block ~5 ~1 ~3 slot.container 12 chorus_fruit 19
replaceitem block ~5 ~1 ~3 slot.container 13 popped_chorus_fruit 16
replaceitem block ~5 ~1 ~3 slot.container 14 diamond 9
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 2
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 7
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 3 shulker_shell 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 20
replaceitem block ~-5 ~1 ~4 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 9 elytra 1
replaceitem block ~-5 ~1 ~4 slot.container 10 diamond_sword 1
replaceitem block ~-5 ~1 ~4 slot.container 11 end_rod 8
replaceitem block ~-5 ~1 ~4 slot.container 12 chorus_fruit 17
replaceitem block ~-5 ~1 ~4 slot.container 13 popped_chorus_fruit 14
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond 7
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

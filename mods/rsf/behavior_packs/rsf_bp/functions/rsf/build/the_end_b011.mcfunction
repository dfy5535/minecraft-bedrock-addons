# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4107/4224 | 主题内编号: b011/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·深渊困兽角斗地牢 (the_end_dungeon_pit_gladiator)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 obsidian [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 obsidian [] replace water
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

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 obsidian []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 air []
fill ~6 ~1 ~5 ~6 ~6 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 purpur_pillar []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 purpur_pillar []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 purpur_pillar []
fill ~5 ~1 ~4 ~5 ~5 ~4 purpur_pillar []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 purpur_block []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 end_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 diamond_block []
setblock ~0 ~10 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-7 ~0 ~-1 ~-7 ~10 ~-1 purpur_pillar []
fill ~7 ~0 ~-1 ~7 ~10 ~-1 purpur_pillar []
setblock ~-7 ~11 ~-1 obsidian []
setblock ~7 ~11 ~-1 obsidian []
setblock ~-7 ~12 ~-1 end_rod []
setblock ~7 ~12 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 dragon_breath 5
replaceitem block ~5 ~1 ~3 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 2 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 3 slime_ball 12
replaceitem block ~5 ~1 ~3 slot.container 4 bone 15
replaceitem block ~5 ~1 ~3 slot.container 5 shulker_shell 6
replaceitem block ~5 ~1 ~3 slot.container 9 popped_chorus_fruit 17
replaceitem block ~5 ~1 ~3 slot.container 10 diamond 10
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 6
replaceitem block ~5 ~1 ~3 slot.container 12 gold_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 13 iron_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~5 ~1 ~3 loot "rsf/the_end"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 2
replaceitem block ~-5 ~1 ~4 slot.container 1 slime_ball 7
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 3 shulker_shell 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 20
replaceitem block ~-5 ~1 ~4 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 9 popped_chorus_fruit 15
replaceitem block ~-5 ~1 ~4 slot.container 10 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 11
replaceitem block ~-5 ~1 ~4 slot.container 12 gold_ingot 16
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~4 loot "rsf/the_end"
loot insert ~-5 ~1 ~4 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1

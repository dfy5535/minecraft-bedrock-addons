# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4217/4224 | 主题内编号: b121/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·卫城廊柱王座大殿与地宫 (the_end_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 end_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 end_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 purpur_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 end_stone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 end_bricks []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 end_rod []
setblock ~5 ~-5 ~0 end_rod []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 bone 12
replaceitem block ~0 ~-3 ~4 slot.container 1 shulker_shell 11
replaceitem block ~0 ~-3 ~4 slot.container 2 ender_pearl 22
replaceitem block ~0 ~-3 ~4 slot.container 3 phantom_membrane 13
replaceitem block ~0 ~-3 ~4 slot.container 4 dragon_breath 2
replaceitem block ~0 ~-3 ~4 slot.container 5 blaze_rod 5
replaceitem block ~0 ~-3 ~4 slot.container 9 emerald 8
replaceitem block ~0 ~-3 ~4 slot.container 10 gold_ingot 13
replaceitem block ~0 ~-3 ~4 slot.container 11 iron_ingot 14
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_apple 8
replaceitem block ~0 ~-3 ~4 slot.container 13 elytra 1
replaceitem block ~0 ~-3 ~4 slot.container 14 diamond_sword 1
loot insert ~0 ~-3 ~4 loot "rsf/the_end"
loot insert ~0 ~-3 ~4 loot "chests/end_city_treasure"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 10
replaceitem block ~0 ~-3 ~-4 slot.container 1 shulker_shell 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 20
replaceitem block ~0 ~-3 ~-4 slot.container 3 phantom_membrane 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 dragon_breath 8
replaceitem block ~0 ~-3 ~-4 slot.container 5 blaze_rod 11
replaceitem block ~0 ~-3 ~-4 slot.container 9 emerald 7
replaceitem block ~0 ~-3 ~-4 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_ingot 13
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 7
replaceitem block ~0 ~-3 ~-4 slot.container 13 elytra 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 diamond_sword 1
loot insert ~0 ~-3 ~-4 loot "rsf/the_end"
loot insert ~0 ~-3 ~-4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~7 ~6 end_bricks []
fill ~-6 ~1 ~0 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 purpur_pillar []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 purpur_pillar []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 purpur_pillar []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 purpur_pillar []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 purpur_pillar []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 purpur_pillar []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 purpur_pillar []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 purpur_pillar []
fill ~-7 ~7 ~-6 ~7 ~7 ~-1 purpur_block []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-7 ~-8 ~8 ~7 purpur_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-7 ~8 ~8 ~7 purpur_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-6 ~-7 ~9 ~6 purpur_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-6 ~7 ~9 ~6 purpur_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-6 ~6 ~9 ~6 purpur_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 purpur_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 obsidian []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 end_rod []
setblock ~2 ~4 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~1 ~-8 ~10 ~1 purpur_pillar []
fill ~8 ~0 ~1 ~8 ~10 ~1 purpur_pillar []
setblock ~-8 ~11 ~1 obsidian []
setblock ~8 ~11 ~1 obsidian []
setblock ~-8 ~12 ~1 end_rod []
setblock ~8 ~12 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 17
replaceitem block ~6 ~1 ~4 slot.container 1 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 2 dragon_breath 5
replaceitem block ~6 ~1 ~4 slot.container 3 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 4 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 5 slime_ball 12
replaceitem block ~6 ~1 ~4 slot.container 9 popped_chorus_fruit 15
replaceitem block ~6 ~1 ~4 slot.container 10 diamond 8
replaceitem block ~6 ~1 ~4 slot.container 11 emerald 11
replaceitem block ~6 ~1 ~4 slot.container 12 gold_ingot 16
replaceitem block ~6 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 4
loot insert ~6 ~1 ~4 loot "rsf/the_end"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 dragon_breath 8
replaceitem block ~-6 ~1 ~5 slot.container 1 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 2 ghast_tear 2
replaceitem block ~-6 ~1 ~5 slot.container 3 slime_ball 7
replaceitem block ~-6 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-6 ~1 ~5 slot.container 5 shulker_shell 9
replaceitem block ~-6 ~1 ~5 slot.container 9 popped_chorus_fruit 13
replaceitem block ~-6 ~1 ~5 slot.container 10 diamond 6
replaceitem block ~-6 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~-6 ~1 ~5 slot.container 12 gold_ingot 14
replaceitem block ~-6 ~1 ~5 slot.container 13 iron_ingot 15
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 9
loot insert ~-6 ~1 ~5 loot "rsf/the_end"
loot insert ~-6 ~1 ~5 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1
summon shulker ~0 ~-3 ~0

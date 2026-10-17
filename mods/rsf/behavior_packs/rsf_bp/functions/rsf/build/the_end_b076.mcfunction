# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4172/4224 | 主题内编号: b076/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·阶梯高台图腾战阵 (the_end_totem_stepped_altar_ring)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 obsidian []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 end_rod []
setblock ~3 ~-6 ~-2 end_rod []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 ender_pearl 22
replaceitem block ~3 ~-4 ~2 slot.container 1 phantom_membrane 13
replaceitem block ~3 ~-4 ~2 slot.container 2 dragon_breath 2
replaceitem block ~3 ~-4 ~2 slot.container 3 blaze_rod 5
replaceitem block ~3 ~-4 ~2 slot.container 4 ghast_tear 4
replaceitem block ~3 ~-4 ~2 slot.container 5 slime_ball 9
replaceitem block ~3 ~-4 ~2 slot.container 9 iron_ingot 14
replaceitem block ~3 ~-4 ~2 slot.container 10 golden_apple 8
replaceitem block ~3 ~-4 ~2 slot.container 11 elytra 1
replaceitem block ~3 ~-4 ~2 slot.container 12 diamond_sword 1
replaceitem block ~3 ~-4 ~2 slot.container 13 end_rod 9
replaceitem block ~3 ~-4 ~2 slot.container 14 chorus_fruit 18
loot insert ~3 ~-4 ~2 loot "rsf/the_end"
loot insert ~3 ~-4 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 end_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 obsidian []
fill ~-4 ~5 ~-3 ~4 ~7 ~3 end_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 purpur_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 obsidian []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 end_bricks []
fill ~0 ~13 ~0 ~0 ~14 ~0 emerald_block []
setblock ~0 ~15 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 purpur_pillar []
setblock ~0 ~4 ~-7 obsidian []
setblock ~0 ~5 ~-7 end_rod []
fill ~0 ~0 ~7 ~0 ~3 ~7 purpur_pillar []
setblock ~0 ~4 ~7 obsidian []
setblock ~0 ~5 ~7 end_rod []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 purpur_pillar []
setblock ~-8 ~4 ~0 obsidian []
setblock ~-8 ~5 ~0 end_rod []
fill ~8 ~0 ~0 ~8 ~3 ~0 purpur_pillar []
setblock ~8 ~4 ~0 obsidian []
setblock ~8 ~5 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~-1 ~-7 ~10 ~-1 purpur_pillar []
fill ~7 ~0 ~-1 ~7 ~10 ~-1 purpur_pillar []
setblock ~-7 ~11 ~-1 obsidian []
setblock ~7 ~11 ~-1 obsidian []
setblock ~-7 ~12 ~-1 end_rod []
setblock ~7 ~12 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-5 ~1 ~4 smithing_table []
setblock ~-4 ~1 ~4 anvil []
setblock ~4 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 shulker_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 17
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 10 elytra 1
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 12 end_rod 11
replaceitem block ~-5 ~1 ~3 slot.container 13 chorus_fruit 20
replaceitem block ~-5 ~1 ~3 slot.container 14 popped_chorus_fruit 17
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

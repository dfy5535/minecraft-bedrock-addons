# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4126/4224 | 主题内编号: b030/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双坡顶驻军卫戍塔 (the_end_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 obsidian []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

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

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~8 ~4 purpur_block []
fill ~-5 ~1 ~0 ~5 ~7 ~4 obsidian []
fill ~-4 ~1 ~-3 ~-1 ~7 ~3 air []
fill ~-1 ~1 ~1 ~4 ~6 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 purpur_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 purpur_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-4 ~-5 ~10 ~4 purpur_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-4 ~5 ~10 ~4 purpur_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-4 ~4 ~10 ~4 purpur_slab []
fill ~0 ~11 ~-5 ~0 ~11 ~5 end_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 obsidian []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~-6 ~0 ~1 ~-6 ~9 ~1 purpur_pillar []
fill ~6 ~0 ~1 ~6 ~9 ~1 purpur_pillar []
setblock ~-6 ~10 ~1 obsidian []
setblock ~6 ~10 ~1 obsidian []
setblock ~-6 ~11 ~1 end_rod []
setblock ~6 ~11 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 end_rod []
setblock ~-4 ~1 ~3 smithing_table []
setblock ~0 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 15
replaceitem block ~-4 ~1 ~2 slot.container 2 shulker_shell 6
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 17
replaceitem block ~-4 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 5 dragon_breath 5
replaceitem block ~-4 ~1 ~2 slot.container 9 diamond_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 10 end_rod 12
replaceitem block ~-4 ~1 ~2 slot.container 11 chorus_fruit 21
replaceitem block ~-4 ~1 ~2 slot.container 12 popped_chorus_fruit 18
replaceitem block ~-4 ~1 ~2 slot.container 13 diamond 4
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 7
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1

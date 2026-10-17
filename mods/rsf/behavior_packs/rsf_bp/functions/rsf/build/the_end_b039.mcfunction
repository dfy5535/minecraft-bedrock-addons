# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4135/4224 | 主题内编号: b039/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·永恒圣火图腾方尖塔 (the_end_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 9格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 obsidian [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 obsidian [] replace water
fill ~-5 ~1 ~-4 ~5 ~11 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 purpur_block []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 obsidian []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 dragon_breath 2
replaceitem block ~2 ~-2 ~1 slot.container 1 blaze_rod 5
replaceitem block ~2 ~-2 ~1 slot.container 2 ghast_tear 4
replaceitem block ~2 ~-2 ~1 slot.container 3 slime_ball 9
replaceitem block ~2 ~-2 ~1 slot.container 4 bone 12
replaceitem block ~2 ~-2 ~1 slot.container 5 shulker_shell 11
replaceitem block ~2 ~-2 ~1 slot.container 9 popped_chorus_fruit 16
replaceitem block ~2 ~-2 ~1 slot.container 10 diamond 9
replaceitem block ~2 ~-2 ~1 slot.container 11 emerald 12
replaceitem block ~2 ~-2 ~1 slot.container 12 gold_ingot 10
replaceitem block ~2 ~-2 ~1 slot.container 13 iron_ingot 11
replaceitem block ~2 ~-2 ~1 slot.container 14 golden_apple 5
loot insert ~2 ~-2 ~1 loot "rsf/the_end"
loot insert ~2 ~-2 ~1 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~9 ~3 obsidian []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 purpur_pillar []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 purpur_pillar []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 purpur_pillar []
fill ~4 ~1 ~3 ~4 ~9 ~3 purpur_pillar []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 purpur_block []
fill ~-6 ~6 ~-6 ~6 ~6 ~6 cobblestone_wall []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 air []
setblock ~-6 ~6 ~-6 purpur_pillar []
setblock ~-6 ~7 ~-6 end_rod []
setblock ~-6 ~6 ~6 purpur_pillar []
setblock ~-6 ~7 ~6 end_rod []
setblock ~6 ~6 ~-6 purpur_pillar []
setblock ~6 ~7 ~-6 end_rod []
setblock ~6 ~6 ~6 purpur_pillar []
setblock ~6 ~7 ~6 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 purpur_pillar []
setblock ~0 ~4 ~-5 emerald_block []
setblock ~0 ~5 ~-5 end_rod []
fill ~0 ~0 ~5 ~0 ~3 ~5 purpur_pillar []
setblock ~0 ~4 ~5 emerald_block []
setblock ~0 ~5 ~5 end_rod []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 purpur_pillar []
setblock ~-6 ~4 ~0 emerald_block []
setblock ~-6 ~5 ~0 end_rod []
fill ~6 ~0 ~0 ~6 ~3 ~0 purpur_pillar []
setblock ~6 ~4 ~0 emerald_block []
setblock ~6 ~5 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 5x4x4) ---
fill ~-5 ~0 ~-1 ~-5 ~8 ~-1 purpur_pillar []
fill ~5 ~0 ~-1 ~5 ~8 ~-1 purpur_pillar []
setblock ~-5 ~9 ~-1 obsidian []
setblock ~5 ~9 ~-1 obsidian []
setblock ~-5 ~10 ~-1 end_rod []
setblock ~5 ~10 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~8 ~0 end_rod []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 bone 15
replaceitem block ~3 ~1 ~1 slot.container 1 shulker_shell 6
replaceitem block ~3 ~1 ~1 slot.container 2 ender_pearl 17
replaceitem block ~3 ~1 ~1 slot.container 3 phantom_membrane 8
replaceitem block ~3 ~1 ~1 slot.container 4 dragon_breath 5
replaceitem block ~3 ~1 ~1 slot.container 5 blaze_rod 8
replaceitem block ~3 ~1 ~1 slot.container 9 iron_ingot 15
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 9
replaceitem block ~3 ~1 ~1 slot.container 11 elytra 1
replaceitem block ~3 ~1 ~1 slot.container 12 diamond_sword 1
replaceitem block ~3 ~1 ~1 slot.container 13 end_rod 10
replaceitem block ~3 ~1 ~1 slot.container 14 chorus_fruit 19
loot insert ~3 ~1 ~1 loot "rsf/the_end"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 ender_pearl 20
replaceitem block ~-3 ~1 ~2 slot.container 1 phantom_membrane 11
replaceitem block ~-3 ~1 ~2 slot.container 2 dragon_breath 8
replaceitem block ~-3 ~1 ~2 slot.container 3 blaze_rod 11
replaceitem block ~-3 ~1 ~2 slot.container 4 ghast_tear 2
replaceitem block ~-3 ~1 ~2 slot.container 5 slime_ball 7
replaceitem block ~-3 ~1 ~2 slot.container 9 iron_ingot 13
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 7
replaceitem block ~-3 ~1 ~2 slot.container 11 elytra 1
replaceitem block ~-3 ~1 ~2 slot.container 12 diamond_sword 1
replaceitem block ~-3 ~1 ~2 slot.container 13 end_rod 8
replaceitem block ~-3 ~1 ~2 slot.container 14 chorus_fruit 17
loot insert ~-3 ~1 ~2 loot "rsf/the_end"
loot insert ~-3 ~1 ~2 loot "chests/end_city_treasure"
summon phantom ~0 ~1 ~-1
summon shulker ~-1 ~1 ~1
summon enderman ~1 ~1 ~1

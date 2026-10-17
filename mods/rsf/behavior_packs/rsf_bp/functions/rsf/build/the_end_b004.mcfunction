# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4100/4224 | 主题内编号: b004/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双子火盆高台神坛 (the_end_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 purpur_block []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 end_rod []
setblock ~5 ~-5 ~-2 end_rod []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 shulker_shell 11
replaceitem block ~5 ~-3 ~2 slot.container 1 ender_pearl 22
replaceitem block ~5 ~-3 ~2 slot.container 2 phantom_membrane 13
replaceitem block ~5 ~-3 ~2 slot.container 3 dragon_breath 2
replaceitem block ~5 ~-3 ~2 slot.container 4 blaze_rod 5
replaceitem block ~5 ~-3 ~2 slot.container 5 ghast_tear 4
replaceitem block ~5 ~-3 ~2 slot.container 9 golden_apple 3
replaceitem block ~5 ~-3 ~2 slot.container 10 elytra 1
replaceitem block ~5 ~-3 ~2 slot.container 11 diamond_sword 1
replaceitem block ~5 ~-3 ~2 slot.container 12 end_rod 11
replaceitem block ~5 ~-3 ~2 slot.container 13 chorus_fruit 20
replaceitem block ~5 ~-3 ~2 slot.container 14 popped_chorus_fruit 17
loot insert ~5 ~-3 ~2 loot "rsf/the_end"
loot insert ~5 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 end_bricks []
fill ~2 ~1 ~-4 ~7 ~7 ~4 end_bricks []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 obsidian []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-4 ~-7 ~8 ~-4 purpur_pillar []
setblock ~-7 ~9 ~-4 end_rod []
fill ~-7 ~6 ~4 ~-7 ~8 ~4 purpur_pillar []
setblock ~-7 ~9 ~4 end_rod []
fill ~7 ~6 ~-4 ~7 ~8 ~-4 purpur_pillar []
setblock ~7 ~9 ~-4 end_rod []
fill ~7 ~6 ~4 ~7 ~8 ~4 purpur_pillar []
setblock ~7 ~9 ~4 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 obsidian []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 purpur_pillar []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 purpur_pillar []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 purpur_slab []
setblock ~0 ~3 ~-6 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-1 ~-8 ~8 ~-1 purpur_pillar []
fill ~8 ~0 ~-1 ~8 ~8 ~-1 purpur_pillar []
setblock ~-8 ~9 ~-1 obsidian []
setblock ~8 ~9 ~-1 obsidian []
setblock ~-8 ~10 ~-1 end_rod []
setblock ~8 ~10 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~0 ~1 ~0 campfire []
setblock ~-6 ~1 ~3 smoker []
setblock ~6 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 blaze_rod 8
replaceitem block ~-6 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-6 ~1 ~2 slot.container 2 slime_ball 12
replaceitem block ~-6 ~1 ~2 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~2 slot.container 4 shulker_shell 6
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 17
replaceitem block ~-6 ~1 ~2 slot.container 9 chorus_fruit 21
replaceitem block ~-6 ~1 ~2 slot.container 10 popped_chorus_fruit 18
replaceitem block ~-6 ~1 ~2 slot.container 11 diamond 4
replaceitem block ~-6 ~1 ~2 slot.container 12 emerald 7
replaceitem block ~-6 ~1 ~2 slot.container 13 gold_ingot 12
replaceitem block ~-6 ~1 ~2 slot.container 14 iron_ingot 13
loot insert ~-6 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1
summon phantom ~0 ~2 ~0

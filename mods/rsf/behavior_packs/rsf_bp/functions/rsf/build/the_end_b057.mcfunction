# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4153/4224 | 主题内编号: b057/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·中央石棺帝王地下陵寝 (the_end_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 end_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 end_bricks [] replace water
fill ~-7 ~1 ~-7 ~7 ~6 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 purpur_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 end_stone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 purpur_block []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 purpur_block []
setblock ~0 ~-6 ~0 sea_lantern []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 end_rod []
setblock ~2 ~-5 ~0 end_rod []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 dragon_breath 2
replaceitem block ~0 ~-3 ~-4 slot.container 1 blaze_rod 5
replaceitem block ~0 ~-3 ~-4 slot.container 2 ghast_tear 4
replaceitem block ~0 ~-3 ~-4 slot.container 3 slime_ball 9
replaceitem block ~0 ~-3 ~-4 slot.container 4 bone 12
replaceitem block ~0 ~-3 ~-4 slot.container 5 shulker_shell 11
replaceitem block ~0 ~-3 ~-4 slot.container 9 iron_ingot 15
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 9
replaceitem block ~0 ~-3 ~-4 slot.container 11 elytra 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 diamond_sword 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 end_rod 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 chorus_fruit 19
loot insert ~0 ~-3 ~-4 loot "rsf/the_end"
loot insert ~0 ~-3 ~-4 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 end_bricks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 purpur_block []
fill ~0 ~1 ~-6 ~0 ~2 ~6 purpur_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 purpur_block []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 purpur_block []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 obsidian []
setblock ~0 ~8 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~4 ~-2 purpur_pillar []
fill ~-8 ~0 ~2 ~-8 ~4 ~2 purpur_pillar []
fill ~8 ~0 ~-2 ~8 ~4 ~-2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~4 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~-3 ~-7 ~6 ~-3 purpur_pillar []
fill ~7 ~0 ~-3 ~7 ~6 ~-3 purpur_pillar []
setblock ~-7 ~7 ~-3 obsidian []
setblock ~7 ~7 ~-3 obsidian []
setblock ~-7 ~8 ~-3 end_rod []
setblock ~7 ~8 ~-3 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~3 ~0 end_rod []
setblock ~-4 ~1 ~3 blast_furnace []
setblock ~-3 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 17
replaceitem block ~5 ~1 ~4 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~4 slot.container 2 dragon_breath 5
replaceitem block ~5 ~1 ~4 slot.container 3 blaze_rod 8
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~4 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~4 slot.container 9 end_rod 10
replaceitem block ~5 ~1 ~4 slot.container 10 chorus_fruit 19
replaceitem block ~5 ~1 ~4 slot.container 11 popped_chorus_fruit 16
replaceitem block ~5 ~1 ~4 slot.container 12 diamond 9
replaceitem block ~5 ~1 ~4 slot.container 13 emerald 12
replaceitem block ~5 ~1 ~4 slot.container 14 gold_ingot 10
loot insert ~5 ~1 ~4 loot "rsf/the_end"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 dragon_breath 8
replaceitem block ~-5 ~1 ~5 slot.container 1 blaze_rod 11
replaceitem block ~-5 ~1 ~5 slot.container 2 ghast_tear 2
replaceitem block ~-5 ~1 ~5 slot.container 3 slime_ball 7
replaceitem block ~-5 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~5 slot.container 5 shulker_shell 9
replaceitem block ~-5 ~1 ~5 slot.container 9 end_rod 8
replaceitem block ~-5 ~1 ~5 slot.container 10 chorus_fruit 17
replaceitem block ~-5 ~1 ~5 slot.container 11 popped_chorus_fruit 14
replaceitem block ~-5 ~1 ~5 slot.container 12 diamond 7
replaceitem block ~-5 ~1 ~5 slot.container 13 emerald 10
replaceitem block ~-5 ~1 ~5 slot.container 14 gold_ingot 15
loot insert ~-5 ~1 ~5 loot "rsf/the_end"
loot insert ~-5 ~1 ~5 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1

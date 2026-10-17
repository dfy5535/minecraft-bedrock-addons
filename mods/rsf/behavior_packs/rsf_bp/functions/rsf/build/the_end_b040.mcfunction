# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4136/4224 | 主题内编号: b040/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·崩裂远古符文石碑 (the_end_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 end_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 end_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_block []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 end_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 blaze_rod 5
replaceitem block ~3 ~-3 ~2 slot.container 1 ghast_tear 4
replaceitem block ~3 ~-3 ~2 slot.container 2 slime_ball 9
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 12
replaceitem block ~3 ~-3 ~2 slot.container 4 shulker_shell 11
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 22
replaceitem block ~3 ~-3 ~2 slot.container 9 diamond 6
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 9
replaceitem block ~3 ~-3 ~2 slot.container 11 gold_ingot 14
replaceitem block ~3 ~-3 ~2 slot.container 12 iron_ingot 15
replaceitem block ~3 ~-3 ~2 slot.container 13 golden_apple 9
replaceitem block ~3 ~-3 ~2 slot.container 14 elytra 1
loot insert ~3 ~-3 ~2 loot "rsf/the_end"
loot insert ~3 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 end_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 obsidian []
fill ~-3 ~5 ~-2 ~3 ~7 ~2 end_bricks []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 purpur_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 purpur_block []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 end_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 diamond_block []
setblock ~0 ~10 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~6 ~-2 purpur_pillar []
fill ~-6 ~0 ~2 ~-6 ~6 ~2 purpur_pillar []
fill ~6 ~0 ~-2 ~6 ~6 ~-2 purpur_pillar []
fill ~6 ~0 ~2 ~6 ~6 ~2 purpur_pillar []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-6 ~0 ~-1 ~-6 ~9 ~-1 purpur_pillar []
fill ~6 ~0 ~-1 ~6 ~9 ~-1 purpur_pillar []
setblock ~-6 ~10 ~-1 obsidian []
setblock ~6 ~10 ~-1 obsidian []
setblock ~-6 ~11 ~-1 end_rod []
setblock ~6 ~11 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 emerald_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 shulker_shell 6
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 17
replaceitem block ~-4 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 3 dragon_breath 5
replaceitem block ~-4 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 9 diamond_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 10 end_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 11 chorus_fruit 17
replaceitem block ~-4 ~1 ~2 slot.container 12 popped_chorus_fruit 14
replaceitem block ~-4 ~1 ~2 slot.container 13 diamond 7
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 10
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

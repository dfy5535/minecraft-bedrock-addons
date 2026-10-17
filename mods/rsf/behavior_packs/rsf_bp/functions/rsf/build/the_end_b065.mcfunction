# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4161/4224 | 主题内编号: b065/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·断柱露天古神庙废墟 (the_end_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 end_bricks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 end_bricks [] replace water
fill ~-7 ~1 ~-7 ~7 ~7 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 purpur_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 end_stone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 obsidian []
setblock ~0 ~0 ~0 obsidian []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 purpur_block []
fill ~-6 ~1 ~-6 ~-6 ~4 ~-6 purpur_pillar []
fill ~-6 ~1 ~6 ~-6 ~4 ~6 purpur_pillar []
fill ~-4 ~1 ~-6 ~-4 ~4 ~-6 purpur_pillar []
fill ~-4 ~1 ~6 ~-4 ~4 ~6 purpur_pillar []
fill ~-2 ~1 ~-6 ~-2 ~4 ~-6 purpur_pillar []
fill ~-2 ~1 ~6 ~-2 ~4 ~6 purpur_pillar []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 purpur_pillar []
fill ~0 ~1 ~6 ~0 ~4 ~6 purpur_pillar []
fill ~2 ~1 ~-6 ~2 ~4 ~-6 purpur_pillar []
fill ~2 ~1 ~6 ~2 ~4 ~6 purpur_pillar []
fill ~4 ~1 ~-6 ~4 ~4 ~-6 purpur_pillar []
fill ~4 ~1 ~6 ~4 ~4 ~6 purpur_pillar []
fill ~6 ~1 ~-6 ~6 ~4 ~-6 purpur_pillar []
fill ~6 ~1 ~6 ~6 ~4 ~6 purpur_pillar []
fill ~-6 ~1 ~-4 ~-6 ~4 ~-4 purpur_pillar []
fill ~6 ~1 ~-4 ~6 ~4 ~-4 purpur_pillar []
fill ~-6 ~1 ~-2 ~-6 ~4 ~-2 purpur_pillar []
fill ~6 ~1 ~-2 ~6 ~4 ~-2 purpur_pillar []
fill ~-6 ~1 ~0 ~-6 ~4 ~0 purpur_pillar []
fill ~6 ~1 ~0 ~6 ~4 ~0 purpur_pillar []
fill ~-6 ~1 ~2 ~-6 ~4 ~2 purpur_pillar []
fill ~6 ~1 ~2 ~6 ~4 ~2 purpur_pillar []
fill ~-6 ~1 ~4 ~-6 ~4 ~4 purpur_pillar []
fill ~6 ~1 ~4 ~6 ~4 ~4 purpur_pillar []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 purpur_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 purpur_pillar []
setblock ~-8 ~4 ~-8 end_rod []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 purpur_pillar []
setblock ~-8 ~4 ~8 end_rod []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 purpur_pillar []
setblock ~8 ~4 ~-8 end_rod []
fill ~8 ~0 ~8 ~8 ~3 ~8 purpur_pillar []
setblock ~8 ~4 ~8 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x9x5) ---
fill ~-7 ~0 ~-1 ~-7 ~9 ~-1 purpur_pillar []
fill ~7 ~0 ~-1 ~7 ~9 ~-1 purpur_pillar []
setblock ~-7 ~10 ~-1 obsidian []
setblock ~7 ~10 ~-1 obsidian []
setblock ~-7 ~11 ~-1 end_rod []
setblock ~7 ~11 ~-1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 end_rod []
setblock ~0 ~1 ~0 obsidian []
setblock ~0 ~2 ~0 end_rod []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 17
replaceitem block ~5 ~1 ~4 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~4 slot.container 2 dragon_breath 5
replaceitem block ~5 ~1 ~4 slot.container 3 blaze_rod 8
replaceitem block ~5 ~1 ~4 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~4 slot.container 5 slime_ball 12
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 9
replaceitem block ~5 ~1 ~4 slot.container 10 gold_ingot 14
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 15
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 9
replaceitem block ~5 ~1 ~4 slot.container 13 elytra 1
replaceitem block ~5 ~1 ~4 slot.container 14 diamond_sword 1
loot insert ~5 ~1 ~4 loot "rsf/the_end"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 dragon_breath 8
replaceitem block ~-5 ~1 ~5 slot.container 1 blaze_rod 11
replaceitem block ~-5 ~1 ~5 slot.container 2 ghast_tear 2
replaceitem block ~-5 ~1 ~5 slot.container 3 slime_ball 7
replaceitem block ~-5 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~5 slot.container 5 shulker_shell 9
replaceitem block ~-5 ~1 ~5 slot.container 9 emerald 7
replaceitem block ~-5 ~1 ~5 slot.container 10 gold_ingot 12
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_ingot 13
replaceitem block ~-5 ~1 ~5 slot.container 12 golden_apple 7
replaceitem block ~-5 ~1 ~5 slot.container 13 elytra 1
replaceitem block ~-5 ~1 ~5 slot.container 14 diamond_sword 1
loot insert ~-5 ~1 ~5 loot "rsf/the_end"
loot insert ~-5 ~1 ~5 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1

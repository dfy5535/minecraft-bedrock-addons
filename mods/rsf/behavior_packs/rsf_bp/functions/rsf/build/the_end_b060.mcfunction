# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4156/4224 | 主题内编号: b060/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·圆形穹顶万骨祠堂 (the_end_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 end_bricks []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 end_rod []
setblock ~4 ~-6 ~0 end_rod []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 phantom_membrane 13
replaceitem block ~0 ~-4 ~3 slot.container 1 dragon_breath 2
replaceitem block ~0 ~-4 ~3 slot.container 2 blaze_rod 5
replaceitem block ~0 ~-4 ~3 slot.container 3 ghast_tear 4
replaceitem block ~0 ~-4 ~3 slot.container 4 slime_ball 9
replaceitem block ~0 ~-4 ~3 slot.container 5 bone 12
replaceitem block ~0 ~-4 ~3 slot.container 9 chorus_fruit 20
replaceitem block ~0 ~-4 ~3 slot.container 10 popped_chorus_fruit 17
replaceitem block ~0 ~-4 ~3 slot.container 11 diamond 10
replaceitem block ~0 ~-4 ~3 slot.container 12 emerald 6
replaceitem block ~0 ~-4 ~3 slot.container 13 gold_ingot 11
replaceitem block ~0 ~-4 ~3 slot.container 14 iron_ingot 12
loot insert ~0 ~-4 ~3 loot "rsf/the_end"
loot insert ~0 ~-4 ~3 loot "chests/end_city_treasure"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 phantom_membrane 11
replaceitem block ~0 ~-4 ~-3 slot.container 1 dragon_breath 8
replaceitem block ~0 ~-4 ~-3 slot.container 2 blaze_rod 11
replaceitem block ~0 ~-4 ~-3 slot.container 3 ghast_tear 2
replaceitem block ~0 ~-4 ~-3 slot.container 4 slime_ball 7
replaceitem block ~0 ~-4 ~-3 slot.container 5 bone 10
replaceitem block ~0 ~-4 ~-3 slot.container 9 chorus_fruit 19
replaceitem block ~0 ~-4 ~-3 slot.container 10 popped_chorus_fruit 16
replaceitem block ~0 ~-4 ~-3 slot.container 11 diamond 9
replaceitem block ~0 ~-4 ~-3 slot.container 12 emerald 12
replaceitem block ~0 ~-4 ~-3 slot.container 13 gold_ingot 10
replaceitem block ~0 ~-4 ~-3 slot.container 14 iron_ingot 11
loot insert ~0 ~-4 ~-3 loot "rsf/the_end"
loot insert ~0 ~-4 ~-3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 obsidian []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 purpur_pillar []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 purpur_pillar []
fill ~-4 ~1 ~-5 ~-4 ~5 ~-5 purpur_pillar []
fill ~-4 ~1 ~5 ~-4 ~5 ~5 purpur_pillar []
fill ~-2 ~1 ~-5 ~-2 ~5 ~-5 purpur_pillar []
fill ~-2 ~1 ~5 ~-2 ~5 ~5 purpur_pillar []
fill ~0 ~1 ~-5 ~0 ~5 ~-5 purpur_pillar []
fill ~0 ~1 ~5 ~0 ~5 ~5 purpur_pillar []
fill ~2 ~1 ~-5 ~2 ~5 ~-5 purpur_pillar []
fill ~2 ~1 ~5 ~2 ~5 ~5 purpur_pillar []
fill ~4 ~1 ~-5 ~4 ~5 ~-5 purpur_pillar []
fill ~4 ~1 ~5 ~4 ~5 ~5 purpur_pillar []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 purpur_pillar []
fill ~6 ~1 ~5 ~6 ~5 ~5 purpur_pillar []
fill ~-6 ~1 ~-3 ~-6 ~5 ~-3 purpur_pillar []
fill ~6 ~1 ~-3 ~6 ~5 ~-3 purpur_pillar []
fill ~-6 ~1 ~-1 ~-6 ~5 ~-1 purpur_pillar []
fill ~6 ~1 ~-1 ~6 ~5 ~-1 purpur_pillar []
fill ~-6 ~1 ~1 ~-6 ~5 ~1 purpur_pillar []
fill ~6 ~1 ~1 ~6 ~5 ~1 purpur_pillar []
fill ~-6 ~1 ~3 ~-6 ~5 ~3 purpur_pillar []
fill ~6 ~1 ~3 ~6 ~5 ~3 purpur_pillar []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 purpur_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 obsidian []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 purpur_slab []
setblock ~0 ~11 ~0 sea_lantern []
setblock ~0 ~12 ~0 end_rod []

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

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 purpur_pillar []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 purpur_pillar []
setblock ~-7 ~10 ~-2 obsidian []
setblock ~7 ~10 ~-2 obsidian []
setblock ~-7 ~11 ~-2 end_rod []
setblock ~7 ~11 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 emerald_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 shulker_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 17
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 10 end_rod 14
replaceitem block ~-5 ~1 ~3 slot.container 11 chorus_fruit 16
replaceitem block ~-5 ~1 ~3 slot.container 12 popped_chorus_fruit 13
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 6
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 9
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4146/4224 | 主题内编号: b050/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·L型探险家补给驿站 (the_end_outpost_l_waystation)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 purpur_block [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 purpur_block [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 obsidian []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 end_bricks []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 purpur_block []
fill ~-6 ~1 ~0 ~6 ~4 ~5 obsidian []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 purpur_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 purpur_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 purpur_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 purpur_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 purpur_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 end_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 obsidian []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 purpur_pillar []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 purpur_pillar []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 purpur_slab []
setblock ~0 ~3 ~-7 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~-7 ~0 ~-2 ~-7 ~9 ~-2 purpur_pillar []
fill ~7 ~0 ~-2 ~7 ~9 ~-2 purpur_pillar []
setblock ~-7 ~10 ~-2 obsidian []
setblock ~7 ~10 ~-2 obsidian []
setblock ~-7 ~11 ~-2 end_rod []
setblock ~7 ~11 ~-2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 end_rod []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 diamond_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 1 dragon_breath 5
replaceitem block ~-5 ~1 ~3 slot.container 2 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 4 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond_sword 1
replaceitem block ~-5 ~1 ~3 slot.container 10 end_rod 11
replaceitem block ~-5 ~1 ~3 slot.container 11 chorus_fruit 20
replaceitem block ~-5 ~1 ~3 slot.container 12 popped_chorus_fruit 17
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 10
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 6
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1

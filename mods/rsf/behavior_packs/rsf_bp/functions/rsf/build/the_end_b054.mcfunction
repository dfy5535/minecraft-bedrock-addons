# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4150/4224 | 主题内编号: b054/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·切石与伐木工匠棚屋 (the_end_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 purpur_block [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 purpur_block [] replace water
fill ~-7 ~1 ~-5 ~7 ~7 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 purpur_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 obsidian []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 end_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~6 ~4 purpur_block []
fill ~2 ~1 ~-4 ~6 ~6 ~4 purpur_block []
fill ~-5 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 end_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-5 ~-7 ~6 ~5 purpur_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-5 ~7 ~6 ~5 purpur_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-4 ~-6 ~7 ~4 purpur_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-4 ~6 ~7 ~4 purpur_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-4 ~5 ~7 ~4 purpur_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 end_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 obsidian []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 purpur_pillar []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 purpur_pillar []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 purpur_slab []
setblock ~0 ~3 ~-6 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-7 ~0 ~1 ~-7 ~8 ~1 purpur_pillar []
fill ~7 ~0 ~1 ~7 ~8 ~1 purpur_pillar []
setblock ~-7 ~9 ~1 obsidian []
setblock ~7 ~9 ~1 obsidian []
setblock ~-7 ~10 ~1 end_rod []
setblock ~7 ~10 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 end_rod []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 slime_ball 12
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 15
replaceitem block ~-5 ~1 ~2 slot.container 2 shulker_shell 6
replaceitem block ~-5 ~1 ~2 slot.container 3 ender_pearl 17
replaceitem block ~-5 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~2 slot.container 5 dragon_breath 5
replaceitem block ~-5 ~1 ~2 slot.container 9 chorus_fruit 22
replaceitem block ~-5 ~1 ~2 slot.container 10 popped_chorus_fruit 12
replaceitem block ~-5 ~1 ~2 slot.container 11 diamond 5
replaceitem block ~-5 ~1 ~2 slot.container 12 emerald 8
replaceitem block ~-5 ~1 ~2 slot.container 13 gold_ingot 13
replaceitem block ~-5 ~1 ~2 slot.container 14 iron_ingot 14
loot insert ~-5 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1

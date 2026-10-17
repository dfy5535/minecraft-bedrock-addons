# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4202/4224 | 主题内编号: b106/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·琉璃穹顶魔药炼金室 (the_end_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 purpur_block [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 obsidian []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 end_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 end_rod []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 blaze_rod 5
replaceitem block ~-3 ~-3 ~2 slot.container 1 ghast_tear 4
replaceitem block ~-3 ~-3 ~2 slot.container 2 slime_ball 9
replaceitem block ~-3 ~-3 ~2 slot.container 3 bone 12
replaceitem block ~-3 ~-3 ~2 slot.container 4 shulker_shell 11
replaceitem block ~-3 ~-3 ~2 slot.container 5 ender_pearl 22
replaceitem block ~-3 ~-3 ~2 slot.container 9 diamond 7
replaceitem block ~-3 ~-3 ~2 slot.container 10 emerald 10
replaceitem block ~-3 ~-3 ~2 slot.container 11 gold_ingot 15
replaceitem block ~-3 ~-3 ~2 slot.container 12 iron_ingot 16
replaceitem block ~-3 ~-3 ~2 slot.container 13 golden_apple 3
replaceitem block ~-3 ~-3 ~2 slot.container 14 elytra 1
loot insert ~-3 ~-3 ~2 loot "rsf/the_end"
loot insert ~-3 ~-3 ~2 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 purpur_block []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 purpur_pillar []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 purpur_pillar []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 purpur_pillar []
fill ~4 ~1 ~3 ~4 ~6 ~3 purpur_pillar []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 purpur_block []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 obsidian []
fill ~0 ~13 ~0 ~0 ~14 ~0 diamond_block []
setblock ~0 ~15 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 purpur_pillar []
setblock ~-7 ~4 ~-6 end_rod []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 purpur_pillar []
setblock ~-7 ~4 ~6 end_rod []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 purpur_pillar []
setblock ~7 ~4 ~-6 end_rod []
fill ~7 ~0 ~6 ~7 ~3 ~6 purpur_pillar []
setblock ~7 ~4 ~6 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~-6 ~0 ~1 ~-6 ~10 ~1 purpur_pillar []
fill ~6 ~0 ~1 ~6 ~10 ~1 purpur_pillar []
setblock ~-6 ~11 ~1 obsidian []
setblock ~6 ~11 ~1 obsidian []
setblock ~-6 ~12 ~1 end_rod []
setblock ~6 ~12 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 sea_lantern []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 1 dragon_breath 5
replaceitem block ~-4 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 4 slime_ball 12
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 15
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 5
replaceitem block ~-4 ~1 ~2 slot.container 10 elytra 1
replaceitem block ~-4 ~1 ~2 slot.container 11 diamond_sword 1
replaceitem block ~-4 ~1 ~2 slot.container 12 end_rod 13
replaceitem block ~-4 ~1 ~2 slot.container 13 chorus_fruit 22
replaceitem block ~-4 ~1 ~2 slot.container 14 popped_chorus_fruit 12
loot insert ~-4 ~1 ~2 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon shulker ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

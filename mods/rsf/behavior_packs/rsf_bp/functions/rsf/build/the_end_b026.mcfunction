# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4122/4224 | 主题内编号: b026/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·尖顶信标引航高塔 (the_end_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 purpur_block [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 purpur_block [] replace water
fill ~-5 ~1 ~-4 ~5 ~12 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 purpur_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 obsidian []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 end_bricks []
setblock ~0 ~0 ~0 sea_lantern []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 obsidian []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 slime_ball 9
replaceitem block ~2 ~-3 ~1 slot.container 1 bone 12
replaceitem block ~2 ~-3 ~1 slot.container 2 shulker_shell 11
replaceitem block ~2 ~-3 ~1 slot.container 3 ender_pearl 22
replaceitem block ~2 ~-3 ~1 slot.container 4 phantom_membrane 13
replaceitem block ~2 ~-3 ~1 slot.container 5 dragon_breath 2
replaceitem block ~2 ~-3 ~1 slot.container 9 chorus_fruit 18
replaceitem block ~2 ~-3 ~1 slot.container 10 popped_chorus_fruit 15
replaceitem block ~2 ~-3 ~1 slot.container 11 diamond 8
replaceitem block ~2 ~-3 ~1 slot.container 12 emerald 11
replaceitem block ~2 ~-3 ~1 slot.container 13 gold_ingot 16
replaceitem block ~2 ~-3 ~1 slot.container 14 iron_ingot 10
loot insert ~2 ~-3 ~1 loot "rsf/the_end"
loot insert ~2 ~-3 ~1 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 purpur_block []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~11 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~11 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~11 ~3 air []
fill ~4 ~1 ~3 ~4 ~11 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~10 ~-2 purpur_pillar []
fill ~3 ~1 ~-2 ~3 ~10 ~-2 purpur_pillar []
fill ~-3 ~1 ~2 ~-3 ~10 ~2 purpur_pillar []
fill ~3 ~1 ~2 ~3 ~10 ~2 purpur_pillar []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 end_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 purpur_block []
fill ~0 ~16 ~0 ~0 ~17 ~0 sea_lantern []
setblock ~0 ~18 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 end_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 5x6x6) ---
fill ~-5 ~0 ~1 ~-5 ~10 ~1 purpur_pillar []
fill ~5 ~0 ~1 ~5 ~10 ~1 purpur_pillar []
setblock ~-5 ~11 ~1 obsidian []
setblock ~5 ~11 ~1 obsidian []
setblock ~-5 ~12 ~1 end_rod []
setblock ~5 ~12 ~1 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 sea_lantern []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 phantom_membrane 8
replaceitem block ~-3 ~1 ~1 slot.container 1 dragon_breath 5
replaceitem block ~-3 ~1 ~1 slot.container 2 blaze_rod 8
replaceitem block ~-3 ~1 ~1 slot.container 3 ghast_tear 7
replaceitem block ~-3 ~1 ~1 slot.container 4 slime_ball 12
replaceitem block ~-3 ~1 ~1 slot.container 5 bone 15
replaceitem block ~-3 ~1 ~1 slot.container 9 golden_apple 9
replaceitem block ~-3 ~1 ~1 slot.container 10 elytra 1
replaceitem block ~-3 ~1 ~1 slot.container 11 diamond_sword 1
replaceitem block ~-3 ~1 ~1 slot.container 12 end_rod 10
replaceitem block ~-3 ~1 ~1 slot.container 13 chorus_fruit 19
replaceitem block ~-3 ~1 ~1 slot.container 14 popped_chorus_fruit 16
loot insert ~-3 ~1 ~1 loot "rsf/the_end"
summon endermite ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1

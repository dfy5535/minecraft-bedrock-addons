# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4180/4224 | 主题内编号: b084/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·露天采石场与矿道库 (the_end_mine_sunken_quarry)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 5格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 end_bricks [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 end_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 purpur_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 purpur_block []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 end_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 end_rod []
setblock ~4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~3 slot.container 0 shulker_shell 11
replaceitem block ~4 ~-4 ~3 slot.container 1 ender_pearl 22
replaceitem block ~4 ~-4 ~3 slot.container 2 phantom_membrane 13
replaceitem block ~4 ~-4 ~3 slot.container 3 dragon_breath 2
replaceitem block ~4 ~-4 ~3 slot.container 4 blaze_rod 5
replaceitem block ~4 ~-4 ~3 slot.container 5 ghast_tear 4
replaceitem block ~4 ~-4 ~3 slot.container 9 gold_ingot 14
replaceitem block ~4 ~-4 ~3 slot.container 10 iron_ingot 15
replaceitem block ~4 ~-4 ~3 slot.container 11 golden_apple 9
replaceitem block ~4 ~-4 ~3 slot.container 12 elytra 1
replaceitem block ~4 ~-4 ~3 slot.container 13 diamond_sword 1
replaceitem block ~4 ~-4 ~3 slot.container 14 end_rod 10
loot insert ~4 ~-4 ~3 loot "rsf/the_end"
loot insert ~4 ~-4 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 end_bricks []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 obsidian []
fill ~0 ~1 ~-5 ~0 ~2 ~5 obsidian []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 obsidian []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 end_bricks []
fill ~0 ~14 ~0 ~0 ~15 ~0 emerald_block []
setblock ~0 ~16 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~0 ~2 ~-7 ~8 ~2 purpur_pillar []
fill ~7 ~0 ~2 ~7 ~8 ~2 purpur_pillar []
setblock ~-7 ~9 ~2 obsidian []
setblock ~7 ~9 ~2 obsidian []
setblock ~-7 ~10 ~2 end_rod []
setblock ~7 ~10 ~2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~3 ~0 end_rod []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-5 ~1 ~3 slot.container 4 shulker_shell 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 17
replaceitem block ~-5 ~1 ~3 slot.container 9 chorus_fruit 17
replaceitem block ~-5 ~1 ~3 slot.container 10 popped_chorus_fruit 14
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond 7
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 10
replaceitem block ~-5 ~1 ~3 slot.container 13 gold_ingot 15
replaceitem block ~-5 ~1 ~3 slot.container 14 iron_ingot 16
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon endermite ~1 ~1 ~1

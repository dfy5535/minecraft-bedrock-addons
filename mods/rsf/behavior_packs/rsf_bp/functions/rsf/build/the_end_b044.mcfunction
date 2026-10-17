# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4140/4224 | 主题内编号: b044/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双子祭台勇士角斗场 (the_end_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 end_bricks [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 end_bricks [] replace water
fill ~-8 ~1 ~-6 ~8 ~7 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 purpur_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 purpur_block []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 end_stone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 end_bricks []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 end_rod []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 shulker_shell 11
replaceitem block ~5 ~-3 ~3 slot.container 1 ender_pearl 22
replaceitem block ~5 ~-3 ~3 slot.container 2 phantom_membrane 13
replaceitem block ~5 ~-3 ~3 slot.container 3 dragon_breath 2
replaceitem block ~5 ~-3 ~3 slot.container 4 blaze_rod 5
replaceitem block ~5 ~-3 ~3 slot.container 5 ghast_tear 4
replaceitem block ~5 ~-3 ~3 slot.container 9 gold_ingot 16
replaceitem block ~5 ~-3 ~3 slot.container 10 iron_ingot 10
replaceitem block ~5 ~-3 ~3 slot.container 11 golden_apple 4
replaceitem block ~5 ~-3 ~3 slot.container 12 elytra 1
replaceitem block ~5 ~-3 ~3 slot.container 13 diamond_sword 1
replaceitem block ~5 ~-3 ~3 slot.container 14 end_rod 12
loot insert ~5 ~-3 ~3 loot "rsf/the_end"
loot insert ~5 ~-3 ~3 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~6 ~5 end_bricks []
fill ~2 ~1 ~-5 ~7 ~6 ~5 end_bricks []
fill ~-6 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~6 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 obsidian []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-5 ~-7 ~7 ~-5 purpur_pillar []
setblock ~-7 ~8 ~-5 end_rod []
fill ~-7 ~5 ~5 ~-7 ~7 ~5 purpur_pillar []
setblock ~-7 ~8 ~5 end_rod []
fill ~7 ~5 ~-5 ~7 ~7 ~-5 purpur_pillar []
setblock ~7 ~8 ~-5 end_rod []
fill ~7 ~5 ~5 ~7 ~7 ~5 purpur_pillar []
setblock ~7 ~8 ~5 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 purpur_block []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~2 ~-8 ~8 ~2 purpur_pillar []
fill ~8 ~0 ~2 ~8 ~8 ~2 purpur_pillar []
setblock ~-8 ~9 ~2 obsidian []
setblock ~8 ~9 ~2 obsidian []
setblock ~-8 ~10 ~2 end_rod []
setblock ~8 ~10 ~2 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 end_rod []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 blaze_rod 8
replaceitem block ~-6 ~1 ~3 slot.container 1 ghast_tear 7
replaceitem block ~-6 ~1 ~3 slot.container 2 slime_ball 12
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 15
replaceitem block ~-6 ~1 ~3 slot.container 4 shulker_shell 6
replaceitem block ~-6 ~1 ~3 slot.container 5 ender_pearl 17
replaceitem block ~-6 ~1 ~3 slot.container 9 chorus_fruit 19
replaceitem block ~-6 ~1 ~3 slot.container 10 popped_chorus_fruit 16
replaceitem block ~-6 ~1 ~3 slot.container 11 diamond 9
replaceitem block ~-6 ~1 ~3 slot.container 12 emerald 12
replaceitem block ~-6 ~1 ~3 slot.container 13 gold_ingot 10
replaceitem block ~-6 ~1 ~3 slot.container 14 iron_ingot 11
loot insert ~-6 ~1 ~3 loot "rsf/the_end"
summon shulker ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1

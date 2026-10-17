# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #4181/4224 | 主题内编号: b085/128
# 地形主题 #33: 末路之地紫珀圣殿与虚空宝库 (the_end) —— 带紫珀悬挑飞船翼廊与末地烛虚空塔
# 建筑名称: 末地紫珀舰系·双子烟囱砖石窑厂 (the_end_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: the_end
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 end_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 end_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 purpur_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 end_stone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 obsidian []
setblock ~0 ~0 ~0 obsidian []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 end_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 diamond_block []
setblock ~0 ~-5 ~0 end_rod []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 bone 12
replaceitem block ~4 ~-2 ~0 slot.container 1 shulker_shell 11
replaceitem block ~4 ~-2 ~0 slot.container 2 ender_pearl 22
replaceitem block ~4 ~-2 ~0 slot.container 3 phantom_membrane 13
replaceitem block ~4 ~-2 ~0 slot.container 4 dragon_breath 2
replaceitem block ~4 ~-2 ~0 slot.container 5 blaze_rod 5
replaceitem block ~4 ~-2 ~0 slot.container 9 iron_ingot 16
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 3
replaceitem block ~4 ~-2 ~0 slot.container 11 elytra 1
replaceitem block ~4 ~-2 ~0 slot.container 12 diamond_sword 1
replaceitem block ~4 ~-2 ~0 slot.container 13 end_rod 11
replaceitem block ~4 ~-2 ~0 slot.container 14 chorus_fruit 20
loot insert ~4 ~-2 ~0 loot "rsf/the_end"
loot insert ~4 ~-2 ~0 loot "chests/end_city_treasure"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 end_bricks []
fill ~2 ~1 ~-4 ~6 ~8 ~4 end_bricks []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 purpur_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 purpur_block []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 end_bricks []
fill ~0 ~13 ~0 ~0 ~14 ~0 obsidian []
setblock ~0 ~15 ~0 end_rod []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 purpur_block []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 purpur_pillar []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 purpur_pillar []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 purpur_slab []
setblock ~0 ~3 ~-6 end_rod []

# --- [阶段 5.5] 地形专属标志性结构 (the_end 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~0 ~-7 ~9 ~0 purpur_pillar []
fill ~7 ~0 ~0 ~7 ~9 ~0 purpur_pillar []
setblock ~-7 ~10 ~0 obsidian []
setblock ~7 ~10 ~0 obsidian []
setblock ~-7 ~11 ~0 end_rod []
setblock ~7 ~11 ~0 end_rod []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 end_rod []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ghast_tear 7
replaceitem block ~5 ~1 ~2 slot.container 1 slime_ball 12
replaceitem block ~5 ~1 ~2 slot.container 2 bone 15
replaceitem block ~5 ~1 ~2 slot.container 3 shulker_shell 6
replaceitem block ~5 ~1 ~2 slot.container 4 ender_pearl 17
replaceitem block ~5 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~2 slot.container 9 emerald 8
replaceitem block ~5 ~1 ~2 slot.container 10 gold_ingot 13
replaceitem block ~5 ~1 ~2 slot.container 11 iron_ingot 14
replaceitem block ~5 ~1 ~2 slot.container 12 golden_apple 8
replaceitem block ~5 ~1 ~2 slot.container 13 elytra 1
replaceitem block ~5 ~1 ~2 slot.container 14 diamond_sword 1
loot insert ~5 ~1 ~2 loot "rsf/the_end"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 1 shulker_shell 9
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 20
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~3 slot.container 4 dragon_breath 8
replaceitem block ~-5 ~1 ~3 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~3 slot.container 9 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 13 elytra 1
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond_sword 1
loot insert ~-5 ~1 ~3 loot "rsf/the_end"
loot insert ~-5 ~1 ~3 loot "chests/end_city_treasure"
summon enderman ~0 ~1 ~-1
summon endermite ~-1 ~1 ~1
summon phantom ~1 ~1 ~1
summon shulker ~0 ~-2 ~0

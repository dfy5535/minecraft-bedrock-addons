# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2317/4224 | 主题内编号: b013/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·地底熔炉苦工地牢 (stony_peaks_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[open_colonnade] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 deepslate_bricks []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~4 ~-3 ~4 slot.container 1 gunpowder 15
replaceitem block ~4 ~-3 ~4 slot.container 2 string 8
replaceitem block ~4 ~-3 ~4 slot.container 3 arrow 17
replaceitem block ~4 ~-3 ~4 slot.container 4 spider_eye 8
replaceitem block ~4 ~-3 ~4 slot.container 5 ender_pearl 5
replaceitem block ~4 ~-3 ~4 slot.container 9 water_bucket 1
replaceitem block ~4 ~-3 ~4 slot.container 10 shield 1
replaceitem block ~4 ~-3 ~4 slot.container 11 lantern 5
replaceitem block ~4 ~-3 ~4 slot.container 12 iron_ingot 12
replaceitem block ~4 ~-3 ~4 slot.container 13 raw_iron 11
replaceitem block ~4 ~-3 ~4 slot.container 14 coal 20
loot insert ~4 ~-3 ~4 loot "rsf/stony_peaks"
loot insert ~4 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~6 ~6 deepslate_bricks []
fill ~-5 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~6 ~-6 polished_deepslate []
fill ~-6 ~1 ~6 ~-6 ~6 ~6 polished_deepslate []
fill ~6 ~1 ~-6 ~6 ~6 ~-6 polished_deepslate []
fill ~6 ~1 ~6 ~6 ~6 ~6 polished_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 deepslate_brick_wall []
setblock ~6 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 polished_deepslate []
setblock ~-5 ~9 ~-4 campfire []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 polished_deepslate []
setblock ~-5 ~9 ~4 campfire []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 polished_deepslate []
setblock ~5 ~9 ~-4 campfire []
fill ~5 ~6 ~4 ~5 ~8 ~4 polished_deepslate []
setblock ~5 ~9 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~8 ~0 ~-9 ~8 ~7 ~-9 cobblestone_wall []
setblock ~8 ~8 ~-9 iron_block []
setblock ~8 ~9 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~4 slot.container 3 bone 10
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~4 slot.container 9 raw_iron 8
replaceitem block ~5 ~1 ~4 slot.container 10 coal 17
replaceitem block ~5 ~1 ~4 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~4 slot.container 12 cooked_beef 11
replaceitem block ~5 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~5 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~5 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~5 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~5 slot.container 4 string 14
replaceitem block ~-5 ~1 ~5 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 9 raw_iron 13
replaceitem block ~-5 ~1 ~5 slot.container 10 coal 22
replaceitem block ~-5 ~1 ~5 slot.container 11 emerald 6
replaceitem block ~-5 ~1 ~5 slot.container 12 cooked_beef 9
replaceitem block ~-5 ~1 ~5 slot.container 13 golden_apple 3
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

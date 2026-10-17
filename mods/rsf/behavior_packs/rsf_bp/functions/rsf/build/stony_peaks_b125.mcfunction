# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2429/4224 | 主题内编号: b125/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·巨型阶梯金字塔神王殿 (stony_peaks_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~11 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 spider_eye 8
replaceitem block ~5 ~-3 ~0 slot.container 1 ender_pearl 5
replaceitem block ~5 ~-3 ~0 slot.container 2 phantom_membrane 6
replaceitem block ~5 ~-3 ~0 slot.container 3 bone 15
replaceitem block ~5 ~-3 ~0 slot.container 4 rotten_flesh 16
replaceitem block ~5 ~-3 ~0 slot.container 5 gunpowder 15
replaceitem block ~5 ~-3 ~0 slot.container 9 emerald 11
replaceitem block ~5 ~-3 ~0 slot.container 10 cooked_beef 14
replaceitem block ~5 ~-3 ~0 slot.container 11 golden_apple 1
replaceitem block ~5 ~-3 ~0 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~-3 ~0 slot.container 13 water_bucket 1
replaceitem block ~5 ~-3 ~0 slot.container 14 shield 1
loot insert ~5 ~-3 ~0 loot "rsf/stony_peaks"
loot insert ~5 ~-3 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 stone_bricks []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 cobblestone []
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~10 ~-6 ~7 ~10 ~6 stone_bricks []
fill ~-6 ~11 ~-5 ~6 ~11 ~5 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 gold_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x7x6) ---
fill ~9 ~0 ~-7 ~9 ~9 ~-7 cobblestone_wall []
setblock ~9 ~10 ~-7 iron_block []
setblock ~9 ~11 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 emerald_block []
setblock ~0 ~1 ~0 iron_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 11
replaceitem block ~6 ~1 ~4 slot.container 1 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 2 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 3 bone 10
replaceitem block ~6 ~1 ~4 slot.container 4 rotten_flesh 11
replaceitem block ~6 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 9 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 10 shield 1
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 6
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 13
replaceitem block ~6 ~1 ~4 slot.container 13 raw_iron 12
replaceitem block ~6 ~1 ~4 slot.container 14 coal 21
loot insert ~6 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 13
replaceitem block ~-6 ~1 ~5 slot.container 2 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 3 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 4 string 14
replaceitem block ~-6 ~1 ~5 slot.container 5 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 9 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 10 shield 1
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 4
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 11
replaceitem block ~-6 ~1 ~5 slot.container 13 raw_iron 10
replaceitem block ~-6 ~1 ~5 slot.container 14 coal 19
loot insert ~-6 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-3 ~0

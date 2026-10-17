# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2333/4224 | 主题内编号: b029/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·奥术星象琉璃塔 (stony_peaks_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 gold_block []
setblock ~0 ~-5 ~0 campfire []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 spider_eye 8
replaceitem block ~3 ~-2 ~0 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-2 ~0 slot.container 2 phantom_membrane 6
replaceitem block ~3 ~-2 ~0 slot.container 3 bone 15
replaceitem block ~3 ~-2 ~0 slot.container 4 rotten_flesh 16
replaceitem block ~3 ~-2 ~0 slot.container 5 gunpowder 15
replaceitem block ~3 ~-2 ~0 slot.container 9 golden_apple 1
replaceitem block ~3 ~-2 ~0 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~-2 ~0 slot.container 11 water_bucket 1
replaceitem block ~3 ~-2 ~0 slot.container 12 shield 1
replaceitem block ~3 ~-2 ~0 slot.container 13 lantern 8
replaceitem block ~3 ~-2 ~0 slot.container 14 iron_ingot 15
loot insert ~3 ~-2 ~0 loot "rsf/stony_peaks"
loot insert ~3 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~10 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 stone_bricks []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 glass []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~7 ~0 ~-5 ~7 ~8 ~-5 cobblestone_wall []
setblock ~7 ~9 ~-5 iron_block []
setblock ~7 ~10 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 emerald_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 11
replaceitem block ~4 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 3 bone 10
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 9 lantern 6
replaceitem block ~4 ~1 ~2 slot.container 10 iron_ingot 13
replaceitem block ~4 ~1 ~2 slot.container 11 raw_iron 12
replaceitem block ~4 ~1 ~2 slot.container 12 coal 21
replaceitem block ~4 ~1 ~2 slot.container 13 emerald 12
replaceitem block ~4 ~1 ~2 slot.container 14 cooked_beef 8
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 4 string 14
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 9 lantern 4
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 11 raw_iron 10
replaceitem block ~-4 ~1 ~3 slot.container 12 coal 19
replaceitem block ~-4 ~1 ~3 slot.container 13 emerald 10
replaceitem block ~-4 ~1 ~3 slot.container 14 cooked_beef 13
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-2 ~0

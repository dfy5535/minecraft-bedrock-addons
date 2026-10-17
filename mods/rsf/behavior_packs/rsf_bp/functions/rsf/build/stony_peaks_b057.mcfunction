# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2361/4224 | 主题内编号: b057/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·中央石棺帝王地下陵寝 (stony_peaks_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_bricks [] replace water
fill ~-7 ~1 ~-7 ~7 ~7 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobblestone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 17
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 3 ender_pearl 5
replaceitem block ~0 ~-3 ~-4 slot.container 4 phantom_membrane 6
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 9 lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 10 iron_ingot 16
replaceitem block ~0 ~-3 ~-4 slot.container 11 raw_iron 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 coal 17
replaceitem block ~0 ~-3 ~-4 slot.container 13 emerald 8
replaceitem block ~0 ~-3 ~-4 slot.container 14 cooked_beef 11
loot insert ~0 ~-3 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 deepslate_bricks []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 stone_bricks []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 cobblestone []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 gold_block []
setblock ~0 ~9 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 spruce_log []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 spruce_log []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 spruce_log []
fill ~8 ~0 ~2 ~8 ~5 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~8 ~0 ~-8 ~8 ~6 ~-8 cobblestone_wall []
setblock ~8 ~7 ~-8 iron_block []
setblock ~8 ~8 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 emerald_block []
setblock ~0 ~1 ~0 iron_block []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 rotten_flesh 11
replaceitem block ~5 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~4 slot.container 2 string 11
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 4 spider_eye 11
replaceitem block ~5 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~5 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~5 ~1 ~4 slot.container 10 cooked_beef 11
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 5
replaceitem block ~5 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 13 water_bucket 1
replaceitem block ~5 ~1 ~4 slot.container 14 shield 1
loot insert ~5 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 string 14
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-5 ~1 ~5 slot.container 2 spider_eye 6
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 3
replaceitem block ~-5 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~5 slot.container 9 emerald 6
replaceitem block ~-5 ~1 ~5 slot.container 10 cooked_beef 9
replaceitem block ~-5 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~-5 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~5 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~5 slot.container 14 shield 1
loot insert ~-5 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~5 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

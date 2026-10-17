# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2421/4224 | 主题内编号: b117/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·环柱生态标本采集馆 (stony_peaks_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobblestone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 15
replaceitem block ~4 ~-2 ~3 slot.container 2 string 8
replaceitem block ~4 ~-2 ~3 slot.container 3 arrow 17
replaceitem block ~4 ~-2 ~3 slot.container 4 spider_eye 8
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 5
replaceitem block ~4 ~-2 ~3 slot.container 9 water_bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 10 shield 1
replaceitem block ~4 ~-2 ~3 slot.container 11 lantern 8
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_ingot 15
replaceitem block ~4 ~-2 ~3 slot.container 13 raw_iron 14
replaceitem block ~4 ~-2 ~3 slot.container 14 coal 16
loot insert ~4 ~-2 ~3 loot "rsf/stony_peaks"
loot insert ~4 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 polished_deepslate []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 polished_deepslate []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 polished_deepslate []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 polished_deepslate []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 polished_deepslate []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 polished_deepslate []
fill ~0 ~1 ~5 ~0 ~6 ~5 polished_deepslate []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 polished_deepslate []
fill ~2 ~1 ~5 ~2 ~6 ~5 polished_deepslate []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 polished_deepslate []
fill ~4 ~1 ~5 ~4 ~6 ~5 polished_deepslate []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 polished_deepslate []
fill ~6 ~1 ~5 ~6 ~6 ~5 polished_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 polished_deepslate []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 polished_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 polished_deepslate []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 polished_deepslate []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 polished_deepslate []
fill ~6 ~1 ~1 ~6 ~6 ~1 polished_deepslate []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 polished_deepslate []
fill ~6 ~1 ~3 ~6 ~6 ~3 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~8 ~0 ~-7 ~8 ~6 ~-7 cobblestone_wall []
setblock ~8 ~7 ~-7 iron_block []
setblock ~8 ~8 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~3 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 3 bone 10
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~3 slot.container 9 emerald 12
replaceitem block ~5 ~1 ~3 slot.container 10 cooked_beef 8
replaceitem block ~5 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~5 ~1 ~3 slot.container 14 shield 1
loot insert ~5 ~1 ~3 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~4 slot.container 9 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_beef 13
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 14 shield 1
loot insert ~-5 ~1 ~4 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2353/4224 | 主题内编号: b049/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双坡顶林间猎人木屋 (stony_peaks_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 cobblestone []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 spider_eye 8
replaceitem block ~3 ~-2 ~3 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-2 ~3 slot.container 2 phantom_membrane 6
replaceitem block ~3 ~-2 ~3 slot.container 3 bone 15
replaceitem block ~3 ~-2 ~3 slot.container 4 rotten_flesh 16
replaceitem block ~3 ~-2 ~3 slot.container 5 gunpowder 15
replaceitem block ~3 ~-2 ~3 slot.container 9 emerald 10
replaceitem block ~3 ~-2 ~3 slot.container 10 cooked_beef 13
replaceitem block ~3 ~-2 ~3 slot.container 11 golden_apple 7
replaceitem block ~3 ~-2 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~-2 ~3 slot.container 13 water_bucket 1
replaceitem block ~3 ~-2 ~3 slot.container 14 shield 1
loot insert ~3 ~-2 ~3 loot "rsf/stony_peaks"
loot insert ~3 ~-2 ~3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 polished_deepslate []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 polished_deepslate []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 polished_deepslate []
fill ~5 ~1 ~5 ~5 ~6 ~5 polished_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 deepslate_brick_wall []
setblock ~5 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 cobblestone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~7 ~0 ~-8 ~7 ~8 ~-8 cobblestone_wall []
setblock ~7 ~9 ~-8 iron_block []
setblock ~7 ~10 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 9 lantern 5
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~4 ~1 ~3 slot.container 11 raw_iron 11
replaceitem block ~4 ~1 ~3 slot.container 12 coal 20
replaceitem block ~4 ~1 ~3 slot.container 13 emerald 11
replaceitem block ~4 ~1 ~3 slot.container 14 cooked_beef 14
loot insert ~4 ~1 ~3 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 6
replaceitem block ~-4 ~1 ~4 slot.container 3 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~4 slot.container 9 lantern 10
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-4 ~1 ~4 slot.container 11 raw_iron 9
replaceitem block ~-4 ~1 ~4 slot.container 12 coal 18
replaceitem block ~-4 ~1 ~4 slot.container 13 emerald 9
replaceitem block ~-4 ~1 ~4 slot.container 14 cooked_beef 12
loot insert ~-4 ~1 ~4 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

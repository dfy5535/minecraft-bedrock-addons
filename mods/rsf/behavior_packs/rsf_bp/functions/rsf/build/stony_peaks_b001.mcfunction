# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2305/4224 | 主题内编号: b001/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·三层阶梯圣火祭坛 (stony_peaks_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobblestone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 spider_eye 8
replaceitem block ~3 ~-2 ~2 slot.container 1 ender_pearl 5
replaceitem block ~3 ~-2 ~2 slot.container 2 phantom_membrane 6
replaceitem block ~3 ~-2 ~2 slot.container 3 bone 15
replaceitem block ~3 ~-2 ~2 slot.container 4 rotten_flesh 16
replaceitem block ~3 ~-2 ~2 slot.container 5 gunpowder 15
replaceitem block ~3 ~-2 ~2 slot.container 9 lantern 9
replaceitem block ~3 ~-2 ~2 slot.container 10 iron_ingot 16
replaceitem block ~3 ~-2 ~2 slot.container 11 raw_iron 8
replaceitem block ~3 ~-2 ~2 slot.container 12 coal 17
replaceitem block ~3 ~-2 ~2 slot.container 13 emerald 8
replaceitem block ~3 ~-2 ~2 slot.container 14 cooked_beef 11
loot insert ~3 ~-2 ~2 loot "rsf/stony_peaks"
loot insert ~3 ~-2 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 stone_bricks []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 cobblestone []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 polished_deepslate []
setblock ~-5 ~9 ~-4 campfire []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 polished_deepslate []
setblock ~-5 ~9 ~4 campfire []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 polished_deepslate []
setblock ~5 ~9 ~-4 campfire []
fill ~5 ~6 ~4 ~5 ~8 ~4 polished_deepslate []
setblock ~5 ~9 ~4 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 calcite []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-7 ~7 ~5 ~-7 cobblestone_wall []
setblock ~7 ~6 ~-7 iron_block []
setblock ~7 ~7 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 2 string 11
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~2 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 9 golden_apple 3
replaceitem block ~4 ~1 ~2 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 12 shield 1
replaceitem block ~4 ~1 ~2 slot.container 13 lantern 10
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 14
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 6
replaceitem block ~-4 ~1 ~3 slot.container 3 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_apple 1
replaceitem block ~-4 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 12 shield 1
replaceitem block ~-4 ~1 ~3 slot.container 13 lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 15
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

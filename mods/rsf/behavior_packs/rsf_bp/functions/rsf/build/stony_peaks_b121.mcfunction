# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2425/4224 | 主题内编号: b121/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·卫城廊柱王座大殿与地宫 (stony_peaks_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 campfire []
setblock ~5 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 15
replaceitem block ~0 ~-3 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-3 ~4 slot.container 3 gunpowder 15
replaceitem block ~0 ~-3 ~4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~4 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~4 slot.container 9 water_bucket 1
replaceitem block ~0 ~-3 ~4 slot.container 10 shield 1
replaceitem block ~0 ~-3 ~4 slot.container 11 lantern 8
replaceitem block ~0 ~-3 ~4 slot.container 12 iron_ingot 15
replaceitem block ~0 ~-3 ~4 slot.container 13 raw_iron 14
replaceitem block ~0 ~-3 ~4 slot.container 14 coal 16
loot insert ~0 ~-3 ~4 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 phantom_membrane 4
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 13
replaceitem block ~0 ~-3 ~-4 slot.container 2 rotten_flesh 14
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 13
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 14
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 23
replaceitem block ~0 ~-3 ~-4 slot.container 9 water_bucket 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 shield 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 lantern 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 14
replaceitem block ~0 ~-3 ~-4 slot.container 13 raw_iron 13
replaceitem block ~0 ~-3 ~-4 slot.container 14 coal 22
loot insert ~0 ~-3 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~8 ~6 deepslate_bricks []
fill ~-6 ~1 ~0 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 polished_deepslate []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 polished_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 polished_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 polished_deepslate []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 polished_deepslate []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 polished_deepslate []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 polished_deepslate []
fill ~-7 ~8 ~-6 ~7 ~8 ~-1 stone_bricks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 mossy_cobblestone []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 polished_deepslate []
setblock ~-9 ~5 ~-8 campfire []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 polished_deepslate []
setblock ~-9 ~5 ~8 campfire []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 polished_deepslate []
setblock ~9 ~5 ~-8 campfire []
fill ~9 ~0 ~8 ~9 ~4 ~8 polished_deepslate []
setblock ~9 ~5 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x9x2) ---
fill ~9 ~0 ~-9 ~9 ~5 ~-9 cobblestone_wall []
setblock ~9 ~6 ~-9 iron_block []
setblock ~9 ~7 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 rotten_flesh 11
replaceitem block ~6 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 2 string 11
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 11
replaceitem block ~6 ~1 ~4 slot.container 5 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~6 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~6 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 12 shield 1
replaceitem block ~6 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~6 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~6 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 string 14
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 6
replaceitem block ~-6 ~1 ~5 slot.container 3 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 4 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 13
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_apple 2
replaceitem block ~-6 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~-6 ~1 ~5 slot.container 11 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 12 shield 1
replaceitem block ~-6 ~1 ~5 slot.container 13 lantern 9
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_ingot 16
loot insert ~-6 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2349/4224 | 主题内编号: b045/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·十二柱神殿试炼场 (stony_peaks_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 stone_bricks []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 polished_deepslate []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 polished_deepslate []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 polished_deepslate []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 polished_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 polished_deepslate []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 polished_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 polished_deepslate []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 polished_deepslate []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 polished_deepslate []
fill ~1 ~1 ~6 ~1 ~6 ~6 polished_deepslate []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 polished_deepslate []
fill ~3 ~1 ~6 ~3 ~6 ~6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 polished_deepslate []
fill ~5 ~1 ~6 ~5 ~6 ~6 polished_deepslate []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 polished_deepslate []
fill ~7 ~1 ~6 ~7 ~6 ~6 polished_deepslate []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 polished_deepslate []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 polished_deepslate []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 polished_deepslate []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 polished_deepslate []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 polished_deepslate []
fill ~7 ~1 ~0 ~7 ~6 ~0 polished_deepslate []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 polished_deepslate []
fill ~7 ~1 ~2 ~7 ~6 ~2 polished_deepslate []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 polished_deepslate []
fill ~7 ~1 ~4 ~7 ~6 ~4 polished_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 polished_deepslate []
setblock ~-7 ~10 ~-6 campfire []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 polished_deepslate []
setblock ~-7 ~10 ~6 campfire []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 polished_deepslate []
setblock ~7 ~10 ~-6 campfire []
fill ~7 ~7 ~6 ~7 ~9 ~6 polished_deepslate []
setblock ~7 ~10 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 polished_deepslate []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 campfire []
fill ~0 ~0 ~8 ~0 ~3 ~8 polished_deepslate []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 campfire []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 polished_deepslate []
setblock ~-9 ~4 ~0 chiseled_stone_bricks []
setblock ~-9 ~5 ~0 campfire []
fill ~9 ~0 ~0 ~9 ~3 ~0 polished_deepslate []
setblock ~9 ~4 ~0 chiseled_stone_bricks []
setblock ~9 ~5 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x8x6) ---
fill ~9 ~0 ~-8 ~9 ~9 ~-8 cobblestone_wall []
setblock ~9 ~10 ~-8 iron_block []
setblock ~9 ~11 ~-8 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gold_block []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~0 ~2 ~0 campfire []

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
replaceitem block ~6 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~6 ~1 ~4 slot.container 12 iron_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 13 raw_iron 9
replaceitem block ~6 ~1 ~4 slot.container 14 coal 18
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
replaceitem block ~-6 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_ingot 15
replaceitem block ~-6 ~1 ~5 slot.container 13 raw_iron 14
replaceitem block ~-6 ~1 ~5 slot.container 14 coal 16
loot insert ~-6 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

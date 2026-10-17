# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2367/4224 | 主题内编号: b063/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·方尖碑镇压古墓穴 (stony_peaks_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 stone_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 calcite []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 calcite []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 emerald_block []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 phantom_membrane 6
replaceitem block ~4 ~-2 ~0 slot.container 1 bone 15
replaceitem block ~4 ~-2 ~0 slot.container 2 rotten_flesh 16
replaceitem block ~4 ~-2 ~0 slot.container 3 gunpowder 15
replaceitem block ~4 ~-2 ~0 slot.container 4 string 8
replaceitem block ~4 ~-2 ~0 slot.container 5 arrow 17
replaceitem block ~4 ~-2 ~0 slot.container 9 lantern 10
replaceitem block ~4 ~-2 ~0 slot.container 10 iron_ingot 10
replaceitem block ~4 ~-2 ~0 slot.container 11 raw_iron 9
replaceitem block ~4 ~-2 ~0 slot.container 12 coal 18
replaceitem block ~4 ~-2 ~0 slot.container 13 emerald 9
replaceitem block ~4 ~-2 ~0 slot.container 14 cooked_beef 12
loot insert ~4 ~-2 ~0 loot "rsf/stony_peaks"
loot insert ~4 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~10 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~10 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~10 ~4 air []
fill ~5 ~1 ~4 ~5 ~10 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 chiseled_stone_bricks []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 chiseled_stone_bricks []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 chiseled_stone_bricks []
fill ~4 ~1 ~3 ~4 ~9 ~3 chiseled_stone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 emerald_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 chiseled_stone_bricks []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 chiseled_stone_bricks []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 chiseled_stone_bricks []
fill ~6 ~0 ~2 ~6 ~8 ~2 chiseled_stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~7 ~0 ~-6 ~7 ~7 ~-6 cobblestone_wall []
setblock ~7 ~8 ~-6 iron_block []
setblock ~7 ~9 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 1 bone 10
replaceitem block ~4 ~1 ~2 slot.container 2 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 9 raw_iron 9
replaceitem block ~4 ~1 ~2 slot.container 10 coal 18
replaceitem block ~4 ~1 ~2 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~2 slot.container 12 cooked_beef 12
replaceitem block ~4 ~1 ~2 slot.container 13 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 6
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 9 raw_iron 14
replaceitem block ~-4 ~1 ~3 slot.container 10 coal 16
replaceitem block ~-4 ~1 ~3 slot.container 11 emerald 7
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_beef 10
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2343/4224 | 主题内编号: b039/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·永恒圣火图腾方尖塔 (stony_peaks_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 stone_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~12 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 stone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 calcite []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cobblestone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 lantern []
setblock ~5 ~-7 ~0 lantern []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 15
replaceitem block ~0 ~-5 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~0 ~-5 ~4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 17
replaceitem block ~0 ~-5 ~4 slot.container 5 spider_eye 8
replaceitem block ~0 ~-5 ~4 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-5 ~4 slot.container 10 golden_apple 5
replaceitem block ~0 ~-5 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-5 ~4 slot.container 12 water_bucket 1
replaceitem block ~0 ~-5 ~4 slot.container 13 shield 1
replaceitem block ~0 ~-5 ~4 slot.container 14 lantern 5
loot insert ~0 ~-5 ~4 loot "rsf/stony_peaks"
loot insert ~0 ~-5 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 13
replaceitem block ~0 ~-5 ~-4 slot.container 1 rotten_flesh 14
replaceitem block ~0 ~-5 ~-4 slot.container 2 gunpowder 13
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 23
replaceitem block ~0 ~-5 ~-4 slot.container 5 spider_eye 6
replaceitem block ~0 ~-5 ~-4 slot.container 9 cooked_beef 10
replaceitem block ~0 ~-5 ~-4 slot.container 10 golden_apple 4
replaceitem block ~0 ~-5 ~-4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-5 ~-4 slot.container 12 water_bucket 1
replaceitem block ~0 ~-5 ~-4 slot.container 13 shield 1
replaceitem block ~0 ~-5 ~-4 slot.container 14 lantern 4
loot insert ~0 ~-5 ~-4 loot "rsf/stony_peaks"
loot insert ~0 ~-5 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 stone_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 chiseled_stone_bricks []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 chiseled_stone_bricks []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 chiseled_stone_bricks []
fill ~4 ~1 ~3 ~4 ~10 ~3 chiseled_stone_bricks []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 cobblestone_wall []
setblock ~4 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cobblestone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 stone_bricks []
fill ~0 ~16 ~0 ~0 ~19 ~0 emerald_block []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 chiseled_stone_bricks []
setblock ~0 ~4 ~-5 iron_block []
setblock ~0 ~5 ~-5 lantern []
fill ~0 ~0 ~5 ~0 ~3 ~5 chiseled_stone_bricks []
setblock ~0 ~4 ~5 iron_block []
setblock ~0 ~5 ~5 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 chiseled_stone_bricks []
setblock ~-6 ~4 ~0 iron_block []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 chiseled_stone_bricks []
setblock ~6 ~4 ~0 iron_block []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~6 ~0 ~-5 ~6 ~8 ~-5 cobblestone_wall []
setblock ~6 ~9 ~-5 iron_block []
setblock ~6 ~10 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 phantom_membrane 9
replaceitem block ~3 ~1 ~1 slot.container 1 bone 10
replaceitem block ~3 ~1 ~1 slot.container 2 rotten_flesh 11
replaceitem block ~3 ~1 ~1 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~1 slot.container 4 string 11
replaceitem block ~3 ~1 ~1 slot.container 5 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 9 lantern 9
replaceitem block ~3 ~1 ~1 slot.container 10 iron_ingot 16
replaceitem block ~3 ~1 ~1 slot.container 11 raw_iron 8
replaceitem block ~3 ~1 ~1 slot.container 12 coal 17
replaceitem block ~3 ~1 ~1 slot.container 13 emerald 8
replaceitem block ~3 ~1 ~1 slot.container 14 cooked_beef 11
loot insert ~3 ~1 ~1 loot "rsf/stony_peaks"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-3 ~1 ~2 slot.container 1 gunpowder 13
replaceitem block ~-3 ~1 ~2 slot.container 2 string 14
replaceitem block ~-3 ~1 ~2 slot.container 3 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 4 spider_eye 6
replaceitem block ~-3 ~1 ~2 slot.container 5 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 9 lantern 7
replaceitem block ~-3 ~1 ~2 slot.container 10 iron_ingot 14
replaceitem block ~-3 ~1 ~2 slot.container 11 raw_iron 13
replaceitem block ~-3 ~1 ~2 slot.container 12 coal 22
replaceitem block ~-3 ~1 ~2 slot.container 13 emerald 6
replaceitem block ~-3 ~1 ~2 slot.container 14 cooked_beef 9
loot insert ~-3 ~1 ~2 loot "rsf/stony_peaks"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

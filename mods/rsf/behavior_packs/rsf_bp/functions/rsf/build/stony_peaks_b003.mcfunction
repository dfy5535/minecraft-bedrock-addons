# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2307/4224 | 主题内编号: b003/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·环柱巨石方尖祭坛 (stony_peaks_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 calcite []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 chiseled_stone_bricks []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 chiseled_stone_bricks []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 chiseled_stone_bricks []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 chiseled_stone_bricks []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 chiseled_stone_bricks []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 chiseled_stone_bricks []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 chiseled_stone_bricks []
fill ~0 ~1 ~5 ~0 ~8 ~5 chiseled_stone_bricks []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 chiseled_stone_bricks []
fill ~2 ~1 ~5 ~2 ~8 ~5 chiseled_stone_bricks []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 chiseled_stone_bricks []
fill ~4 ~1 ~5 ~4 ~8 ~5 chiseled_stone_bricks []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 chiseled_stone_bricks []
fill ~6 ~1 ~5 ~6 ~8 ~5 chiseled_stone_bricks []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 chiseled_stone_bricks []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 chiseled_stone_bricks []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 chiseled_stone_bricks []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 chiseled_stone_bricks []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 chiseled_stone_bricks []
fill ~6 ~1 ~1 ~6 ~8 ~1 chiseled_stone_bricks []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 chiseled_stone_bricks []
fill ~6 ~1 ~3 ~6 ~8 ~3 chiseled_stone_bricks []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 stone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 emerald_block []
setblock ~0 ~19 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_stone_bricks []
setblock ~0 ~4 ~-7 iron_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_stone_bricks []
setblock ~0 ~4 ~7 iron_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_stone_bricks []
setblock ~-8 ~4 ~0 iron_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_stone_bricks []
setblock ~8 ~4 ~0 iron_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~8 ~0 ~-7 ~8 ~7 ~-7 cobblestone_wall []
setblock ~8 ~8 ~-7 iron_block []
setblock ~8 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 emerald_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 string 11
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 11
replaceitem block ~5 ~1 ~3 slot.container 3 ender_pearl 8
replaceitem block ~5 ~1 ~3 slot.container 4 phantom_membrane 9
replaceitem block ~5 ~1 ~3 slot.container 5 bone 10
replaceitem block ~5 ~1 ~3 slot.container 9 raw_iron 12
replaceitem block ~5 ~1 ~3 slot.container 10 coal 21
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 12
replaceitem block ~5 ~1 ~3 slot.container 12 cooked_beef 8
replaceitem block ~5 ~1 ~3 slot.container 13 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~3 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 6
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 3
replaceitem block ~-5 ~1 ~4 slot.container 2 phantom_membrane 4
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 5 gunpowder 13
replaceitem block ~-5 ~1 ~4 slot.container 9 raw_iron 10
replaceitem block ~-5 ~1 ~4 slot.container 10 coal 19
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~-5 ~1 ~4 slot.container 12 cooked_beef 13
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~4 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

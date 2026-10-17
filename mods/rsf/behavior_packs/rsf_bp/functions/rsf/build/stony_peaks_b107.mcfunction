# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2411/4224 | 主题内编号: b107/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·观星高塔与秘术地宫 (stony_peaks_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[none] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
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

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 stone_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 stone_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~9 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cobblestone []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 glass []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 chiseled_stone_bricks []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 chiseled_stone_bricks []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 chiseled_stone_bricks []
fill ~6 ~0 ~2 ~6 ~8 ~2 chiseled_stone_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~7 ~0 ~-5 ~7 ~6 ~-5 cobblestone_wall []
setblock ~7 ~7 ~-5 iron_block []
setblock ~7 ~8 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 string 11
replaceitem block ~4 ~1 ~2 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 2 spider_eye 11
replaceitem block ~4 ~1 ~2 slot.container 3 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 4 phantom_membrane 9
replaceitem block ~4 ~1 ~2 slot.container 5 bone 10
replaceitem block ~4 ~1 ~2 slot.container 9 emerald 9
replaceitem block ~4 ~1 ~2 slot.container 10 cooked_beef 12
replaceitem block ~4 ~1 ~2 slot.container 11 golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 14 shield 1
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 spider_eye 6
replaceitem block ~-4 ~1 ~3 slot.container 1 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 2 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 13
replaceitem block ~-4 ~1 ~3 slot.container 9 emerald 7
replaceitem block ~-4 ~1 ~3 slot.container 10 cooked_beef 10
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 14 shield 1
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-3 ~0

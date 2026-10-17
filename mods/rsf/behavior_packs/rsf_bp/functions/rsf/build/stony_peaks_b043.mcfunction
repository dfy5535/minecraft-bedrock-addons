# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2347/4224 | 主题内编号: b043/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·十字四门试炼擂台 (stony_peaks_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 calcite []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 cobblestone []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 stone_bricks []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 cobblestone_wall []
setblock ~7 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cobblestone []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 cobblestone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 chiseled_stone_bricks []
setblock ~-7 ~8 ~-6 lantern []
setblock ~-7 ~7 ~6 chiseled_stone_bricks []
setblock ~-7 ~8 ~6 lantern []
setblock ~7 ~7 ~-6 chiseled_stone_bricks []
setblock ~7 ~8 ~-6 lantern []
setblock ~7 ~7 ~6 chiseled_stone_bricks []
setblock ~7 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 spruce_log []
setblock ~-9 ~5 ~-8 lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 spruce_log []
setblock ~-9 ~5 ~8 lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 spruce_log []
setblock ~9 ~5 ~-8 lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 spruce_log []
setblock ~9 ~5 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~9 ~0 ~-9 ~9 ~7 ~-9 cobblestone_wall []
setblock ~9 ~8 ~-9 iron_block []
setblock ~9 ~9 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 string 11
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 11
replaceitem block ~6 ~1 ~4 slot.container 3 ender_pearl 8
replaceitem block ~6 ~1 ~4 slot.container 4 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 5 bone 10
replaceitem block ~6 ~1 ~4 slot.container 9 raw_iron 10
replaceitem block ~6 ~1 ~4 slot.container 10 coal 19
replaceitem block ~6 ~1 ~4 slot.container 11 emerald 10
replaceitem block ~6 ~1 ~4 slot.container 12 cooked_beef 13
replaceitem block ~6 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~6 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~6 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 6
replaceitem block ~-6 ~1 ~5 slot.container 1 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 2 phantom_membrane 4
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 5 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 9 raw_iron 8
replaceitem block ~-6 ~1 ~5 slot.container 10 coal 17
replaceitem block ~-6 ~1 ~5 slot.container 11 emerald 8
replaceitem block ~-6 ~1 ~5 slot.container 12 cooked_beef 11
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_apple 5
replaceitem block ~-6 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-6 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

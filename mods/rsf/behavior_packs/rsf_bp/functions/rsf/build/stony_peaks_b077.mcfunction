# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2381/4224 | 主题内编号: b077/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双子鸟居图腾神道 (stony_peaks_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cobblestone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 deepslate_bricks []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-5 ~7 ~7 ~5 deepslate_brick_slab []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 cobblestone []
fill ~-6 ~10 ~-4 ~6 ~10 ~4 cobblestone_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_brick_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~8 ~0 ~-5 ~8 ~6 ~-5 cobblestone_wall []
setblock ~8 ~7 ~-5 iron_block []
setblock ~8 ~8 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 spider_eye 11
replaceitem block ~5 ~1 ~2 slot.container 1 ender_pearl 8
replaceitem block ~5 ~1 ~2 slot.container 2 phantom_membrane 9
replaceitem block ~5 ~1 ~2 slot.container 3 bone 10
replaceitem block ~5 ~1 ~2 slot.container 4 rotten_flesh 11
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 10
replaceitem block ~5 ~1 ~2 slot.container 9 emerald 7
replaceitem block ~5 ~1 ~2 slot.container 10 cooked_beef 10
replaceitem block ~5 ~1 ~2 slot.container 11 golden_apple 4
replaceitem block ~5 ~1 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~5 ~1 ~2 slot.container 14 shield 1
loot insert ~5 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 4
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 13
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 23
replaceitem block ~-5 ~1 ~3 slot.container 9 emerald 12
replaceitem block ~-5 ~1 ~3 slot.container 10 cooked_beef 8
replaceitem block ~-5 ~1 ~3 slot.container 11 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 14 shield 1
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-5 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~2 ~0

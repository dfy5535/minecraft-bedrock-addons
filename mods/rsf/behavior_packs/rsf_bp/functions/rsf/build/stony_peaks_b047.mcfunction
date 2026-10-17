# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2351/4224 | 主题内编号: b047/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·深渊跨桥决斗长台 (stony_peaks_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 stone_bricks [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 stone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 calcite []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 cobblestone []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~-3 ~2 slot.container 1 gunpowder 15
replaceitem block ~-5 ~-3 ~2 slot.container 2 string 8
replaceitem block ~-5 ~-3 ~2 slot.container 3 arrow 17
replaceitem block ~-5 ~-3 ~2 slot.container 4 spider_eye 8
replaceitem block ~-5 ~-3 ~2 slot.container 5 ender_pearl 5
replaceitem block ~-5 ~-3 ~2 slot.container 9 lantern 4
replaceitem block ~-5 ~-3 ~2 slot.container 10 iron_ingot 11
replaceitem block ~-5 ~-3 ~2 slot.container 11 raw_iron 10
replaceitem block ~-5 ~-3 ~2 slot.container 12 coal 19
replaceitem block ~-5 ~-3 ~2 slot.container 13 emerald 10
replaceitem block ~-5 ~-3 ~2 slot.container 14 cooked_beef 13
loot insert ~-5 ~-3 ~2 loot "rsf/stony_peaks"
loot insert ~-5 ~-3 ~2 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 stone_bricks []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-4 ~-7 ~8 ~-4 chiseled_stone_bricks []
setblock ~-7 ~9 ~-4 lantern []
fill ~-7 ~6 ~4 ~-7 ~8 ~4 chiseled_stone_bricks []
setblock ~-7 ~9 ~4 lantern []
fill ~7 ~6 ~-4 ~7 ~8 ~-4 chiseled_stone_bricks []
setblock ~7 ~9 ~-4 lantern []
fill ~7 ~6 ~4 ~7 ~8 ~4 chiseled_stone_bricks []
setblock ~7 ~9 ~4 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 stone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x5x3) ---
fill ~9 ~0 ~-5 ~9 ~6 ~-5 cobblestone_wall []
setblock ~9 ~7 ~-5 iron_block []
setblock ~9 ~8 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 gold_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 phantom_membrane 9
replaceitem block ~6 ~1 ~2 slot.container 1 bone 10
replaceitem block ~6 ~1 ~2 slot.container 2 rotten_flesh 11
replaceitem block ~6 ~1 ~2 slot.container 3 gunpowder 10
replaceitem block ~6 ~1 ~2 slot.container 4 string 11
replaceitem block ~6 ~1 ~2 slot.container 5 arrow 20
replaceitem block ~6 ~1 ~2 slot.container 9 emerald 12
replaceitem block ~6 ~1 ~2 slot.container 10 cooked_beef 8
replaceitem block ~6 ~1 ~2 slot.container 11 golden_apple 2
replaceitem block ~6 ~1 ~2 slot.container 12 iron_pickaxe 1
replaceitem block ~6 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~6 ~1 ~2 slot.container 14 shield 1
loot insert ~6 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-6 ~1 ~3 slot.container 1 gunpowder 13
replaceitem block ~-6 ~1 ~3 slot.container 2 string 14
replaceitem block ~-6 ~1 ~3 slot.container 3 arrow 23
replaceitem block ~-6 ~1 ~3 slot.container 4 spider_eye 6
replaceitem block ~-6 ~1 ~3 slot.container 5 ender_pearl 3
replaceitem block ~-6 ~1 ~3 slot.container 9 emerald 10
replaceitem block ~-6 ~1 ~3 slot.container 10 cooked_beef 13
replaceitem block ~-6 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~-6 ~1 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~-6 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-6 ~1 ~3 slot.container 14 shield 1
loot insert ~-6 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-3 ~0

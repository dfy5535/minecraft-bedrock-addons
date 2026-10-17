# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2420/4224 | 主题内编号: b116/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·U型围合秘密花园驿站 (stony_peaks_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 stone_bricks []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 torch []
setblock ~2 ~-6 ~0 torch []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 gunpowder 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 8
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 17
replaceitem block ~0 ~-4 ~-3 slot.container 3 spider_eye 8
replaceitem block ~0 ~-4 ~-3 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-4 ~-3 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-4 ~-3 slot.container 9 iron_ingot 15
replaceitem block ~0 ~-4 ~-3 slot.container 10 raw_iron 14
replaceitem block ~0 ~-4 ~-3 slot.container 11 coal 16
replaceitem block ~0 ~-4 ~-3 slot.container 12 emerald 7
replaceitem block ~0 ~-4 ~-3 slot.container 13 cooked_beef 10
replaceitem block ~0 ~-4 ~-3 slot.container 14 golden_apple 4
loot insert ~0 ~-4 ~-3 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 calcite []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 stone_bricks []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 stone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~8 ~0 ~-6 ~8 ~5 ~-6 cobblestone_wall []
setblock ~8 ~6 ~-6 iron_block []
setblock ~8 ~7 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 9 iron_ingot 15
replaceitem block ~-5 ~1 ~3 slot.container 10 raw_iron 14
replaceitem block ~-5 ~1 ~3 slot.container 11 coal 16
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 7
replaceitem block ~-5 ~1 ~3 slot.container 13 cooked_beef 10
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 4
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon silverfish ~1 ~1 ~1
summon iron_golem ~0 ~2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2364/4224 | 主题内编号: b060/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·圆形穹顶万骨祠堂 (stony_peaks_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[battlement_flat] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 calcite [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 calcite [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 stone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 calcite []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 torch []
setblock ~4 ~-6 ~0 torch []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 gunpowder 15
replaceitem block ~0 ~-4 ~3 slot.container 1 string 8
replaceitem block ~0 ~-4 ~3 slot.container 2 arrow 17
replaceitem block ~0 ~-4 ~3 slot.container 3 spider_eye 8
replaceitem block ~0 ~-4 ~3 slot.container 4 ender_pearl 5
replaceitem block ~0 ~-4 ~3 slot.container 5 phantom_membrane 6
replaceitem block ~0 ~-4 ~3 slot.container 9 cooked_beef 12
replaceitem block ~0 ~-4 ~3 slot.container 10 golden_apple 6
replaceitem block ~0 ~-4 ~3 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-4 ~3 slot.container 12 water_bucket 1
replaceitem block ~0 ~-4 ~3 slot.container 13 shield 1
replaceitem block ~0 ~-4 ~3 slot.container 14 lantern 6
loot insert ~0 ~-4 ~3 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~3 loot "chests/simple_dungeon"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 gunpowder 13
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 23
replaceitem block ~0 ~-4 ~-3 slot.container 3 spider_eye 6
replaceitem block ~0 ~-4 ~-3 slot.container 4 ender_pearl 3
replaceitem block ~0 ~-4 ~-3 slot.container 5 phantom_membrane 4
replaceitem block ~0 ~-4 ~-3 slot.container 9 cooked_beef 11
replaceitem block ~0 ~-4 ~-3 slot.container 10 golden_apple 5
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-3 slot.container 12 water_bucket 1
replaceitem block ~0 ~-4 ~-3 slot.container 13 shield 1
replaceitem block ~0 ~-4 ~-3 slot.container 14 lantern 5
loot insert ~0 ~-4 ~-3 loot "rsf/stony_peaks"
loot insert ~0 ~-4 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 stone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 spruce_log []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 spruce_log []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 spruce_log []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 spruce_log []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 spruce_log []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 spruce_log []
fill ~0 ~1 ~5 ~0 ~6 ~5 spruce_log []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 spruce_log []
fill ~2 ~1 ~5 ~2 ~6 ~5 spruce_log []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 spruce_log []
fill ~4 ~1 ~5 ~4 ~6 ~5 spruce_log []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 spruce_log []
fill ~6 ~1 ~5 ~6 ~6 ~5 spruce_log []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 spruce_log []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 spruce_log []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 spruce_log []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 spruce_log []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 spruce_log []
fill ~6 ~1 ~1 ~6 ~6 ~1 spruce_log []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 spruce_log []
fill ~6 ~1 ~3 ~6 ~6 ~3 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 stone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 cobblestone_wall []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 spruce_log []
setblock ~-6 ~9 ~-4 torch []
setblock ~-6 ~8 ~4 spruce_log []
setblock ~-6 ~9 ~4 torch []
setblock ~6 ~8 ~-4 spruce_log []
setblock ~6 ~9 ~-4 torch []
setblock ~6 ~8 ~4 spruce_log []
setblock ~6 ~9 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 torch []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 torch []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 spruce_log []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 torch []
fill ~8 ~0 ~0 ~8 ~3 ~0 spruce_log []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~8 ~0 ~-7 ~8 ~9 ~-7 cobblestone_wall []
setblock ~8 ~10 ~-7 iron_block []
setblock ~8 ~11 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 iron_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 20
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 11
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 9
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~3 slot.container 9 coal 21
replaceitem block ~-5 ~1 ~3 slot.container 10 emerald 12
replaceitem block ~-5 ~1 ~3 slot.container 11 cooked_beef 8
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_pickaxe 1
replaceitem block ~-5 ~1 ~3 slot.container 14 water_bucket 1
loot insert ~-5 ~1 ~3 loot "rsf/stony_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

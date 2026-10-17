# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2431/4224 | 主题内编号: b127/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·万神殿巨型穹顶与试炼宫 (stony_peaks_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[battlement_flat] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 stone_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 stone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 calcite []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 stone_bricks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~-5 ~-5 ~-4 lantern []
setblock ~5 ~-5 ~4 lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 phantom_membrane 6
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 15
replaceitem block ~0 ~-3 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~0 ~-3 ~4 slot.container 3 gunpowder 15
replaceitem block ~0 ~-3 ~4 slot.container 4 string 8
replaceitem block ~0 ~-3 ~4 slot.container 5 arrow 17
replaceitem block ~0 ~-3 ~4 slot.container 9 golden_apple 7
replaceitem block ~0 ~-3 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~0 ~-3 ~4 slot.container 11 water_bucket 1
replaceitem block ~0 ~-3 ~4 slot.container 12 shield 1
replaceitem block ~0 ~-3 ~4 slot.container 13 lantern 7
replaceitem block ~0 ~-3 ~4 slot.container 14 iron_ingot 14
loot insert ~0 ~-3 ~4 loot "rsf/stony_peaks"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~8 ~-6 ~7 ~8 ~6 cobblestone []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 chiseled_stone_bricks []
fill ~-7 ~1 ~6 ~-7 ~7 ~6 chiseled_stone_bricks []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 chiseled_stone_bricks []
fill ~-5 ~1 ~6 ~-5 ~7 ~6 chiseled_stone_bricks []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 chiseled_stone_bricks []
fill ~-3 ~1 ~6 ~-3 ~7 ~6 chiseled_stone_bricks []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 chiseled_stone_bricks []
fill ~-1 ~1 ~6 ~-1 ~7 ~6 chiseled_stone_bricks []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 chiseled_stone_bricks []
fill ~1 ~1 ~6 ~1 ~7 ~6 chiseled_stone_bricks []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 chiseled_stone_bricks []
fill ~3 ~1 ~6 ~3 ~7 ~6 chiseled_stone_bricks []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 chiseled_stone_bricks []
fill ~5 ~1 ~6 ~5 ~7 ~6 chiseled_stone_bricks []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 chiseled_stone_bricks []
fill ~7 ~1 ~6 ~7 ~7 ~6 chiseled_stone_bricks []
fill ~-7 ~1 ~-4 ~-7 ~7 ~-4 chiseled_stone_bricks []
fill ~7 ~1 ~-4 ~7 ~7 ~-4 chiseled_stone_bricks []
fill ~-7 ~1 ~-2 ~-7 ~7 ~-2 chiseled_stone_bricks []
fill ~7 ~1 ~-2 ~7 ~7 ~-2 chiseled_stone_bricks []
fill ~-7 ~1 ~0 ~-7 ~7 ~0 chiseled_stone_bricks []
fill ~7 ~1 ~0 ~7 ~7 ~0 chiseled_stone_bricks []
fill ~-7 ~1 ~2 ~-7 ~7 ~2 chiseled_stone_bricks []
fill ~7 ~1 ~2 ~7 ~7 ~2 chiseled_stone_bricks []
fill ~-7 ~1 ~4 ~-7 ~7 ~4 chiseled_stone_bricks []
fill ~7 ~1 ~4 ~7 ~7 ~4 chiseled_stone_bricks []

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
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_stone_bricks []
setblock ~0 ~4 ~-8 iron_block []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_stone_bricks []
setblock ~0 ~4 ~8 iron_block []
setblock ~0 ~5 ~8 lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 chiseled_stone_bricks []
setblock ~-9 ~4 ~0 iron_block []
setblock ~-9 ~5 ~0 lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 chiseled_stone_bricks []
setblock ~9 ~4 ~0 iron_block []
setblock ~9 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 9x9x3) ---
fill ~9 ~0 ~-9 ~9 ~6 ~-9 cobblestone_wall []
setblock ~9 ~7 ~-9 iron_block []
setblock ~9 ~8 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 emerald_block []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 phantom_membrane 9
replaceitem block ~6 ~1 ~4 slot.container 1 bone 10
replaceitem block ~6 ~1 ~4 slot.container 2 rotten_flesh 11
replaceitem block ~6 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~6 ~1 ~4 slot.container 4 string 11
replaceitem block ~6 ~1 ~4 slot.container 5 arrow 20
replaceitem block ~6 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~6 ~1 ~4 slot.container 10 cooked_beef 11
replaceitem block ~6 ~1 ~4 slot.container 11 golden_apple 5
replaceitem block ~6 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~6 ~1 ~4 slot.container 13 water_bucket 1
replaceitem block ~6 ~1 ~4 slot.container 14 shield 1
loot insert ~6 ~1 ~4 loot "rsf/stony_peaks"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 rotten_flesh 14
replaceitem block ~-6 ~1 ~5 slot.container 1 gunpowder 13
replaceitem block ~-6 ~1 ~5 slot.container 2 string 14
replaceitem block ~-6 ~1 ~5 slot.container 3 arrow 23
replaceitem block ~-6 ~1 ~5 slot.container 4 spider_eye 6
replaceitem block ~-6 ~1 ~5 slot.container 5 ender_pearl 3
replaceitem block ~-6 ~1 ~5 slot.container 9 emerald 6
replaceitem block ~-6 ~1 ~5 slot.container 10 cooked_beef 9
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_apple 3
replaceitem block ~-6 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~-6 ~1 ~5 slot.container 13 water_bucket 1
replaceitem block ~-6 ~1 ~5 slot.container 14 shield 1
loot insert ~-6 ~1 ~5 loot "rsf/stony_peaks"
loot insert ~-6 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2417/4224 | 主题内编号: b113/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·八角全采光生态温室 (stony_peaks_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cobblestone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 stone_bricks []
fill ~-2 ~-5 ~-1 ~2 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~1 slot.container 0 ender_pearl 5
replaceitem block ~2 ~-3 ~1 slot.container 1 phantom_membrane 6
replaceitem block ~2 ~-3 ~1 slot.container 2 bone 15
replaceitem block ~2 ~-3 ~1 slot.container 3 rotten_flesh 16
replaceitem block ~2 ~-3 ~1 slot.container 4 gunpowder 15
replaceitem block ~2 ~-3 ~1 slot.container 5 string 8
replaceitem block ~2 ~-3 ~1 slot.container 9 cooked_beef 10
replaceitem block ~2 ~-3 ~1 slot.container 10 golden_apple 4
replaceitem block ~2 ~-3 ~1 slot.container 11 iron_pickaxe 1
replaceitem block ~2 ~-3 ~1 slot.container 12 water_bucket 1
replaceitem block ~2 ~-3 ~1 slot.container 13 shield 1
replaceitem block ~2 ~-3 ~1 slot.container 14 lantern 4
loot insert ~2 ~-3 ~1 loot "rsf/stony_peaks"
loot insert ~2 ~-3 ~1 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 polished_deepslate []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 polished_deepslate []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 polished_deepslate []
fill ~4 ~1 ~3 ~4 ~7 ~3 polished_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 stone_bricks []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 glass []
fill ~-3 ~8 ~-2 ~3 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 stone_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 polished_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~7 ~0 ~-5 ~7 ~7 ~-5 cobblestone_wall []
setblock ~7 ~8 ~-5 iron_block []
setblock ~7 ~9 ~-5 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~2 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~2 slot.container 2 string 11
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~2 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~2 slot.container 9 raw_iron 10
replaceitem block ~4 ~1 ~2 slot.container 10 coal 19
replaceitem block ~4 ~1 ~2 slot.container 11 emerald 10
replaceitem block ~4 ~1 ~2 slot.container 12 cooked_beef 13
replaceitem block ~4 ~1 ~2 slot.container 13 golden_apple 7
replaceitem block ~4 ~1 ~2 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~2 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 string 14
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 6
replaceitem block ~-4 ~1 ~3 slot.container 3 ender_pearl 3
replaceitem block ~-4 ~1 ~3 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~3 slot.container 9 raw_iron 8
replaceitem block ~-4 ~1 ~3 slot.container 10 coal 17
replaceitem block ~-4 ~1 ~3 slot.container 11 emerald 8
replaceitem block ~-4 ~1 ~3 slot.container 12 cooked_beef 11
replaceitem block ~-4 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~3 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~3 loot "chests/simple_dungeon"
summon iron_golem ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon spider ~0 ~-2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2385/4224 | 主题内编号: b081/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·双高炉重工冶炼密室 (stony_peaks_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~8 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~9 ~5 stone_bricks []
setblock ~-5 ~10 ~5 campfire []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 stone_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 polished_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~7 ~0 ~-7 ~7 ~5 ~-7 cobblestone_wall []
setblock ~7 ~6 ~-7 iron_block []
setblock ~7 ~7 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 rotten_flesh 11
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 4 spider_eye 11
replaceitem block ~4 ~1 ~3 slot.container 5 ender_pearl 8
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~4 ~1 ~3 slot.container 12 shield 1
replaceitem block ~4 ~1 ~3 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~3 slot.container 14 iron_ingot 13
loot insert ~4 ~1 ~3 loot "rsf/stony_peaks"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 23
replaceitem block ~-4 ~1 ~4 slot.container 2 spider_eye 6
replaceitem block ~-4 ~1 ~4 slot.container 3 ender_pearl 3
replaceitem block ~-4 ~1 ~4 slot.container 4 phantom_membrane 4
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~4 slot.container 11 water_bucket 1
replaceitem block ~-4 ~1 ~4 slot.container 12 shield 1
replaceitem block ~-4 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_ingot 11
loot insert ~-4 ~1 ~4 loot "rsf/stony_peaks"
loot insert ~-4 ~1 ~4 loot "chests/simple_dungeon"
summon pillager ~0 ~1 ~-1
summon silverfish ~-1 ~1 ~1

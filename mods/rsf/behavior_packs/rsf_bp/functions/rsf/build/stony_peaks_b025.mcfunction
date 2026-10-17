# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2329/4224 | 主题内编号: b025/128
# 地形主题 #19: 裸岩山峰与极高山脉 (stony_peaks) —— 带方解石要塞护坡与高山矿脉密室
# 建筑名称: 裸岩山堡系·雉堞女墙四方哨塔 (stony_peaks_tower_battlement_watch)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 2格
# 适用群系: stony_peaks, extreme_hills, extreme_hills_edge, extreme_hills_mutated, extreme_hills_plus_trees, extreme_hills_plus_trees_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~12 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cobblestone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 stone_bricks []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 deepslate_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 polished_deepslate []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 polished_deepslate []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 polished_deepslate []
fill ~4 ~1 ~3 ~4 ~10 ~3 polished_deepslate []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 deepslate_brick_wall []
setblock ~4 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 deepslate_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 stone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 stone_bricks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 polished_deepslate []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 polished_deepslate []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 deepslate_brick_slab []
setblock ~0 ~3 ~-5 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (stony_peaks 独有建筑构件 | 几何特征参数 6x6x6) ---
fill ~6 ~0 ~-6 ~6 ~9 ~-6 cobblestone_wall []
setblock ~6 ~10 ~-6 iron_block []
setblock ~6 ~11 ~-6 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 rotten_flesh 11
replaceitem block ~3 ~1 ~1 slot.container 1 gunpowder 10
replaceitem block ~3 ~1 ~1 slot.container 2 string 11
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~1 slot.container 4 spider_eye 11
replaceitem block ~3 ~1 ~1 slot.container 5 ender_pearl 8
replaceitem block ~3 ~1 ~1 slot.container 9 water_bucket 1
replaceitem block ~3 ~1 ~1 slot.container 10 shield 1
replaceitem block ~3 ~1 ~1 slot.container 11 lantern 4
replaceitem block ~3 ~1 ~1 slot.container 12 iron_ingot 11
replaceitem block ~3 ~1 ~1 slot.container 13 raw_iron 10
replaceitem block ~3 ~1 ~1 slot.container 14 coal 19
loot insert ~3 ~1 ~1 loot "rsf/stony_peaks"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 string 14
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 23
replaceitem block ~-3 ~1 ~2 slot.container 2 spider_eye 6
replaceitem block ~-3 ~1 ~2 slot.container 3 ender_pearl 3
replaceitem block ~-3 ~1 ~2 slot.container 4 phantom_membrane 4
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-3 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~-3 ~1 ~2 slot.container 10 shield 1
replaceitem block ~-3 ~1 ~2 slot.container 11 lantern 9
replaceitem block ~-3 ~1 ~2 slot.container 12 iron_ingot 16
replaceitem block ~-3 ~1 ~2 slot.container 13 raw_iron 8
replaceitem block ~-3 ~1 ~2 slot.container 14 coal 17
loot insert ~-3 ~1 ~2 loot "rsf/stony_peaks"
loot insert ~-3 ~1 ~2 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

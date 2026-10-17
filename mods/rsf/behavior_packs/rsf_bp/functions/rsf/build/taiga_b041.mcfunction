# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0681/4224 | 主题内编号: b041/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·八角看台古罗马斗技场 (taiga_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks []
fill ~-5 ~-5 ~-6 ~5 ~0 ~6 air []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 barrel []
setblock ~-4 ~-5 ~-5 campfire []
setblock ~4 ~-5 ~5 campfire []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 arrow 22
replaceitem block ~0 ~-3 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 2 string 8
replaceitem block ~0 ~-3 ~5 slot.container 3 gunpowder 7
replaceitem block ~0 ~-3 ~5 slot.container 4 rabbit_hide 8
replaceitem block ~0 ~-3 ~5 slot.container 5 leather 9
replaceitem block ~0 ~-3 ~5 slot.container 9 coal 18
replaceitem block ~0 ~-3 ~5 slot.container 10 emerald 3
replaceitem block ~0 ~-3 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-3 ~5 slot.container 12 campfire 4
replaceitem block ~0 ~-3 ~5 slot.container 13 lantern 7
replaceitem block ~0 ~-3 ~5 slot.container 14 sweet_berries 16
loot insert ~0 ~-3 ~5 loot "rsf/taiga"
loot insert ~0 ~-3 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-7 ~6 ~5 ~7 mossy_stone_bricks []
fill ~-5 ~1 ~-6 ~5 ~4 ~6 air []
fill ~-6 ~1 ~-7 ~-6 ~6 ~-7 air []
fill ~6 ~1 ~-7 ~6 ~6 ~-7 air []
fill ~-6 ~1 ~7 ~-6 ~6 ~7 air []
fill ~6 ~1 ~7 ~6 ~6 ~7 air []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 stripped_spruce_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 stripped_spruce_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 stripped_spruce_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 stripped_spruce_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_slab []
fill ~-3 ~8 ~-4 ~3 ~9 ~4 stone_bricks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 spruce_slab []
setblock ~0 ~11 ~0 bookshelf []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 stripped_spruce_log []
setblock ~-8 ~4 ~-9 campfire []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 stripped_spruce_log []
setblock ~-8 ~4 ~9 campfire []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 stripped_spruce_log []
setblock ~8 ~4 ~-9 campfire []
fill ~8 ~0 ~9 ~8 ~3 ~9 stripped_spruce_log []
setblock ~8 ~4 ~9 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x10x4) ---
fill ~1 ~0 ~-9 ~3 ~0 ~-10 mossy_cobblestone []
setblock ~2 ~1 ~-10 campfire []
fill ~1 ~1 ~-9 ~1 ~5 ~-9 spruce_fence []
fill ~3 ~1 ~-9 ~3 ~5 ~-9 spruce_fence []
fill ~1 ~6 ~-9 ~3 ~6 ~-10 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~-4 ~1 ~6 anvil []
setblock ~4 ~1 ~6 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 2 string 11
replaceitem block ~5 ~1 ~6 slot.container 3 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 4 rabbit_hide 11
replaceitem block ~5 ~1 ~6 slot.container 5 leather 12
replaceitem block ~5 ~1 ~6 slot.container 9 spruce_log 18
replaceitem block ~5 ~1 ~6 slot.container 10 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 11 coal 16
replaceitem block ~5 ~1 ~6 slot.container 12 emerald 8
replaceitem block ~5 ~1 ~6 slot.container 13 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 14 campfire 2
loot insert ~5 ~1 ~6 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

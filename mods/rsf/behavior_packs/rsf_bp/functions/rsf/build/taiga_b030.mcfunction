# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0670/4224 | 主题内编号: b030/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双坡顶驻军卫戍塔 (taiga_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~12 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rabbit_hide 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 22
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 coal 14
replaceitem block ~0 ~-3 ~-4 slot.container 10 emerald 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 campfire 7
replaceitem block ~0 ~-3 ~-4 slot.container 13 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 sweet_berries 12
loot insert ~0 ~-3 ~-4 loot "rsf/taiga"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-4 ~1 ~-5 ~0 ~8 ~5 cobblestone []
fill ~-4 ~1 ~0 ~4 ~7 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~-1 ~7 ~4 air []
fill ~-1 ~1 ~1 ~3 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-5 ~-4 ~10 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~4 ~10 ~-5 ~4 ~10 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-3 ~10 ~-5 ~3 ~10 ~5 cobblestone_slab []
fill ~0 ~11 ~-6 ~0 ~11 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~10 ~2 stone_bricks []
fill ~5 ~1 ~-1 ~6 ~9 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~11 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-3 ~0 ~-5 ~-1 ~0 ~-6 mossy_cobblestone []
setblock ~-2 ~1 ~-6 campfire []
fill ~-3 ~1 ~-5 ~-3 ~4 ~-5 spruce_fence []
fill ~-1 ~1 ~-5 ~-1 ~4 ~-5 spruce_fence []
fill ~-3 ~5 ~-5 ~-1 ~5 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 5 string 11
replaceitem block ~-3 ~1 ~4 slot.container 9 sweet_berries 17
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_rabbit 12
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_salmon 6
replaceitem block ~-3 ~1 ~4 slot.container 12 spruce_log 17
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 14 coal 15
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 bone 13
replaceitem block ~3 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 3 string 14
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 rabbit_hide 6
replaceitem block ~3 ~1 ~4 slot.container 9 sweet_berries 15
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_rabbit 10
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_salmon 11
replaceitem block ~3 ~1 ~4 slot.container 12 spruce_log 22
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 14 coal 13
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1

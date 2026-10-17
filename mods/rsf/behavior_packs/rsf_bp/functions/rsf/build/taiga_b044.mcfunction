# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0684/4224 | 主题内编号: b044/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双子祭台勇士角斗场 (taiga_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~9 ~8 air [] replace log2
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 spruce_planks [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 spruce_planks [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 spruce_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 mossy_stone_bricks []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 bone 15
replaceitem block ~4 ~-2 ~4 slot.container 1 arrow 22
replaceitem block ~4 ~-2 ~4 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-2 ~4 slot.container 3 string 8
replaceitem block ~4 ~-2 ~4 slot.container 4 gunpowder 7
replaceitem block ~4 ~-2 ~4 slot.container 5 rabbit_hide 8
replaceitem block ~4 ~-2 ~4 slot.container 9 emerald 4
replaceitem block ~4 ~-2 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~-2 ~4 slot.container 11 campfire 5
replaceitem block ~4 ~-2 ~4 slot.container 12 lantern 8
replaceitem block ~4 ~-2 ~4 slot.container 13 sweet_berries 17
replaceitem block ~4 ~-2 ~4 slot.container 14 cooked_rabbit 12
loot insert ~4 ~-2 ~4 loot "rsf/taiga"
loot insert ~4 ~-2 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~6 ~6 spruce_planks []
fill ~2 ~1 ~-6 ~6 ~6 ~6 spruce_planks []
fill ~-5 ~1 ~-5 ~-3 ~5 ~5 air []
fill ~3 ~1 ~-5 ~5 ~5 ~5 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 mossy_cobblestone []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-6 ~-6 ~7 ~-6 spruce_log []
setblock ~-6 ~8 ~-6 lantern []
fill ~-6 ~5 ~6 ~-6 ~7 ~6 spruce_log []
setblock ~-6 ~8 ~6 lantern []
fill ~6 ~5 ~-6 ~6 ~7 ~-6 spruce_log []
setblock ~6 ~8 ~-6 lantern []
fill ~6 ~5 ~6 ~6 ~7 ~6 spruce_log []
setblock ~6 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~7 ~2 cobblestone []
fill ~6 ~1 ~-1 ~7 ~6 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~8 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x9x2) ---
fill ~-2 ~0 ~-8 ~0 ~0 ~-9 mossy_cobblestone []
setblock ~-1 ~1 ~-9 campfire []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_fence []
fill ~0 ~1 ~-8 ~0 ~3 ~-8 spruce_fence []
fill ~-2 ~4 ~-8 ~0 ~4 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~5 slot.container 1 rabbit_hide 11
replaceitem block ~-5 ~1 ~5 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~5 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~5 slot.container 9 cooked_salmon 11
replaceitem block ~-5 ~1 ~5 slot.container 10 spruce_log 22
replaceitem block ~-5 ~1 ~5 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~5 slot.container 12 coal 13
replaceitem block ~-5 ~1 ~5 slot.container 13 emerald 5
replaceitem block ~-5 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~5 loot "rsf/taiga"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 leather 7
replaceitem block ~5 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~5 slot.container 2 bone 13
replaceitem block ~5 ~1 ~5 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 5 string 14
replaceitem block ~5 ~1 ~5 slot.container 9 cooked_salmon 9
replaceitem block ~5 ~1 ~5 slot.container 10 spruce_log 20
replaceitem block ~5 ~1 ~5 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~5 slot.container 12 coal 18
replaceitem block ~5 ~1 ~5 slot.container 13 emerald 3
replaceitem block ~5 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~5 loot "rsf/taiga"
loot insert ~5 ~1 ~5 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

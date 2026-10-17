# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0768/4224 | 主题内编号: b128/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·U型紫禁朝堂大殿与地底金库 (taiga_grand_u_royal_court)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x17 | 地上高度 7格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~11 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 spruce_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 spruce_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 mossy_stone_bricks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_cobblestone []
setblock ~0 ~-6 ~0 barrel []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 8
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 7
replaceitem block ~0 ~-3 ~-4 slot.container 3 rabbit_hide 8
replaceitem block ~0 ~-3 ~-4 slot.container 4 leather 9
replaceitem block ~0 ~-3 ~-4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 9 campfire 2
replaceitem block ~0 ~-3 ~-4 slot.container 10 lantern 5
replaceitem block ~0 ~-3 ~-4 slot.container 11 sweet_berries 14
replaceitem block ~0 ~-3 ~-4 slot.container 12 cooked_rabbit 9
replaceitem block ~0 ~-3 ~-4 slot.container 13 cooked_salmon 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 spruce_log 21
loot insert ~0 ~-3 ~-4 loot "rsf/taiga"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-7 ~6 ~7 ~7 spruce_planks []
fill ~-5 ~1 ~-6 ~5 ~6 ~6 air []
fill ~-2 ~1 ~-7 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-7 ~2 ~0 ~0 mossy_cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-8 ~7 ~7 ~8 spruce_slab []
fill ~-5 ~8 ~-6 ~5 ~9 ~6 mossy_stone_bricks []
fill ~-6 ~10 ~-7 ~6 ~10 ~7 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 spruce_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x10x6) ---
fill ~-2 ~0 ~-9 ~0 ~0 ~-10 mossy_cobblestone []
setblock ~-1 ~1 ~-10 campfire []
fill ~-2 ~1 ~-9 ~-2 ~7 ~-9 spruce_fence []
fill ~0 ~1 ~-9 ~0 ~7 ~-9 spruce_fence []
fill ~-2 ~8 ~-9 ~0 ~8 ~-10 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~6 blast_furnace []
setblock ~-4 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~6 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 5 rabbit_hide 11
replaceitem block ~-5 ~1 ~6 slot.container 9 iron_ingot 11
replaceitem block ~-5 ~1 ~6 slot.container 10 coal 18
replaceitem block ~-5 ~1 ~6 slot.container 11 emerald 3
replaceitem block ~-5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~6 slot.container 13 campfire 4
replaceitem block ~-5 ~1 ~6 slot.container 14 lantern 7
loot insert ~-5 ~1 ~6 loot "rsf/taiga"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 rabbit_hide 6
replaceitem block ~5 ~1 ~6 slot.container 4 leather 7
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 iron_ingot 9
replaceitem block ~5 ~1 ~6 slot.container 10 coal 16
replaceitem block ~5 ~1 ~6 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 13 campfire 2
replaceitem block ~5 ~1 ~6 slot.container 14 lantern 5
loot insert ~5 ~1 ~6 loot "rsf/taiga"
loot insert ~5 ~1 ~6 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

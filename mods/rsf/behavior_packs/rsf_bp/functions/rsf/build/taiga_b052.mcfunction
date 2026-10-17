# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0692/4224 | 主题内编号: b052/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·重檐行商旅店客栈 (taiga_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x17 | 地上高度 6格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~10 ~9 air [] replace log2
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 spruce_planks [] replace air
fill ~-6 ~-4 ~-8 ~6 ~-1 ~8 spruce_planks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 spruce_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_bricks []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 arrow 22
replaceitem block ~3 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-4 ~5 slot.container 2 string 8
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 7
replaceitem block ~3 ~-4 ~5 slot.container 4 rabbit_hide 8
replaceitem block ~3 ~-4 ~5 slot.container 5 leather 9
replaceitem block ~3 ~-4 ~5 slot.container 9 coal 13
replaceitem block ~3 ~-4 ~5 slot.container 10 emerald 5
replaceitem block ~3 ~-4 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-4 ~5 slot.container 12 campfire 6
replaceitem block ~3 ~-4 ~5 slot.container 13 lantern 9
replaceitem block ~3 ~-4 ~5 slot.container 14 sweet_berries 18
loot insert ~3 ~-4 ~5 loot "rsf/taiga"
loot insert ~3 ~-4 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-7 ~5 ~3 ~7 spruce_planks []
fill ~-4 ~1 ~-6 ~4 ~2 ~6 air []
fill ~-6 ~3 ~-8 ~6 ~3 ~8 spruce_slab []
fill ~-4 ~4 ~-6 ~4 ~6 ~6 mossy_stone_bricks []
fill ~-3 ~4 ~-5 ~3 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~5 ~0 ~4 ~5 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~6 ~-8 ~6 ~6 ~8 spruce_slab []
fill ~-4 ~7 ~-6 ~4 ~8 ~6 mossy_stone_bricks []
fill ~-5 ~9 ~-7 ~5 ~9 ~7 stone_brick_slab []
setblock ~0 ~10 ~0 chiseled_stone_bricks []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-9 ~2 ~0 ~-8 mossy_cobblestone []
fill ~-2 ~1 ~-9 ~-2 ~3 ~-9 spruce_log []
fill ~2 ~1 ~-9 ~2 ~3 ~-9 spruce_log []
fill ~-2 ~4 ~-9 ~2 ~4 ~-8 spruce_slab []
setblock ~0 ~3 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x9x5) ---
fill ~-3 ~0 ~-8 ~-1 ~0 ~-9 mossy_cobblestone []
setblock ~-2 ~1 ~-9 campfire []
fill ~-3 ~1 ~-8 ~-3 ~6 ~-8 spruce_fence []
fill ~-1 ~1 ~-8 ~-1 ~6 ~-8 spruce_fence []
fill ~-3 ~7 ~-8 ~-1 ~7 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~6 smoker []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~6 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~6 slot.container 1 rabbit_hide 11
replaceitem block ~-4 ~1 ~6 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~6 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~6 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~6 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~6 slot.container 9 emerald 9
replaceitem block ~-4 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~6 slot.container 11 campfire 3
replaceitem block ~-4 ~1 ~6 slot.container 12 lantern 6
replaceitem block ~-4 ~1 ~6 slot.container 13 sweet_berries 15
replaceitem block ~-4 ~1 ~6 slot.container 14 cooked_rabbit 10
loot insert ~-4 ~1 ~6 loot "rsf/taiga"
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 leather 7
replaceitem block ~4 ~1 ~6 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~6 slot.container 2 bone 13
replaceitem block ~4 ~1 ~6 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~6 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~6 slot.container 5 string 14
replaceitem block ~4 ~1 ~6 slot.container 9 emerald 7
replaceitem block ~4 ~1 ~6 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~6 slot.container 11 campfire 8
replaceitem block ~4 ~1 ~6 slot.container 12 lantern 4
replaceitem block ~4 ~1 ~6 slot.container 13 sweet_berries 13
replaceitem block ~4 ~1 ~6 slot.container 14 cooked_rabbit 8
loot insert ~4 ~1 ~6 loot "rsf/taiga"
loot insert ~4 ~1 ~6 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-2 ~0

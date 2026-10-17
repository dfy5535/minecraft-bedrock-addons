# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0754/4224 | 主题内编号: b114/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双联拱顶植物培育馆 (taiga_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 2格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 podzol []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 torch []
setblock ~4 ~-4 ~-3 torch []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 22
replaceitem block ~4 ~-2 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 3 string 8
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 5 rabbit_hide 8
replaceitem block ~4 ~-2 ~3 slot.container 9 campfire 4
replaceitem block ~4 ~-2 ~3 slot.container 10 lantern 7
replaceitem block ~4 ~-2 ~3 slot.container 11 sweet_berries 16
replaceitem block ~4 ~-2 ~3 slot.container 12 cooked_rabbit 11
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_salmon 12
replaceitem block ~4 ~-2 ~3 slot.container 14 spruce_log 16
loot insert ~4 ~-2 ~3 loot "rsf/taiga"
loot insert ~4 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~6 ~5 cobblestone []
fill ~2 ~1 ~-5 ~6 ~6 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 spruce_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 spruce_planks []
fill ~-5 ~6 ~-4 ~5 ~7 ~4 glass []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 spruce_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-4 ~0 ~-5 ~-2 ~0 ~-6 mossy_cobblestone []
setblock ~-3 ~1 ~-6 campfire []
fill ~-4 ~1 ~-5 ~-4 ~3 ~-5 spruce_fence []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 spruce_fence []
fill ~-4 ~4 ~-5 ~-2 ~4 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~4 smoker []
setblock ~-4 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 1 string 11
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 3 rabbit_hide 11
replaceitem block ~-5 ~1 ~4 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 9 cooked_salmon 11
replaceitem block ~-5 ~1 ~4 slot.container 10 spruce_log 22
replaceitem block ~-5 ~1 ~4 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 12 coal 13
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 5
replaceitem block ~-5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-5 ~1 ~4 loot "rsf/taiga"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 1 rabbit_hide 6
replaceitem block ~5 ~1 ~4 slot.container 2 leather 7
replaceitem block ~5 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 4 bone 13
replaceitem block ~5 ~1 ~4 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 9 cooked_salmon 9
replaceitem block ~5 ~1 ~4 slot.container 10 spruce_log 20
replaceitem block ~5 ~1 ~4 slot.container 11 iron_ingot 11
replaceitem block ~5 ~1 ~4 slot.container 12 coal 18
replaceitem block ~5 ~1 ~4 slot.container 13 emerald 3
replaceitem block ~5 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~5 ~1 ~4 loot "rsf/taiga"
loot insert ~5 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1

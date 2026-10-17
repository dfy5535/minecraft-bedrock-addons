# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0694/4224 | 主题内编号: b054/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·切石与伐木工匠棚屋 (taiga_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 2格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 cobblestone [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 cobblestone [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 cobblestone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 podzol []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 spruce_planks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~6 ~5 cobblestone []
fill ~2 ~1 ~-5 ~5 ~6 ~5 cobblestone []
fill ~-4 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 spruce_planks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 cobblestone_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 spruce_planks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 spruce_log []
setblock ~-8 ~4 ~-8 lantern []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 spruce_log []
setblock ~-8 ~4 ~8 lantern []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 spruce_log []
setblock ~8 ~4 ~-8 lantern []
fill ~8 ~0 ~8 ~8 ~3 ~8 spruce_log []
setblock ~8 ~4 ~8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-1 ~0 ~-5 ~1 ~0 ~-6 mossy_cobblestone []
setblock ~0 ~1 ~-6 campfire []
fill ~-1 ~1 ~-5 ~-1 ~3 ~-5 spruce_fence []
fill ~1 ~1 ~-5 ~1 ~3 ~-5 spruce_fence []
fill ~-1 ~4 ~-5 ~1 ~4 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-4 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 5 string 11
replaceitem block ~-4 ~1 ~4 slot.container 9 cooked_salmon 7
replaceitem block ~-4 ~1 ~4 slot.container 10 spruce_log 18
replaceitem block ~-4 ~1 ~4 slot.container 11 iron_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 12 coal 16
replaceitem block ~-4 ~1 ~4 slot.container 13 emerald 8
replaceitem block ~-4 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~4 loot "rsf/taiga"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 bone 13
replaceitem block ~4 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 3 string 14
replaceitem block ~4 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 5 rabbit_hide 6
replaceitem block ~4 ~1 ~4 slot.container 9 cooked_salmon 12
replaceitem block ~4 ~1 ~4 slot.container 10 spruce_log 16
replaceitem block ~4 ~1 ~4 slot.container 11 iron_ingot 7
replaceitem block ~4 ~1 ~4 slot.container 12 coal 14
replaceitem block ~4 ~1 ~4 slot.container 13 emerald 6
replaceitem block ~4 ~1 ~4 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~4 loot "rsf/taiga"
loot insert ~4 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1

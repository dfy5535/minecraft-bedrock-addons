# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0766/4224 | 主题内编号: b126/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双子主塔天桥宫殿与暗牢 (taiga_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-8 ~8 ~12 ~8 air [] replace leaves
fill ~-8 ~1 ~-8 ~8 ~12 ~8 air [] replace leaves2
fill ~-8 ~1 ~-8 ~8 ~12 ~8 air [] replace log
fill ~-8 ~1 ~-8 ~8 ~12 ~8 air [] replace log2
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobblestone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cobblestone [] replace water
fill ~-7 ~0 ~-7 ~7 ~0 ~7 cobblestone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 podzol []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 spruce_planks []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 iron_block []
setblock ~0 ~-6 ~0 lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~0 slot.container 1 bone 15
replaceitem block ~3 ~-3 ~0 slot.container 2 arrow 22
replaceitem block ~3 ~-3 ~0 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~0 slot.container 4 string 8
replaceitem block ~3 ~-3 ~0 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~0 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~-3 ~0 slot.container 10 campfire 4
replaceitem block ~3 ~-3 ~0 slot.container 11 lantern 7
replaceitem block ~3 ~-3 ~0 slot.container 12 sweet_berries 16
replaceitem block ~3 ~-3 ~0 slot.container 13 cooked_rabbit 11
replaceitem block ~3 ~-3 ~0 slot.container 14 cooked_salmon 12
loot insert ~3 ~-3 ~0 loot "rsf/taiga"
loot insert ~3 ~-3 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-6 ~-2 ~9 ~6 cobblestone []
fill ~2 ~1 ~-6 ~6 ~9 ~6 cobblestone []
fill ~-5 ~1 ~-5 ~-3 ~8 ~5 air []
fill ~3 ~1 ~-5 ~5 ~8 ~5 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 spruce_planks []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-6 ~-3 ~2 ~-6 air []
fill ~3 ~1 ~-6 ~3 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 spruce_planks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobblestone []
fill ~0 ~14 ~0 ~0 ~16 ~0 bookshelf []
setblock ~0 ~17 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 spruce_planks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 torch []
setblock ~2 ~4 ~-9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-4 ~0 ~-6 ~-2 ~0 ~-7 mossy_cobblestone []
setblock ~-3 ~1 ~-7 campfire []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 spruce_fence []
fill ~-2 ~1 ~-6 ~-2 ~5 ~-6 spruce_fence []
fill ~-4 ~6 ~-6 ~-2 ~6 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-5 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~5 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~5 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~5 slot.container 5 string 11
replaceitem block ~-5 ~1 ~5 slot.container 9 campfire 5
replaceitem block ~-5 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~-5 ~1 ~5 slot.container 11 sweet_berries 17
replaceitem block ~-5 ~1 ~5 slot.container 12 cooked_rabbit 12
replaceitem block ~-5 ~1 ~5 slot.container 13 cooked_salmon 6
replaceitem block ~-5 ~1 ~5 slot.container 14 spruce_log 17
loot insert ~-5 ~1 ~5 loot "rsf/taiga"
setblock ~5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~5 slot.container 0 bone 13
replaceitem block ~5 ~1 ~5 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~5 slot.container 3 string 14
replaceitem block ~5 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~5 slot.container 5 rabbit_hide 6
replaceitem block ~5 ~1 ~5 slot.container 9 campfire 3
replaceitem block ~5 ~1 ~5 slot.container 10 lantern 6
replaceitem block ~5 ~1 ~5 slot.container 11 sweet_berries 15
replaceitem block ~5 ~1 ~5 slot.container 12 cooked_rabbit 10
replaceitem block ~5 ~1 ~5 slot.container 13 cooked_salmon 11
replaceitem block ~5 ~1 ~5 slot.container 14 spruce_log 22
loot insert ~5 ~1 ~5 loot "rsf/taiga"
loot insert ~5 ~1 ~5 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1

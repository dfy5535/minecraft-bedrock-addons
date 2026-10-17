# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0714/4224 | 主题内编号: b074/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·十字四象图腾柱阵 (taiga_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 podzol []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 bookshelf []
setblock ~0 ~-5 ~0 torch []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-2 ~0 slot.container 1 string 8
replaceitem block ~3 ~-2 ~0 slot.container 2 gunpowder 7
replaceitem block ~3 ~-2 ~0 slot.container 3 rabbit_hide 8
replaceitem block ~3 ~-2 ~0 slot.container 4 leather 9
replaceitem block ~3 ~-2 ~0 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 9 campfire 7
replaceitem block ~3 ~-2 ~0 slot.container 10 lantern 10
replaceitem block ~3 ~-2 ~0 slot.container 11 sweet_berries 12
replaceitem block ~3 ~-2 ~0 slot.container 12 cooked_rabbit 7
replaceitem block ~3 ~-2 ~0 slot.container 13 cooked_salmon 8
replaceitem block ~3 ~-2 ~0 slot.container 14 spruce_log 19
loot insert ~3 ~-2 ~0 loot "rsf/taiga"
loot insert ~3 ~-2 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 cobblestone []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 cobblestone []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-6 ~-5 ~8 ~-6 spruce_log []
setblock ~-5 ~9 ~-6 torch []
fill ~-5 ~6 ~6 ~-5 ~8 ~6 spruce_log []
setblock ~-5 ~9 ~6 torch []
fill ~5 ~6 ~-6 ~5 ~8 ~-6 spruce_log []
setblock ~5 ~9 ~-6 torch []
fill ~5 ~6 ~6 ~5 ~8 ~6 spruce_log []
setblock ~5 ~9 ~6 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~7 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~7 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~7 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x9x2) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-9 mossy_cobblestone []
setblock ~0 ~1 ~-9 campfire []
fill ~-1 ~1 ~-8 ~-1 ~3 ~-8 spruce_fence []
fill ~1 ~1 ~-8 ~1 ~3 ~-8 spruce_fence []
fill ~-1 ~4 ~-8 ~1 ~4 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~-3 ~1 ~5 anvil []
setblock ~3 ~1 ~5 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 1 string 11
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 3 rabbit_hide 11
replaceitem block ~-4 ~1 ~5 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 cooked_salmon 6
replaceitem block ~-4 ~1 ~5 slot.container 10 spruce_log 17
replaceitem block ~-4 ~1 ~5 slot.container 11 iron_ingot 8
replaceitem block ~-4 ~1 ~5 slot.container 12 coal 15
replaceitem block ~-4 ~1 ~5 slot.container 13 emerald 7
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~5 loot "rsf/taiga"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 rabbit_hide 6
replaceitem block ~4 ~1 ~5 slot.container 2 leather 7
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 bone 13
replaceitem block ~4 ~1 ~5 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 9 cooked_salmon 11
replaceitem block ~4 ~1 ~5 slot.container 10 spruce_log 22
replaceitem block ~4 ~1 ~5 slot.container 11 iron_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 12 coal 13
replaceitem block ~4 ~1 ~5 slot.container 13 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~5 loot "rsf/taiga"
loot insert ~4 ~1 ~5 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

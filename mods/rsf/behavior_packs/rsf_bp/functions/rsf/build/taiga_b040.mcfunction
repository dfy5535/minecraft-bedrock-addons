# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0680/4224 | 主题内编号: b040/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·崩裂远古符文石碑 (taiga_obelisk_fractured_relic)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
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

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 spruce_planks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 mossy_cobblestone []
fill ~-2 ~5 ~-3 ~2 ~7 ~3 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 spruce_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-4 ~6 ~-1 ~-4 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~6 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~6 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~6 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~6 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x7x3) ---
fill ~-1 ~0 ~-6 ~1 ~0 ~-7 mossy_cobblestone []
setblock ~0 ~1 ~-7 campfire []
fill ~-1 ~1 ~-6 ~-1 ~4 ~-6 spruce_fence []
fill ~1 ~1 ~-6 ~1 ~4 ~-6 spruce_fence []
fill ~-1 ~5 ~-6 ~1 ~5 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 chiseled_stone_bricks []
setblock ~-3 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 string 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 5 rabbit_hide 11
replaceitem block ~-3 ~1 ~4 slot.container 9 sweet_berries 13
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_rabbit 8
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_salmon 9
replaceitem block ~-3 ~1 ~4 slot.container 12 spruce_log 20
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-3 ~1 ~4 slot.container 14 coal 18
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 3 rabbit_hide 6
replaceitem block ~3 ~1 ~4 slot.container 4 leather 7
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 sweet_berries 18
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_rabbit 6
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_salmon 7
replaceitem block ~3 ~1 ~4 slot.container 12 spruce_log 18
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~3 ~1 ~4 slot.container 14 coal 16
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-2 ~0

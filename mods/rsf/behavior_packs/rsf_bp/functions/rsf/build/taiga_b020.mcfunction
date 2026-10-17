# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0660/4224 | 主题内编号: b020/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·重甲防爆金库房间 (taiga_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-6 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-2 ~-4 ~3 slot.container 1 bone 15
replaceitem block ~-2 ~-4 ~3 slot.container 2 arrow 22
replaceitem block ~-2 ~-4 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-2 ~-4 ~3 slot.container 4 string 8
replaceitem block ~-2 ~-4 ~3 slot.container 5 gunpowder 7
replaceitem block ~-2 ~-4 ~3 slot.container 9 cooked_rabbit 8
replaceitem block ~-2 ~-4 ~3 slot.container 10 cooked_salmon 9
replaceitem block ~-2 ~-4 ~3 slot.container 11 spruce_log 20
replaceitem block ~-2 ~-4 ~3 slot.container 12 iron_ingot 11
replaceitem block ~-2 ~-4 ~3 slot.container 13 coal 18
replaceitem block ~-2 ~-4 ~3 slot.container 14 emerald 3
loot insert ~-2 ~-4 ~3 loot "rsf/taiga"
loot insert ~-2 ~-4 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-4 ~1 ~-5 ~4 ~5 ~5 spruce_planks []
fill ~-3 ~1 ~-4 ~3 ~4 ~4 air []
fill ~-4 ~1 ~-5 ~-3 ~7 ~-4 mossy_cobblestone []
setblock ~-4 ~8 ~-5 lantern []
fill ~-4 ~1 ~4 ~-3 ~7 ~5 mossy_cobblestone []
setblock ~-4 ~8 ~4 lantern []
fill ~3 ~1 ~-5 ~4 ~7 ~-4 mossy_cobblestone []
setblock ~3 ~8 ~-5 lantern []
fill ~3 ~1 ~4 ~4 ~7 ~5 mossy_cobblestone []
setblock ~3 ~8 ~4 lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~5 ~-5 ~4 ~5 ~5 mossy_cobblestone []
fill ~-4 ~6 ~-5 ~4 ~6 ~5 spruce_fence []
fill ~-3 ~6 ~-4 ~3 ~6 ~4 air []
setblock ~-4 ~6 ~-5 spruce_log []
setblock ~-4 ~7 ~-5 lantern []
setblock ~-4 ~6 ~5 spruce_log []
setblock ~-4 ~7 ~5 lantern []
setblock ~4 ~6 ~-5 spruce_log []
setblock ~4 ~7 ~-5 lantern []
setblock ~4 ~6 ~5 spruce_log []
setblock ~4 ~7 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~4 ~-2 spruce_log []
fill ~-5 ~0 ~2 ~-5 ~4 ~2 spruce_log []
fill ~5 ~0 ~-2 ~5 ~4 ~-2 spruce_log []
fill ~5 ~0 ~2 ~5 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x3) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-8 mossy_cobblestone []
setblock ~0 ~1 ~-8 campfire []
fill ~-1 ~1 ~-7 ~-1 ~4 ~-7 spruce_fence []
fill ~1 ~1 ~-7 ~1 ~4 ~-7 spruce_fence []
fill ~-1 ~5 ~-7 ~1 ~5 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 rabbit_hide 11
replaceitem block ~-3 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 9 sweet_berries 14
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_rabbit 9
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_salmon 10
replaceitem block ~-3 ~1 ~4 slot.container 12 spruce_log 21
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~-3 ~1 ~4 slot.container 14 coal 12
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 leather 7
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 13
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 sweet_berries 12
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_rabbit 7
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_salmon 8
replaceitem block ~3 ~1 ~4 slot.container 12 spruce_log 19
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 10
replaceitem block ~3 ~1 ~4 slot.container 14 coal 17
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

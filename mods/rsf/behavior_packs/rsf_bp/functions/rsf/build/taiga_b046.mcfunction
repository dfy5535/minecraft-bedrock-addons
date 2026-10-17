# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0686/4224 | 主题内编号: b046/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·要塞校场比武演武台 (taiga_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log2
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-4 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 podzol []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

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
fill ~-6 ~1 ~-7 ~6 ~5 ~7 cobblestone []
fill ~-5 ~1 ~-6 ~5 ~4 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~7 ~-6 spruce_planks []
setblock ~-6 ~8 ~-7 torch []
fill ~-6 ~1 ~6 ~-5 ~7 ~7 spruce_planks []
setblock ~-6 ~8 ~6 torch []
fill ~5 ~1 ~-7 ~6 ~7 ~-6 spruce_planks []
setblock ~5 ~8 ~-7 torch []
fill ~5 ~1 ~6 ~6 ~7 ~7 spruce_planks []
setblock ~5 ~8 ~6 torch []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-7 ~6 ~5 ~7 spruce_planks []
fill ~-6 ~6 ~-7 ~6 ~6 ~7 spruce_fence []
fill ~-5 ~6 ~-6 ~5 ~6 ~6 air []
setblock ~-6 ~6 ~-7 spruce_log []
setblock ~-6 ~7 ~-7 torch []
setblock ~-6 ~6 ~7 spruce_log []
setblock ~-6 ~7 ~7 torch []
setblock ~6 ~6 ~-7 spruce_log []
setblock ~6 ~7 ~-7 torch []
setblock ~6 ~6 ~7 spruce_log []
setblock ~6 ~7 ~7 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 stone_bricks []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~0 ~0 ~-8 ~2 ~0 ~-9 mossy_cobblestone []
setblock ~1 ~1 ~-9 campfire []
fill ~0 ~1 ~-8 ~0 ~5 ~-8 spruce_fence []
fill ~2 ~1 ~-8 ~2 ~5 ~-8 spruce_fence []
fill ~0 ~6 ~-8 ~2 ~6 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~6 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~6 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~6 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 5 string 11
replaceitem block ~-5 ~1 ~6 slot.container 9 campfire 2
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 5
replaceitem block ~-5 ~1 ~6 slot.container 11 sweet_berries 14
replaceitem block ~-5 ~1 ~6 slot.container 12 cooked_rabbit 9
replaceitem block ~-5 ~1 ~6 slot.container 13 cooked_salmon 10
replaceitem block ~-5 ~1 ~6 slot.container 14 spruce_log 21
loot insert ~-5 ~1 ~6 loot "rsf/taiga"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 bone 13
replaceitem block ~5 ~1 ~6 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 3 string 14
replaceitem block ~5 ~1 ~6 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 5 rabbit_hide 6
replaceitem block ~5 ~1 ~6 slot.container 9 campfire 7
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 11 sweet_berries 12
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_rabbit 7
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_salmon 8
replaceitem block ~5 ~1 ~6 slot.container 14 spruce_log 19
loot insert ~5 ~1 ~6 loot "rsf/taiga"
loot insert ~5 ~1 ~6 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-2 ~0

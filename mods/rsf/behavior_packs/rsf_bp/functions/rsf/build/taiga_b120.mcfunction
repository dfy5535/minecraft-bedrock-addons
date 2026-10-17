# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0760/4224 | 主题内编号: b120/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·引水渠跨桥水培温室 (taiga_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~9 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 spruce_planks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 spruce_planks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 stone_bricks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 mossy_cobblestone []
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

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 spruce_planks []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 mossy_cobblestone []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~0 ~0 ~-5 ~2 ~0 ~-6 mossy_cobblestone []
setblock ~1 ~1 ~-6 campfire []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 spruce_fence []
fill ~2 ~1 ~-5 ~2 ~4 ~-5 spruce_fence []
fill ~0 ~5 ~-5 ~2 ~5 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~4 crafting_table []
setblock ~-3 ~1 ~4 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~4 slot.container 3 string 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 5 rabbit_hide 11
replaceitem block ~-4 ~1 ~4 slot.container 9 sweet_berries 16
replaceitem block ~-4 ~1 ~4 slot.container 10 cooked_rabbit 11
replaceitem block ~-4 ~1 ~4 slot.container 11 cooked_salmon 12
replaceitem block ~-4 ~1 ~4 slot.container 12 spruce_log 16
replaceitem block ~-4 ~1 ~4 slot.container 13 iron_ingot 7
replaceitem block ~-4 ~1 ~4 slot.container 14 coal 14
loot insert ~-4 ~1 ~4 loot "rsf/taiga"
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~4 slot.container 1 string 14
replaceitem block ~4 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~4 slot.container 3 rabbit_hide 6
replaceitem block ~4 ~1 ~4 slot.container 4 leather 7
replaceitem block ~4 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~4 slot.container 9 sweet_berries 14
replaceitem block ~4 ~1 ~4 slot.container 10 cooked_rabbit 9
replaceitem block ~4 ~1 ~4 slot.container 11 cooked_salmon 10
replaceitem block ~4 ~1 ~4 slot.container 12 spruce_log 21
replaceitem block ~4 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~4 ~1 ~4 slot.container 14 coal 12
loot insert ~4 ~1 ~4 loot "rsf/taiga"
loot insert ~4 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0740/4224 | 主题内编号: b100/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·半地下暗堡火力点 (taiga_bunker_sunken_pillbox)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 spruce_planks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 spruce_planks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 spruce_planks []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
setblock ~-2 ~-5 ~0 blast_furnace []
setblock ~2 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 bone 15
replaceitem block ~2 ~-3 ~3 slot.container 1 arrow 22
replaceitem block ~2 ~-3 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 3 string 8
replaceitem block ~2 ~-3 ~3 slot.container 4 gunpowder 7
replaceitem block ~2 ~-3 ~3 slot.container 5 rabbit_hide 8
replaceitem block ~2 ~-3 ~3 slot.container 9 emerald 7
replaceitem block ~2 ~-3 ~3 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~-3 ~3 slot.container 11 campfire 8
replaceitem block ~2 ~-3 ~3 slot.container 12 lantern 4
replaceitem block ~2 ~-3 ~3 slot.container 13 sweet_berries 13
replaceitem block ~2 ~-3 ~3 slot.container 14 cooked_rabbit 8
loot insert ~2 ~-3 ~3 loot "rsf/taiga"
loot insert ~2 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 spruce_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-4 ~4 ~-5 ~4 ~4 ~5 mossy_cobblestone []
fill ~-4 ~5 ~-5 ~4 ~5 ~5 spruce_fence []
fill ~-3 ~5 ~-4 ~3 ~5 ~4 air []
setblock ~-4 ~5 ~-5 spruce_log []
setblock ~-4 ~6 ~-5 lantern []
setblock ~-4 ~5 ~5 spruce_log []
setblock ~-4 ~6 ~5 lantern []
setblock ~4 ~5 ~-5 spruce_log []
setblock ~4 ~6 ~-5 lantern []
setblock ~4 ~5 ~5 spruce_log []
setblock ~4 ~6 ~5 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x7x3) ---
fill ~-1 ~0 ~-6 ~1 ~0 ~-7 mossy_cobblestone []
setblock ~0 ~1 ~-7 campfire []
fill ~-1 ~1 ~-6 ~-1 ~4 ~-6 spruce_fence []
fill ~1 ~1 ~-6 ~1 ~4 ~-6 spruce_fence []
fill ~-1 ~5 ~-6 ~1 ~5 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 chiseled_stone_bricks []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 1 rabbit_hide 11
replaceitem block ~-3 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 9 sweet_berries 17
replaceitem block ~-3 ~1 ~4 slot.container 10 cooked_rabbit 12
replaceitem block ~-3 ~1 ~4 slot.container 11 cooked_salmon 6
replaceitem block ~-3 ~1 ~4 slot.container 12 spruce_log 17
replaceitem block ~-3 ~1 ~4 slot.container 13 iron_ingot 8
replaceitem block ~-3 ~1 ~4 slot.container 14 coal 15
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 leather 7
replaceitem block ~3 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 2 bone 13
replaceitem block ~3 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 5 string 14
replaceitem block ~3 ~1 ~4 slot.container 9 sweet_berries 15
replaceitem block ~3 ~1 ~4 slot.container 10 cooked_rabbit 10
replaceitem block ~3 ~1 ~4 slot.container 11 cooked_salmon 11
replaceitem block ~3 ~1 ~4 slot.container 12 spruce_log 22
replaceitem block ~3 ~1 ~4 slot.container 13 iron_ingot 6
replaceitem block ~3 ~1 ~4 slot.container 14 coal 13
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-3 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0759/4224 | 主题内编号: b119/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·半地下恒温洞穴苗圃 (taiga_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x15 | 地上高度 4格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~8 ~8 air [] replace log2
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 stone_bricks [] replace air
fill ~-5 ~-6 ~-7 ~5 ~-1 ~7 stone_bricks [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 spruce_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 spruce_planks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-3 ~-5 ~-5 ~3 ~-1 ~5 mossy_stone_bricks []
fill ~-2 ~-6 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-2 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-2 ~-4 ~4 slot.container 0 arrow 22
replaceitem block ~-2 ~-4 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-2 ~-4 ~4 slot.container 2 string 8
replaceitem block ~-2 ~-4 ~4 slot.container 3 gunpowder 7
replaceitem block ~-2 ~-4 ~4 slot.container 4 rabbit_hide 8
replaceitem block ~-2 ~-4 ~4 slot.container 5 leather 9
replaceitem block ~-2 ~-4 ~4 slot.container 9 spruce_log 20
replaceitem block ~-2 ~-4 ~4 slot.container 10 iron_ingot 11
replaceitem block ~-2 ~-4 ~4 slot.container 11 coal 18
replaceitem block ~-2 ~-4 ~4 slot.container 12 emerald 3
replaceitem block ~-2 ~-4 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~-2 ~-4 ~4 slot.container 14 campfire 4
loot insert ~-2 ~-4 ~4 loot "rsf/taiga"
loot insert ~-2 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-6 ~4 ~2 ~6 stone_bricks []
fill ~-3 ~1 ~-5 ~3 ~3 ~5 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mossy_stone_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 mossy_stone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~4 ~-6 ~4 ~4 ~6 mossy_stone_bricks []
fill ~-3 ~5 ~-5 ~3 ~6 ~5 glass []
fill ~-2 ~5 ~-4 ~2 ~5 ~4 air []
setblock ~0 ~6 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x9x2) ---
fill ~-2 ~0 ~-8 ~0 ~0 ~-9 mossy_cobblestone []
setblock ~-1 ~1 ~-9 campfire []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_fence []
fill ~0 ~1 ~-8 ~0 ~3 ~-8 spruce_fence []
fill ~-2 ~4 ~-8 ~0 ~4 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 lantern []
setblock ~-2 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 bone 10
replaceitem block ~3 ~1 ~5 slot.container 2 arrow 17
replaceitem block ~3 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~3 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~5 slot.container 10 campfire 6
replaceitem block ~3 ~1 ~5 slot.container 11 lantern 9
replaceitem block ~3 ~1 ~5 slot.container 12 sweet_berries 18
replaceitem block ~3 ~1 ~5 slot.container 13 cooked_rabbit 6
replaceitem block ~3 ~1 ~5 slot.container 14 cooked_salmon 7
loot insert ~3 ~1 ~5 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0645/4224 | 主题内编号: b005/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·下沉圣泉秘宝祭坛 (taiga_altar_sunken_well)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 11x13 | 地上高度 4格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~8 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 podzol []
setblock ~0 ~0 ~0 barrel []

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

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 spruce_planks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 spruce_planks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~4 ~-5 ~-4 ~6 ~-5 stripped_spruce_log []
setblock ~-4 ~7 ~-5 campfire []
fill ~-4 ~4 ~5 ~-4 ~6 ~5 stripped_spruce_log []
setblock ~-4 ~7 ~5 campfire []
fill ~4 ~4 ~-5 ~4 ~6 ~-5 stripped_spruce_log []
setblock ~4 ~7 ~-5 campfire []
fill ~4 ~4 ~5 ~4 ~6 ~5 stripped_spruce_log []
setblock ~4 ~7 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 spruce_log []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 spruce_log []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 spruce_log []
fill ~7 ~0 ~2 ~7 ~4 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x3) ---
fill ~0 ~0 ~-7 ~2 ~0 ~-8 mossy_cobblestone []
setblock ~1 ~1 ~-8 campfire []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 spruce_fence []
fill ~2 ~1 ~-7 ~2 ~4 ~-7 spruce_fence []
fill ~0 ~5 ~-7 ~2 ~5 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-1 ~1 ~5 brewing_stand []
setblock ~1 ~1 ~5 cauldron []
setblock ~0 ~1 ~5 iron_block []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rabbit_hide 11
replaceitem block ~3 ~1 ~4 slot.container 1 leather 12
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 bone 10
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 coal 13
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 5
replaceitem block ~3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 12 campfire 6
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 9
replaceitem block ~3 ~1 ~4 slot.container 14 sweet_berries 18
loot insert ~3 ~1 ~4 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

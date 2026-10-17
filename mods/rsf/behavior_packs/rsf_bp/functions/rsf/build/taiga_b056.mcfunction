# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0696/4224 | 主题内编号: b056/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·隐士半地下避难山居 (taiga_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_prison]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mossy_stone_bricks []
fill ~-2 ~-4 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~3 slot.container 0 gunpowder 7
replaceitem block ~2 ~-2 ~3 slot.container 1 rabbit_hide 8
replaceitem block ~2 ~-2 ~3 slot.container 2 leather 9
replaceitem block ~2 ~-2 ~3 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~3 slot.container 4 bone 15
replaceitem block ~2 ~-2 ~3 slot.container 5 arrow 22
replaceitem block ~2 ~-2 ~3 slot.container 9 cooked_salmon 12
replaceitem block ~2 ~-2 ~3 slot.container 10 spruce_log 16
replaceitem block ~2 ~-2 ~3 slot.container 11 iron_ingot 7
replaceitem block ~2 ~-2 ~3 slot.container 12 coal 14
replaceitem block ~2 ~-2 ~3 slot.container 13 emerald 6
replaceitem block ~2 ~-2 ~3 slot.container 14 iron_pickaxe 1
loot insert ~2 ~-2 ~3 loot "rsf/taiga"
loot insert ~2 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 spruce_planks []
fill ~-3 ~1 ~-4 ~3 ~3 ~4 air []
fill ~-4 ~1 ~0 ~4 ~2 ~0 mossy_cobblestone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 mossy_cobblestone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-6 ~-5 ~6 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-6 ~5 ~6 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~-4 ~7 ~5 spruce_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-5 ~4 ~7 ~5 spruce_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-5 ~3 ~7 ~5 spruce_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 spruce_log []
setblock ~0 ~4 ~-8 chiseled_stone_bricks []
setblock ~0 ~5 ~-8 lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 spruce_log []
setblock ~0 ~4 ~8 chiseled_stone_bricks []
setblock ~0 ~5 ~8 lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 spruce_log []
setblock ~-7 ~4 ~0 chiseled_stone_bricks []
setblock ~-7 ~5 ~0 lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 spruce_log []
setblock ~7 ~4 ~0 chiseled_stone_bricks []
setblock ~7 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x4) ---
fill ~-1 ~0 ~-7 ~1 ~0 ~-8 mossy_cobblestone []
setblock ~0 ~1 ~-8 campfire []
fill ~-1 ~1 ~-7 ~-1 ~5 ~-7 spruce_fence []
fill ~1 ~1 ~-7 ~1 ~5 ~-7 spruce_fence []
fill ~-1 ~6 ~-7 ~1 ~6 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~3 ~0 lantern []
fill ~-4 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-4 ~1 ~5 cauldron []
setblock ~4 ~1 ~0 barrel []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 string 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 5 rabbit_hide 11
replaceitem block ~-3 ~1 ~4 slot.container 9 campfire 5
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~-3 ~1 ~4 slot.container 11 sweet_berries 17
replaceitem block ~-3 ~1 ~4 slot.container 12 cooked_rabbit 12
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_salmon 6
replaceitem block ~-3 ~1 ~4 slot.container 14 spruce_log 17
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 3 rabbit_hide 6
replaceitem block ~3 ~1 ~4 slot.container 4 leather 7
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 campfire 3
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~3 ~1 ~4 slot.container 11 sweet_berries 15
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_rabbit 10
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~3 ~1 ~4 slot.container 14 spruce_log 22
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

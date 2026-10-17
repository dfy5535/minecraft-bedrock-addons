# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0673/4224 | 主题内编号: b033/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·太阳金顶高耸方尖碑 (taiga_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log2
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-3 ~-6 ~5 ~-1 ~6 spruce_planks []
fill ~-4 ~-4 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~-3 ~-4 ~-4 lantern []
setblock ~3 ~-4 ~4 lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 gunpowder 7
replaceitem block ~0 ~-2 ~4 slot.container 1 rabbit_hide 8
replaceitem block ~0 ~-2 ~4 slot.container 2 leather 9
replaceitem block ~0 ~-2 ~4 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-2 ~4 slot.container 4 bone 15
replaceitem block ~0 ~-2 ~4 slot.container 5 arrow 22
replaceitem block ~0 ~-2 ~4 slot.container 9 sweet_berries 18
replaceitem block ~0 ~-2 ~4 slot.container 10 cooked_rabbit 6
replaceitem block ~0 ~-2 ~4 slot.container 11 cooked_salmon 7
replaceitem block ~0 ~-2 ~4 slot.container 12 spruce_log 18
replaceitem block ~0 ~-2 ~4 slot.container 13 iron_ingot 9
replaceitem block ~0 ~-2 ~4 slot.container 14 coal 16
loot insert ~0 ~-2 ~4 loot "rsf/taiga"
loot insert ~0 ~-2 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-3 ~1 ~-4 ~3 ~2 ~4 mossy_stone_bricks []
fill ~-2 ~3 ~-3 ~2 ~4 ~3 spruce_planks []
fill ~-1 ~5 ~-2 ~1 ~10 ~2 cobblestone []
fill ~-1 ~1 ~-2 ~1 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 spruce_planks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 mossy_stone_bricks []
fill ~0 ~16 ~0 ~0 ~18 ~0 barrel []
setblock ~0 ~19 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-5 ~0 ~-6 ~-5 ~3 ~-6 stripped_spruce_log []
setblock ~-5 ~4 ~-6 campfire []
fill ~-5 ~0 ~6 ~-5 ~3 ~6 stripped_spruce_log []
setblock ~-5 ~4 ~6 campfire []
fill ~5 ~0 ~-6 ~5 ~3 ~-6 stripped_spruce_log []
setblock ~5 ~4 ~-6 campfire []
fill ~5 ~0 ~6 ~5 ~3 ~6 stripped_spruce_log []
setblock ~5 ~4 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 4x5x6) ---
fill ~-2 ~0 ~-4 ~0 ~0 ~-5 mossy_cobblestone []
setblock ~-1 ~1 ~-5 campfire []
fill ~-2 ~1 ~-4 ~-2 ~7 ~-4 spruce_fence []
fill ~0 ~1 ~-4 ~0 ~7 ~-4 spruce_fence []
fill ~-2 ~8 ~-4 ~0 ~8 ~-5 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 barrel []
setblock ~0 ~2 ~0 campfire []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 arrow 17
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 4 rabbit_hide 11
replaceitem block ~2 ~1 ~3 slot.container 5 leather 12
replaceitem block ~2 ~1 ~3 slot.container 9 lantern 5
replaceitem block ~2 ~1 ~3 slot.container 10 sweet_berries 14
replaceitem block ~2 ~1 ~3 slot.container 11 cooked_rabbit 9
replaceitem block ~2 ~1 ~3 slot.container 12 cooked_salmon 10
replaceitem block ~2 ~1 ~3 slot.container 13 spruce_log 21
replaceitem block ~2 ~1 ~3 slot.container 14 iron_ingot 12
loot insert ~2 ~1 ~3 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1

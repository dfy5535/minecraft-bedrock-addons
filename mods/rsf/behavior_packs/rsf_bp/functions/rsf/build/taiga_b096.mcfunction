# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0736/4224 | 主题内编号: b096/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·高台三阶献祭神祠 (taiga_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
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
replaceitem block ~2 ~-2 ~3 slot.container 9 cooked_salmon 10
replaceitem block ~2 ~-2 ~3 slot.container 10 spruce_log 21
replaceitem block ~2 ~-2 ~3 slot.container 11 iron_ingot 12
replaceitem block ~2 ~-2 ~3 slot.container 12 coal 12
replaceitem block ~2 ~-2 ~3 slot.container 13 emerald 4
replaceitem block ~2 ~-2 ~3 slot.container 14 iron_pickaxe 1
loot insert ~2 ~-2 ~3 loot "rsf/taiga"
loot insert ~2 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 spruce_planks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 mossy_cobblestone []
fill ~-2 ~5 ~-3 ~2 ~6 ~3 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 spruce_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 mossy_cobblestone []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 mossy_stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x6x4) ---
fill ~-1 ~0 ~-5 ~1 ~0 ~-6 mossy_cobblestone []
setblock ~0 ~1 ~-6 campfire []
fill ~-1 ~1 ~-5 ~-1 ~5 ~-5 spruce_fence []
fill ~1 ~1 ~-5 ~1 ~5 ~-5 spruce_fence []
fill ~-1 ~6 ~-5 ~1 ~6 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-3 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 3 string 11
replaceitem block ~-3 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 5 rabbit_hide 11
replaceitem block ~-3 ~1 ~4 slot.container 9 campfire 3
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 6
replaceitem block ~-3 ~1 ~4 slot.container 11 sweet_berries 15
replaceitem block ~-3 ~1 ~4 slot.container 12 cooked_rabbit 10
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_salmon 11
replaceitem block ~-3 ~1 ~4 slot.container 14 spruce_log 22
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~4 slot.container 1 string 14
replaceitem block ~3 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 3 rabbit_hide 6
replaceitem block ~3 ~1 ~4 slot.container 4 leather 7
replaceitem block ~3 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 9 campfire 8
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 11 sweet_berries 13
replaceitem block ~3 ~1 ~4 slot.container 12 cooked_rabbit 8
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_salmon 9
replaceitem block ~3 ~1 ~4 slot.container 14 spruce_log 20
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1

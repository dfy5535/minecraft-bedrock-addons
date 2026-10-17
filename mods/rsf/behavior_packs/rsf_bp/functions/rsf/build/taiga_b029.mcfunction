# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0669/4224 | 主题内编号: b029/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·奥术星象琉璃塔 (taiga_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 cobblestone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 barrel []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~2 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~2 ~-3 ~0 slot.container 0 rabbit_hide 8
replaceitem block ~2 ~-3 ~0 slot.container 1 leather 9
replaceitem block ~2 ~-3 ~0 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~0 slot.container 3 bone 15
replaceitem block ~2 ~-3 ~0 slot.container 4 arrow 22
replaceitem block ~2 ~-3 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-3 ~0 slot.container 9 spruce_log 18
replaceitem block ~2 ~-3 ~0 slot.container 10 iron_ingot 9
replaceitem block ~2 ~-3 ~0 slot.container 11 coal 16
replaceitem block ~2 ~-3 ~0 slot.container 12 emerald 8
replaceitem block ~2 ~-3 ~0 slot.container 13 iron_pickaxe 1
replaceitem block ~2 ~-3 ~0 slot.container 14 campfire 2
loot insert ~2 ~-3 ~0 loot "rsf/taiga"
loot insert ~2 ~-3 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-4 ~1 ~-5 ~4 ~9 ~5 mossy_stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~8 ~4 air []
fill ~-5 ~8 ~-6 ~5 ~8 ~6 cobblestone_slab []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~4 ~0 ~9 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-4 ~9 ~-5 ~4 ~9 ~5 spruce_planks []
fill ~-3 ~10 ~-4 ~3 ~11 ~4 glass []
fill ~-2 ~10 ~-3 ~2 ~10 ~3 air []
setblock ~0 ~11 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x2) ---
fill ~0 ~0 ~-7 ~2 ~0 ~-8 mossy_cobblestone []
setblock ~1 ~1 ~-8 campfire []
fill ~0 ~1 ~-7 ~0 ~3 ~-7 spruce_fence []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_fence []
fill ~0 ~4 ~-7 ~2 ~4 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rabbit_hide 11
replaceitem block ~3 ~1 ~4 slot.container 1 leather 12
replaceitem block ~3 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 3 bone 10
replaceitem block ~3 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 9 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 10 campfire 7
replaceitem block ~3 ~1 ~4 slot.container 11 lantern 10
replaceitem block ~3 ~1 ~4 slot.container 12 sweet_berries 12
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_rabbit 7
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_salmon 8
loot insert ~3 ~1 ~4 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

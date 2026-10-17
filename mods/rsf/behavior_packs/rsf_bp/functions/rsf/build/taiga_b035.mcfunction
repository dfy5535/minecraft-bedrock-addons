# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0675/4224 | 主题内编号: b035/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·巨石垒砌古战石冢 (taiga_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 11x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~10 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_planks []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-2 ~-3 ~-3 ~2 ~-1 ~3 stone_bricks []
fill ~-1 ~-4 ~-2 ~1 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~1 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~1 ~-2 ~2 slot.container 0 leather 9
replaceitem block ~1 ~-2 ~2 slot.container 1 ender_pearl 6
replaceitem block ~1 ~-2 ~2 slot.container 2 bone 15
replaceitem block ~1 ~-2 ~2 slot.container 3 arrow 22
replaceitem block ~1 ~-2 ~2 slot.container 4 rotten_flesh 17
replaceitem block ~1 ~-2 ~2 slot.container 5 string 8
replaceitem block ~1 ~-2 ~2 slot.container 9 cooked_salmon 10
replaceitem block ~1 ~-2 ~2 slot.container 10 spruce_log 21
replaceitem block ~1 ~-2 ~2 slot.container 11 iron_ingot 12
replaceitem block ~1 ~-2 ~2 slot.container 12 coal 12
replaceitem block ~1 ~-2 ~2 slot.container 13 emerald 4
replaceitem block ~1 ~-2 ~2 slot.container 14 iron_pickaxe 1
loot insert ~1 ~-2 ~2 loot "rsf/taiga"
loot insert ~1 ~-2 ~2 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-5 ~4 ~6 ~5 stone_bricks []
fill ~-3 ~1 ~-4 ~3 ~5 ~4 air []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 air []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 air []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 air []
fill ~4 ~1 ~5 ~4 ~7 ~5 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 spruce_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 spruce_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 spruce_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 mossy_stone_bricks []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 spruce_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 iron_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 spruce_log []
setblock ~0 ~4 ~-7 chiseled_stone_bricks []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 spruce_log []
setblock ~0 ~4 ~7 chiseled_stone_bricks []
setblock ~0 ~5 ~7 lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 spruce_log []
setblock ~-6 ~4 ~0 chiseled_stone_bricks []
setblock ~-6 ~5 ~0 lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 spruce_log []
setblock ~6 ~4 ~0 chiseled_stone_bricks []
setblock ~6 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x8x3) ---
fill ~-2 ~0 ~-7 ~0 ~0 ~-8 mossy_cobblestone []
setblock ~-1 ~1 ~-8 campfire []
fill ~-2 ~1 ~-7 ~-2 ~4 ~-7 spruce_fence []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 spruce_fence []
fill ~-2 ~5 ~-7 ~0 ~5 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-3 ~1 ~4 smithing_table []
setblock ~-2 ~1 ~4 anvil []
setblock ~2 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 string 11
replaceitem block ~3 ~1 ~4 slot.container 1 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 2 rabbit_hide 11
replaceitem block ~3 ~1 ~4 slot.container 3 leather 12
replaceitem block ~3 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~4 slot.container 5 bone 10
replaceitem block ~3 ~1 ~4 slot.container 9 coal 15
replaceitem block ~3 ~1 ~4 slot.container 10 emerald 7
replaceitem block ~3 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 12 campfire 8
replaceitem block ~3 ~1 ~4 slot.container 13 lantern 4
replaceitem block ~3 ~1 ~4 slot.container 14 sweet_berries 13
loot insert ~3 ~1 ~4 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

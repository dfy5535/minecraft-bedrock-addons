# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0666/4224 | 主题内编号: b026/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·尖顶信标引航高塔 (taiga_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 9x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~14 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 cobblestone [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 podzol []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

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
fill ~-3 ~1 ~-4 ~3 ~10 ~4 cobblestone []
fill ~-2 ~1 ~-3 ~2 ~9 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~11 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~11 ~-4 air []
fill ~-3 ~1 ~4 ~-3 ~11 ~4 air []
fill ~3 ~1 ~4 ~3 ~11 ~4 air []
fill ~-2 ~1 ~-3 ~-2 ~10 ~-3 spruce_log []
fill ~2 ~1 ~-3 ~2 ~10 ~-3 spruce_log []
fill ~-2 ~1 ~3 ~-2 ~10 ~3 spruce_log []
fill ~2 ~1 ~3 ~2 ~10 ~3 spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~7 ~-5 ~4 ~7 ~5 mossy_stone_bricks []
fill ~-3 ~8 ~-4 ~3 ~8 ~4 spruce_planks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 iron_block []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 spruce_log []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 spruce_log []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 spruce_log []
fill ~4 ~0 ~2 ~4 ~9 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 4x7x4) ---
fill ~0 ~0 ~-6 ~2 ~0 ~-7 mossy_cobblestone []
setblock ~1 ~1 ~-7 campfire []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 spruce_fence []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 spruce_fence []
fill ~0 ~6 ~-6 ~2 ~6 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~9 ~0 lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 bookshelf []
setblock ~0 ~1 ~0 iron_block []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-2 ~1 ~3 slot.container 1 string 11
replaceitem block ~-2 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-2 ~1 ~3 slot.container 3 rabbit_hide 11
replaceitem block ~-2 ~1 ~3 slot.container 4 leather 12
replaceitem block ~-2 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-2 ~1 ~3 slot.container 9 campfire 3
replaceitem block ~-2 ~1 ~3 slot.container 10 lantern 6
replaceitem block ~-2 ~1 ~3 slot.container 11 sweet_berries 15
replaceitem block ~-2 ~1 ~3 slot.container 12 cooked_rabbit 10
replaceitem block ~-2 ~1 ~3 slot.container 13 cooked_salmon 11
replaceitem block ~-2 ~1 ~3 slot.container 14 spruce_log 22
loot insert ~-2 ~1 ~3 loot "rsf/taiga"
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~2 ~1 ~3 slot.container 1 rabbit_hide 6
replaceitem block ~2 ~1 ~3 slot.container 2 leather 7
replaceitem block ~2 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~2 ~1 ~3 slot.container 4 bone 13
replaceitem block ~2 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~2 ~1 ~3 slot.container 9 campfire 8
replaceitem block ~2 ~1 ~3 slot.container 10 lantern 4
replaceitem block ~2 ~1 ~3 slot.container 11 sweet_berries 13
replaceitem block ~2 ~1 ~3 slot.container 12 cooked_rabbit 8
replaceitem block ~2 ~1 ~3 slot.container 13 cooked_salmon 9
replaceitem block ~2 ~1 ~3 slot.container 14 spruce_log 20
loot insert ~2 ~1 ~3 loot "rsf/taiga"
loot insert ~2 ~1 ~3 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

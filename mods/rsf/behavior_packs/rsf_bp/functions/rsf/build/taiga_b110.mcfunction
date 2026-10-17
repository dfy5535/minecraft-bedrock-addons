# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0750/4224 | 主题内编号: b110/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双子附魔与酿造实验楼 (taiga_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobblestone [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cobblestone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 podzol []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 stone_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 1 string 8
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 3 rabbit_hide 8
replaceitem block ~4 ~-2 ~3 slot.container 4 leather 9
replaceitem block ~4 ~-2 ~3 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 9 iron_ingot 10
replaceitem block ~4 ~-2 ~3 slot.container 10 coal 17
replaceitem block ~4 ~-2 ~3 slot.container 11 emerald 9
replaceitem block ~4 ~-2 ~3 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~-2 ~3 slot.container 13 campfire 3
replaceitem block ~4 ~-2 ~3 slot.container 14 lantern 6
loot insert ~4 ~-2 ~3 loot "rsf/taiga"
loot insert ~4 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-5 ~-2 ~7 ~5 cobblestone []
fill ~2 ~1 ~-5 ~6 ~7 ~5 cobblestone []
fill ~-5 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 spruce_planks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 cobblestone_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 stone_bricks []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 spruce_slab []
setblock ~0 ~10 ~0 bookshelf []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~7 ~2 cobblestone []
fill ~6 ~1 ~-1 ~7 ~6 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~8 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~-2 ~0 ~-7 ~0 ~0 ~-8 mossy_cobblestone []
setblock ~-1 ~1 ~-8 campfire []
fill ~-2 ~1 ~-7 ~-2 ~4 ~-7 spruce_fence []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 spruce_fence []
fill ~-2 ~5 ~-7 ~0 ~5 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~-5 ~1 ~4 slot.container 5 string 11
replaceitem block ~-5 ~1 ~4 slot.container 9 sweet_berries 13
replaceitem block ~-5 ~1 ~4 slot.container 10 cooked_rabbit 8
replaceitem block ~-5 ~1 ~4 slot.container 11 cooked_salmon 9
replaceitem block ~-5 ~1 ~4 slot.container 12 spruce_log 20
replaceitem block ~-5 ~1 ~4 slot.container 13 iron_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 14 coal 18
loot insert ~-5 ~1 ~4 loot "rsf/taiga"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 bone 13
replaceitem block ~5 ~1 ~4 slot.container 1 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 string 14
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~5 ~1 ~4 slot.container 5 rabbit_hide 6
replaceitem block ~5 ~1 ~4 slot.container 9 sweet_berries 18
replaceitem block ~5 ~1 ~4 slot.container 10 cooked_rabbit 6
replaceitem block ~5 ~1 ~4 slot.container 11 cooked_salmon 7
replaceitem block ~5 ~1 ~4 slot.container 12 spruce_log 18
replaceitem block ~5 ~1 ~4 slot.container 13 iron_ingot 9
replaceitem block ~5 ~1 ~4 slot.container 14 coal 16
loot insert ~5 ~1 ~4 loot "rsf/taiga"
loot insert ~5 ~1 ~4 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

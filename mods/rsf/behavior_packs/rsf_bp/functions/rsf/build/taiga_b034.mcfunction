# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0674/4224 | 主题内编号: b034/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双子对称铭文方尖碑 (taiga_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace leaves2
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log
fill ~-7 ~1 ~-6 ~7 ~13 ~6 air [] replace log2
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobblestone [] replace water
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cobblestone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 podzol []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-6 ~-5 ~4 ~0 ~5 air []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-6 ~0 iron_block []
setblock ~-3 ~-6 ~-4 lantern []
setblock ~3 ~-6 ~4 lantern []
setblock ~0 ~-4 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~4 slot.container 0 string 8
replaceitem block ~0 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~0 ~-4 ~4 slot.container 2 rabbit_hide 8
replaceitem block ~0 ~-4 ~4 slot.container 3 leather 9
replaceitem block ~0 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~0 ~-4 ~4 slot.container 5 bone 15
replaceitem block ~0 ~-4 ~4 slot.container 9 coal 16
replaceitem block ~0 ~-4 ~4 slot.container 10 emerald 8
replaceitem block ~0 ~-4 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-4 ~4 slot.container 12 campfire 2
replaceitem block ~0 ~-4 ~4 slot.container 13 lantern 5
replaceitem block ~0 ~-4 ~4 slot.container 14 sweet_berries 14
loot insert ~0 ~-4 ~4 loot "rsf/taiga"
loot insert ~0 ~-4 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-4 ~-2 ~10 ~4 cobblestone []
fill ~2 ~1 ~-4 ~5 ~10 ~4 cobblestone []
fill ~-4 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 spruce_planks []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 spruce_planks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobblestone []
fill ~0 ~15 ~0 ~0 ~17 ~0 bookshelf []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 spruce_planks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x6x2) ---
fill ~-1 ~0 ~-5 ~1 ~0 ~-6 mossy_cobblestone []
setblock ~0 ~1 ~-6 campfire []
fill ~-1 ~1 ~-5 ~-1 ~3 ~-5 spruce_fence []
fill ~1 ~1 ~-5 ~1 ~3 ~-5 spruce_fence []
fill ~-1 ~4 ~-5 ~1 ~4 ~-6 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~-4 ~1 ~3 slot.container 1 string 11
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~3 slot.container 3 rabbit_hide 11
replaceitem block ~-4 ~1 ~3 slot.container 4 leather 12
replaceitem block ~-4 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~3 slot.container 9 cooked_salmon 8
replaceitem block ~-4 ~1 ~3 slot.container 10 spruce_log 19
replaceitem block ~-4 ~1 ~3 slot.container 11 iron_ingot 10
replaceitem block ~-4 ~1 ~3 slot.container 12 coal 17
replaceitem block ~-4 ~1 ~3 slot.container 13 emerald 9
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~-4 ~1 ~3 loot "rsf/taiga"
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~3 slot.container 1 rabbit_hide 6
replaceitem block ~4 ~1 ~3 slot.container 2 leather 7
replaceitem block ~4 ~1 ~3 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~3 slot.container 4 bone 13
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 20
replaceitem block ~4 ~1 ~3 slot.container 9 cooked_salmon 6
replaceitem block ~4 ~1 ~3 slot.container 10 spruce_log 17
replaceitem block ~4 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~4 ~1 ~3 slot.container 12 coal 15
replaceitem block ~4 ~1 ~3 slot.container 13 emerald 7
replaceitem block ~4 ~1 ~3 slot.container 14 iron_pickaxe 1
loot insert ~4 ~1 ~3 loot "rsf/taiga"
loot insert ~4 ~1 ~3 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-2 ~0

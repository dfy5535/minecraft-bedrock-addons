# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0725/4224 | 主题内编号: b085/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·双子烟囱砖石窑厂 (taiga_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~11 ~7 air [] replace log2
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 stone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 mossy_cobblestone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 spruce_planks []
setblock ~0 ~-7 ~0 bookshelf []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 1 bone 15
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 22
replaceitem block ~0 ~-4 ~-3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-4 ~-3 slot.container 4 string 8
replaceitem block ~0 ~-4 ~-3 slot.container 5 gunpowder 7
replaceitem block ~0 ~-4 ~-3 slot.container 9 lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 10 sweet_berries 17
replaceitem block ~0 ~-4 ~-3 slot.container 11 cooked_rabbit 12
replaceitem block ~0 ~-4 ~-3 slot.container 12 cooked_salmon 6
replaceitem block ~0 ~-4 ~-3 slot.container 13 spruce_log 17
replaceitem block ~0 ~-4 ~-3 slot.container 14 iron_ingot 8
loot insert ~0 ~-4 ~-3 loot "rsf/taiga"
loot insert ~0 ~-4 ~-3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~8 ~5 mossy_stone_bricks []
fill ~2 ~1 ~-5 ~5 ~8 ~5 mossy_stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~7 ~4 air []
fill ~3 ~1 ~-4 ~4 ~7 ~4 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 spruce_planks []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 spruce_planks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 mossy_stone_bricks []
fill ~0 ~13 ~0 ~0 ~15 ~0 barrel []
setblock ~0 ~16 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 spruce_planks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 stripped_spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 stripped_spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 stone_brick_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~0 ~0 ~-6 ~2 ~0 ~-7 mossy_cobblestone []
setblock ~1 ~1 ~-7 campfire []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 spruce_fence []
fill ~2 ~1 ~-6 ~2 ~4 ~-6 spruce_fence []
fill ~0 ~5 ~-6 ~2 ~5 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 rabbit_hide 11
replaceitem block ~4 ~1 ~4 slot.container 1 leather 12
replaceitem block ~4 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 3 bone 10
replaceitem block ~4 ~1 ~4 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~4 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 9 coal 16
replaceitem block ~4 ~1 ~4 slot.container 10 emerald 8
replaceitem block ~4 ~1 ~4 slot.container 11 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 12 campfire 2
replaceitem block ~4 ~1 ~4 slot.container 13 lantern 5
replaceitem block ~4 ~1 ~4 slot.container 14 sweet_berries 14
loot insert ~4 ~1 ~4 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0

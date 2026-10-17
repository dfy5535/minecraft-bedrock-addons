# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0741/4224 | 主题内编号: b101/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·L型驻军兵营军械所 (taiga_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
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

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~6 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~0 ~5 ~5 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~-1 ~5 ~5 air []
fill ~-1 ~1 ~1 ~4 ~4 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 spruce_planks []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 stripped_spruce_log []
setblock ~-5 ~8 ~-6 campfire []
setblock ~-5 ~7 ~6 stripped_spruce_log []
setblock ~-5 ~8 ~6 campfire []
setblock ~5 ~7 ~-6 stripped_spruce_log []
setblock ~5 ~8 ~-6 campfire []
setblock ~5 ~7 ~6 stripped_spruce_log []
setblock ~5 ~8 ~6 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~8 ~2 cobblestone []
fill ~6 ~1 ~-1 ~7 ~7 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~9 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x9x4) ---
fill ~1 ~0 ~-8 ~3 ~0 ~-9 mossy_cobblestone []
setblock ~2 ~1 ~-9 campfire []
fill ~1 ~1 ~-8 ~1 ~5 ~-8 spruce_fence []
fill ~3 ~1 ~-8 ~3 ~5 ~-8 spruce_fence []
fill ~1 ~6 ~-8 ~3 ~6 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rabbit_hide 11
replaceitem block ~4 ~1 ~5 slot.container 1 leather 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 spruce_log 22
replaceitem block ~4 ~1 ~5 slot.container 10 iron_ingot 6
replaceitem block ~4 ~1 ~5 slot.container 11 coal 13
replaceitem block ~4 ~1 ~5 slot.container 12 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 14 campfire 6
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

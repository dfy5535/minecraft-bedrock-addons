# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0708/4224 | 主题内编号: b068/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·断裂凯旋高架拱廊 (taiga_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace leaves2
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air [] replace log2
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 spruce_planks [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 spruce_planks [] replace water
fill ~-7 ~0 ~-6 ~7 ~0 ~6 spruce_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 stone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 spruce_planks []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-3 ~3 slot.container 1 bone 15
replaceitem block ~3 ~-3 ~3 slot.container 2 arrow 22
replaceitem block ~3 ~-3 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~3 ~-3 ~3 slot.container 4 string 8
replaceitem block ~3 ~-3 ~3 slot.container 5 gunpowder 7
replaceitem block ~3 ~-3 ~3 slot.container 9 cooked_rabbit 6
replaceitem block ~3 ~-3 ~3 slot.container 10 cooked_salmon 7
replaceitem block ~3 ~-3 ~3 slot.container 11 spruce_log 18
replaceitem block ~3 ~-3 ~3 slot.container 12 iron_ingot 9
replaceitem block ~3 ~-3 ~3 slot.container 13 coal 16
replaceitem block ~3 ~-3 ~3 slot.container 14 emerald 8
loot insert ~3 ~-3 ~3 loot "rsf/taiga"
loot insert ~3 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 spruce_planks []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-1 ~1 ~-5 ~1 ~3 ~5 air []
fill ~-1 ~3 ~-5 ~1 ~3 ~-5 iron_bars []
fill ~-1 ~3 ~5 ~1 ~3 ~5 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 spruce_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-2 ~0 ~-7 ~0 ~0 ~-8 mossy_cobblestone []
setblock ~-1 ~1 ~-8 campfire []
fill ~-2 ~1 ~-7 ~-2 ~7 ~-7 spruce_fence []
fill ~0 ~1 ~-7 ~0 ~7 ~-7 spruce_fence []
fill ~-2 ~8 ~-7 ~0 ~8 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 rabbit_hide 11
replaceitem block ~-5 ~1 ~4 slot.container 2 leather 12
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 10
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 17
replaceitem block ~-5 ~1 ~4 slot.container 9 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 10 coal 14
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~-5 ~1 ~4 slot.container 13 campfire 7
replaceitem block ~-5 ~1 ~4 slot.container 14 lantern 10
loot insert ~-5 ~1 ~4 loot "rsf/taiga"
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 leather 7
replaceitem block ~5 ~1 ~4 slot.container 1 ender_pearl 4
replaceitem block ~5 ~1 ~4 slot.container 2 bone 13
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 20
replaceitem block ~5 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 14
replaceitem block ~5 ~1 ~4 slot.container 9 iron_ingot 12
replaceitem block ~5 ~1 ~4 slot.container 10 coal 12
replaceitem block ~5 ~1 ~4 slot.container 11 emerald 4
replaceitem block ~5 ~1 ~4 slot.container 12 iron_pickaxe 1
replaceitem block ~5 ~1 ~4 slot.container 13 campfire 5
replaceitem block ~5 ~1 ~4 slot.container 14 lantern 8
loot insert ~5 ~1 ~4 loot "rsf/taiga"
loot insert ~5 ~1 ~4 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

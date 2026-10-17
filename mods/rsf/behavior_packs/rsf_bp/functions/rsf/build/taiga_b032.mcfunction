# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0672/4224 | 主题内编号: b032/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·断顶残垣古哨塔 (taiga_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 9x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-7 ~5 ~12 ~7 air [] replace leaves
fill ~-5 ~1 ~-7 ~5 ~12 ~7 air [] replace leaves2
fill ~-5 ~1 ~-7 ~5 ~12 ~7 air [] replace log
fill ~-5 ~1 ~-7 ~5 ~12 ~7 air [] replace log2
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 spruce_planks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 spruce_planks [] replace water
fill ~-4 ~0 ~-6 ~4 ~0 ~6 spruce_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 stone_bricks []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~8 ~5 spruce_planks []
fill ~-2 ~1 ~-4 ~2 ~7 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~8 ~-5 spruce_log []
fill ~-3 ~1 ~5 ~-3 ~8 ~5 spruce_log []
fill ~3 ~1 ~-5 ~3 ~8 ~-5 spruce_log []
fill ~3 ~1 ~5 ~3 ~8 ~5 spruce_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 spruce_fence []
setblock ~3 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~8 ~-5 ~3 ~8 ~5 spruce_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-3 ~7 ~-1 ~-3 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~7 ~-2 spruce_log []
fill ~-4 ~0 ~2 ~-4 ~7 ~2 spruce_log []
fill ~4 ~0 ~-2 ~4 ~7 ~-2 spruce_log []
fill ~4 ~0 ~2 ~4 ~7 ~2 spruce_log []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 4x8x5) ---
fill ~0 ~0 ~-7 ~2 ~0 ~-8 mossy_cobblestone []
setblock ~1 ~1 ~-8 campfire []
fill ~0 ~1 ~-7 ~0 ~6 ~-7 spruce_fence []
fill ~2 ~1 ~-7 ~2 ~6 ~-7 spruce_fence []
fill ~0 ~7 ~-7 ~2 ~7 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 lantern []
setblock ~-2 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~2 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 bone 10
replaceitem block ~-2 ~1 ~4 slot.container 1 arrow 17
replaceitem block ~-2 ~1 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~-2 ~1 ~4 slot.container 3 string 11
replaceitem block ~-2 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-2 ~1 ~4 slot.container 5 rabbit_hide 11
replaceitem block ~-2 ~1 ~4 slot.container 9 emerald 3
replaceitem block ~-2 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-2 ~1 ~4 slot.container 11 campfire 4
replaceitem block ~-2 ~1 ~4 slot.container 12 lantern 7
replaceitem block ~-2 ~1 ~4 slot.container 13 sweet_berries 16
replaceitem block ~-2 ~1 ~4 slot.container 14 cooked_rabbit 11
loot insert ~-2 ~1 ~4 loot "rsf/taiga"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~2 ~1 ~4 slot.container 1 string 14
replaceitem block ~2 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~2 ~1 ~4 slot.container 3 rabbit_hide 6
replaceitem block ~2 ~1 ~4 slot.container 4 leather 7
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 emerald 8
replaceitem block ~2 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~2 ~1 ~4 slot.container 11 campfire 2
replaceitem block ~2 ~1 ~4 slot.container 12 lantern 5
replaceitem block ~2 ~1 ~4 slot.container 13 sweet_berries 14
replaceitem block ~2 ~1 ~4 slot.container 14 cooked_rabbit 9
loot insert ~2 ~1 ~4 loot "rsf/taiga"
loot insert ~2 ~1 ~4 loot "chests/village/village_taiga_house"
summon stray ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

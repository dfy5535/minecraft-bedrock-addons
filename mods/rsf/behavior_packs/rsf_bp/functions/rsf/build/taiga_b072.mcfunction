# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0712/4224 | 主题内编号: b072/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·L型古商会废墟暗窖 (taiga_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[trial_pit] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 spruce_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 spruce_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
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

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-6 ~0 ~5 ~6 spruce_planks []
fill ~-5 ~1 ~0 ~5 ~4 ~6 mossy_stone_bricks []
fill ~-4 ~1 ~-5 ~-1 ~4 ~5 air []
fill ~-1 ~1 ~1 ~4 ~3 ~5 air []
fill ~-2 ~1 ~-6 ~-2 ~2 ~-6 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 spruce_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mossy_cobblestone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 spruce_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-3 ~0 ~-6 ~-1 ~0 ~-7 mossy_cobblestone []
setblock ~-2 ~1 ~-7 campfire []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 spruce_fence []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 spruce_fence []
fill ~-3 ~7 ~-6 ~-1 ~7 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 stonecutter_block []
setblock ~0 ~1 ~5 crafting_table []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 1 arrow 17
replaceitem block ~-4 ~1 ~5 slot.container 2 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 3 string 11
replaceitem block ~-4 ~1 ~5 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 5 rabbit_hide 11
replaceitem block ~-4 ~1 ~5 slot.container 9 emerald 8
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 11 campfire 2
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 5
replaceitem block ~-4 ~1 ~5 slot.container 13 sweet_berries 14
replaceitem block ~-4 ~1 ~5 slot.container 14 cooked_rabbit 9
loot insert ~-4 ~1 ~5 loot "rsf/taiga"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 1 string 14
replaceitem block ~4 ~1 ~5 slot.container 2 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 3 rabbit_hide 6
replaceitem block ~4 ~1 ~5 slot.container 4 leather 7
replaceitem block ~4 ~1 ~5 slot.container 5 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 6
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 campfire 7
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 10
replaceitem block ~4 ~1 ~5 slot.container 13 sweet_berries 12
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_rabbit 7
loot insert ~4 ~1 ~5 loot "rsf/taiga"
loot insert ~4 ~1 ~5 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1

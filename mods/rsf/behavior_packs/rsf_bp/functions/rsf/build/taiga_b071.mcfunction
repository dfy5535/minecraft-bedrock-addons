# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0711/4224 | 主题内编号: b071/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·残破双子哨所遗迹 (taiga_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace leaves2
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air [] replace log2
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 stone_bricks [] replace water
fill ~-6 ~0 ~-6 ~6 ~0 ~6 spruce_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 spruce_planks []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobblestone []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-4 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-4 ~0 ~0 ~-5 ~0 air []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-4 ~3 torch []
setblock ~4 ~-4 ~-3 torch []
setblock ~4 ~-2 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 15
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 22
replaceitem block ~4 ~-2 ~3 slot.container 2 rotten_flesh 17
replaceitem block ~4 ~-2 ~3 slot.container 3 string 8
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 7
replaceitem block ~4 ~-2 ~3 slot.container 5 rabbit_hide 8
replaceitem block ~4 ~-2 ~3 slot.container 9 campfire 4
replaceitem block ~4 ~-2 ~3 slot.container 10 lantern 7
replaceitem block ~4 ~-2 ~3 slot.container 11 sweet_berries 16
replaceitem block ~4 ~-2 ~3 slot.container 12 cooked_rabbit 11
replaceitem block ~4 ~-2 ~3 slot.container 13 cooked_salmon 12
replaceitem block ~4 ~-2 ~3 slot.container 14 spruce_log 16
loot insert ~4 ~-2 ~3 loot "rsf/taiga"
loot insert ~4 ~-2 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-5 ~1 ~-5 ~-2 ~7 ~5 stone_bricks []
fill ~2 ~1 ~-5 ~5 ~7 ~5 stone_bricks []
fill ~-4 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 mossy_stone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-5 ~5 ~6 ~5 spruce_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 stone_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x4) ---
fill ~1 ~0 ~-7 ~3 ~0 ~-8 mossy_cobblestone []
setblock ~2 ~1 ~-8 campfire []
fill ~1 ~1 ~-7 ~1 ~5 ~-7 spruce_fence []
fill ~3 ~1 ~-7 ~3 ~5 ~-7 spruce_fence []
fill ~1 ~6 ~-7 ~3 ~6 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 fletching_table []
setblock ~0 ~1 ~4 target []
setblock ~4 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~4 slot.container 1 bone 10
replaceitem block ~4 ~1 ~4 slot.container 2 arrow 17
replaceitem block ~4 ~1 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~1 ~4 slot.container 4 string 11
replaceitem block ~4 ~1 ~4 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~4 slot.container 9 spruce_log 20
replaceitem block ~4 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~4 ~1 ~4 slot.container 11 coal 18
replaceitem block ~4 ~1 ~4 slot.container 12 emerald 3
replaceitem block ~4 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~4 ~1 ~4 slot.container 14 campfire 4
loot insert ~4 ~1 ~4 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

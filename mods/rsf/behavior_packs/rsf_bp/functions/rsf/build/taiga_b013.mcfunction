# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0653/4224 | 主题内编号: b013/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·地底熔炉苦工地牢 (taiga_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x17 | 地上高度 5格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace leaves2
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log
fill ~-7 ~1 ~-9 ~7 ~9 ~9 air [] replace log2
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-6 ~-6 ~-8 ~6 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-8 ~6 ~0 ~8 stone_brick_slab [] replace air
fill ~-5 ~0 ~-7 ~5 ~0 ~7 mossy_cobblestone []
fill ~-4 ~0 ~-6 ~4 ~0 ~6 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-6 ~4 ~-1 ~6 mossy_stone_bricks []
fill ~-3 ~-6 ~-5 ~3 ~-1 ~5 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~5 anvil []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~5 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~5 slot.container 0 arrow 22
replaceitem block ~3 ~-4 ~5 slot.container 1 rotten_flesh 17
replaceitem block ~3 ~-4 ~5 slot.container 2 string 8
replaceitem block ~3 ~-4 ~5 slot.container 3 gunpowder 7
replaceitem block ~3 ~-4 ~5 slot.container 4 rabbit_hide 8
replaceitem block ~3 ~-4 ~5 slot.container 5 leather 9
replaceitem block ~3 ~-4 ~5 slot.container 9 coal 13
replaceitem block ~3 ~-4 ~5 slot.container 10 emerald 5
replaceitem block ~3 ~-4 ~5 slot.container 11 iron_pickaxe 1
replaceitem block ~3 ~-4 ~5 slot.container 12 campfire 6
replaceitem block ~3 ~-4 ~5 slot.container 13 lantern 9
replaceitem block ~3 ~-4 ~5 slot.container 14 sweet_berries 18
loot insert ~3 ~-4 ~5 loot "rsf/taiga"
loot insert ~3 ~-4 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-7 ~5 ~5 ~7 mossy_stone_bricks []
fill ~-4 ~1 ~-6 ~4 ~4 ~6 air []
fill ~-5 ~1 ~-7 ~-5 ~5 ~-7 stripped_spruce_log []
fill ~-5 ~1 ~7 ~-5 ~5 ~7 stripped_spruce_log []
fill ~5 ~1 ~-7 ~5 ~5 ~-7 stripped_spruce_log []
fill ~5 ~1 ~7 ~5 ~5 ~7 stripped_spruce_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~8 ~-5 ~3 ~8 ~5 spruce_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-3 ~7 ~-1 ~-3 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~7 ~2 cobblestone []
fill ~6 ~1 ~-1 ~7 ~6 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~8 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x9x6) ---
fill ~-2 ~0 ~-8 ~0 ~0 ~-9 mossy_cobblestone []
setblock ~-1 ~1 ~-9 campfire []
fill ~-2 ~1 ~-8 ~-2 ~7 ~-8 spruce_fence []
fill ~0 ~1 ~-8 ~0 ~7 ~-8 spruce_fence []
fill ~-2 ~8 ~-8 ~0 ~8 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~6 blast_furnace []
setblock ~-3 ~1 ~6 furnace []
setblock ~0 ~1 ~6 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~6 slot.container 0 rabbit_hide 11
replaceitem block ~4 ~1 ~6 slot.container 1 leather 12
replaceitem block ~4 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~6 slot.container 3 bone 10
replaceitem block ~4 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~6 slot.container 9 lantern 6
replaceitem block ~4 ~1 ~6 slot.container 10 sweet_berries 15
replaceitem block ~4 ~1 ~6 slot.container 11 cooked_rabbit 10
replaceitem block ~4 ~1 ~6 slot.container 12 cooked_salmon 11
replaceitem block ~4 ~1 ~6 slot.container 13 spruce_log 22
replaceitem block ~4 ~1 ~6 slot.container 14 iron_ingot 6
loot insert ~4 ~1 ~6 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-4 ~0

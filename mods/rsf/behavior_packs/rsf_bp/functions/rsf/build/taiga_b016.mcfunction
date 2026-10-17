# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0656/4224 | 主题内编号: b016/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·要塞地底重装暗牢 (taiga_dungeon_citadel_undercroft)
# 建筑构造: 主体[fortress_citadel] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x17 | 地上高度 5格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~9 ~9 air [] replace log2
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 spruce_planks [] replace air
fill ~-7 ~-5 ~-8 ~7 ~-1 ~8 spruce_planks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_bricks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 spruce_planks []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-6 ~1 ~-2 ~6 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 lantern []
setblock ~4 ~-5 ~0 lantern []
setblock ~0 ~-3 ~5 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~5 slot.container 0 leather 9
replaceitem block ~0 ~-3 ~5 slot.container 1 ender_pearl 6
replaceitem block ~0 ~-3 ~5 slot.container 2 bone 15
replaceitem block ~0 ~-3 ~5 slot.container 3 arrow 22
replaceitem block ~0 ~-3 ~5 slot.container 4 rotten_flesh 17
replaceitem block ~0 ~-3 ~5 slot.container 5 string 8
replaceitem block ~0 ~-3 ~5 slot.container 9 sweet_berries 16
replaceitem block ~0 ~-3 ~5 slot.container 10 cooked_rabbit 11
replaceitem block ~0 ~-3 ~5 slot.container 11 cooked_salmon 12
replaceitem block ~0 ~-3 ~5 slot.container 12 spruce_log 16
replaceitem block ~0 ~-3 ~5 slot.container 13 iron_ingot 7
replaceitem block ~0 ~-3 ~5 slot.container 14 coal 14
loot insert ~0 ~-3 ~5 loot "rsf/taiga"
loot insert ~0 ~-3 ~5 loot "chests/village/village_taiga_house"
setblock ~0 ~-3 ~-5 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-5 slot.container 0 leather 7
replaceitem block ~0 ~-3 ~-5 slot.container 1 ender_pearl 4
replaceitem block ~0 ~-3 ~-5 slot.container 2 bone 13
replaceitem block ~0 ~-3 ~-5 slot.container 3 arrow 20
replaceitem block ~0 ~-3 ~-5 slot.container 4 rotten_flesh 15
replaceitem block ~0 ~-3 ~-5 slot.container 5 string 14
replaceitem block ~0 ~-3 ~-5 slot.container 9 sweet_berries 15
replaceitem block ~0 ~-3 ~-5 slot.container 10 cooked_rabbit 10
replaceitem block ~0 ~-3 ~-5 slot.container 11 cooked_salmon 11
replaceitem block ~0 ~-3 ~-5 slot.container 12 spruce_log 22
replaceitem block ~0 ~-3 ~-5 slot.container 13 iron_ingot 6
replaceitem block ~0 ~-3 ~-5 slot.container 14 coal 13
loot insert ~0 ~-3 ~-5 loot "rsf/taiga"
loot insert ~0 ~-3 ~-5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-7 ~6 ~5 ~7 spruce_planks []
fill ~-5 ~1 ~-6 ~5 ~4 ~6 air []
fill ~-6 ~1 ~-7 ~-5 ~7 ~-6 mossy_cobblestone []
setblock ~-6 ~8 ~-7 lantern []
fill ~-6 ~1 ~6 ~-5 ~7 ~7 mossy_cobblestone []
setblock ~-6 ~8 ~6 lantern []
fill ~5 ~1 ~-7 ~6 ~7 ~-6 mossy_cobblestone []
setblock ~5 ~8 ~-7 lantern []
fill ~5 ~1 ~6 ~6 ~7 ~7 mossy_cobblestone []
setblock ~5 ~8 ~6 lantern []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 mossy_stone_bricks []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 stone_bricks []
fill ~0 ~14 ~0 ~0 ~16 ~0 iron_block []
setblock ~0 ~17 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-9 ~8 ~2 ~9 spruce_fence []
fill ~-7 ~1 ~-8 ~7 ~2 ~8 air []
fill ~-1 ~1 ~-9 ~1 ~2 ~-9 air []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~0 ~0 ~-8 ~2 ~0 ~-9 mossy_cobblestone []
setblock ~1 ~1 ~-9 campfire []
fill ~0 ~1 ~-8 ~0 ~5 ~-8 spruce_fence []
fill ~2 ~1 ~-8 ~2 ~5 ~-8 spruce_fence []
fill ~0 ~6 ~-8 ~2 ~6 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-5 ~1 ~6 smithing_table []
setblock ~0 ~1 ~6 blast_furnace []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 bone 10
replaceitem block ~-5 ~1 ~6 slot.container 1 arrow 17
replaceitem block ~-5 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 3 string 11
replaceitem block ~-5 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 5 rabbit_hide 11
replaceitem block ~-5 ~1 ~6 slot.container 9 campfire 7
replaceitem block ~-5 ~1 ~6 slot.container 10 lantern 10
replaceitem block ~-5 ~1 ~6 slot.container 11 sweet_berries 12
replaceitem block ~-5 ~1 ~6 slot.container 12 cooked_rabbit 7
replaceitem block ~-5 ~1 ~6 slot.container 13 cooked_salmon 8
replaceitem block ~-5 ~1 ~6 slot.container 14 spruce_log 19
loot insert ~-5 ~1 ~6 loot "rsf/taiga"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~6 slot.container 1 string 14
replaceitem block ~5 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 3 rabbit_hide 6
replaceitem block ~5 ~1 ~6 slot.container 4 leather 7
replaceitem block ~5 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 9 campfire 5
replaceitem block ~5 ~1 ~6 slot.container 10 lantern 8
replaceitem block ~5 ~1 ~6 slot.container 11 sweet_berries 17
replaceitem block ~5 ~1 ~6 slot.container 12 cooked_rabbit 12
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_salmon 6
replaceitem block ~5 ~1 ~6 slot.container 14 spruce_log 17
loot insert ~5 ~1 ~6 loot "rsf/taiga"
loot insert ~5 ~1 ~6 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-3 ~0

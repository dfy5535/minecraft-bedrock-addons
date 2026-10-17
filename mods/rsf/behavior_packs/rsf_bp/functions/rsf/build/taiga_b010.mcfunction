# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0650/4224 | 主题内编号: b010/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·十字交叉深层地牢 (taiga_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x17 | 地上高度 4格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~8 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~8 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~8 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~8 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 cobblestone [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 cobblestone_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 podzol []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 spruce_planks []
setblock ~0 ~-5 ~0 iron_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 torch []
setblock ~2 ~-4 ~0 torch []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 bone 15
replaceitem block ~0 ~-2 ~-3 slot.container 1 arrow 22
replaceitem block ~0 ~-2 ~-3 slot.container 2 rotten_flesh 17
replaceitem block ~0 ~-2 ~-3 slot.container 3 string 8
replaceitem block ~0 ~-2 ~-3 slot.container 4 gunpowder 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 rabbit_hide 8
replaceitem block ~0 ~-2 ~-3 slot.container 9 sweet_berries 14
replaceitem block ~0 ~-2 ~-3 slot.container 10 cooked_rabbit 9
replaceitem block ~0 ~-2 ~-3 slot.container 11 cooked_salmon 10
replaceitem block ~0 ~-2 ~-3 slot.container 12 spruce_log 21
replaceitem block ~0 ~-2 ~-3 slot.container 13 iron_ingot 12
replaceitem block ~0 ~-2 ~-3 slot.container 14 coal 12
loot insert ~0 ~-2 ~-3 loot "rsf/taiga"
loot insert ~0 ~-2 ~-3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-7 ~2 ~4 ~7 cobblestone []
fill ~-6 ~1 ~-2 ~6 ~4 ~2 cobblestone []
fill ~-1 ~1 ~-6 ~1 ~3 ~6 air []
fill ~-5 ~1 ~-1 ~5 ~3 ~1 air []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
fill ~0 ~1 ~7 ~0 ~2 ~7 air []
setblock ~-6 ~2 ~0 spruce_fence []
setblock ~6 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-7 ~6 ~4 ~7 cobblestone_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 spruce_log []
setblock ~-8 ~4 ~-9 torch []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 spruce_log []
setblock ~-8 ~4 ~9 torch []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 spruce_log []
setblock ~8 ~4 ~-9 torch []
fill ~8 ~0 ~9 ~8 ~3 ~9 spruce_log []
setblock ~8 ~4 ~9 torch []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x9x3) ---
fill ~0 ~0 ~-8 ~2 ~0 ~-9 mossy_cobblestone []
setblock ~1 ~1 ~-9 campfire []
fill ~0 ~1 ~-8 ~0 ~4 ~-8 spruce_fence []
fill ~2 ~1 ~-8 ~2 ~4 ~-8 spruce_fence []
fill ~0 ~5 ~-8 ~2 ~5 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 bookshelf []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~6 slot.container 0 rotten_flesh 12
replaceitem block ~-5 ~1 ~6 slot.container 1 string 11
replaceitem block ~-5 ~1 ~6 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~6 slot.container 3 rabbit_hide 11
replaceitem block ~-5 ~1 ~6 slot.container 4 leather 12
replaceitem block ~-5 ~1 ~6 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~6 slot.container 9 sweet_berries 18
replaceitem block ~-5 ~1 ~6 slot.container 10 cooked_rabbit 6
replaceitem block ~-5 ~1 ~6 slot.container 11 cooked_salmon 7
replaceitem block ~-5 ~1 ~6 slot.container 12 spruce_log 18
replaceitem block ~-5 ~1 ~6 slot.container 13 iron_ingot 9
replaceitem block ~-5 ~1 ~6 slot.container 14 coal 16
loot insert ~-5 ~1 ~6 loot "rsf/taiga"
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 gunpowder 13
replaceitem block ~5 ~1 ~6 slot.container 1 rabbit_hide 6
replaceitem block ~5 ~1 ~6 slot.container 2 leather 7
replaceitem block ~5 ~1 ~6 slot.container 3 ender_pearl 4
replaceitem block ~5 ~1 ~6 slot.container 4 bone 13
replaceitem block ~5 ~1 ~6 slot.container 5 arrow 20
replaceitem block ~5 ~1 ~6 slot.container 9 sweet_berries 16
replaceitem block ~5 ~1 ~6 slot.container 10 cooked_rabbit 11
replaceitem block ~5 ~1 ~6 slot.container 11 cooked_salmon 12
replaceitem block ~5 ~1 ~6 slot.container 12 spruce_log 16
replaceitem block ~5 ~1 ~6 slot.container 13 iron_ingot 7
replaceitem block ~5 ~1 ~6 slot.container 14 coal 14
loot insert ~5 ~1 ~6 loot "rsf/taiga"
loot insert ~5 ~1 ~6 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-4 ~0

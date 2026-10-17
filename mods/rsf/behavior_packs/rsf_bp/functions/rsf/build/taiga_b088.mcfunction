# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0728/4224 | 主题内编号: b088/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·矿车铁轨转运仓库 (taiga_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x17 | 地上高度 5格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-9 ~6 ~9 ~9 air [] replace leaves
fill ~-6 ~1 ~-9 ~6 ~9 ~9 air [] replace leaves2
fill ~-6 ~1 ~-9 ~6 ~9 ~9 air [] replace log
fill ~-6 ~1 ~-9 ~6 ~9 ~9 air [] replace log2
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 spruce_planks [] replace air
fill ~-5 ~-4 ~-8 ~5 ~-1 ~8 spruce_planks [] replace water
fill ~-5 ~0 ~-8 ~5 ~0 ~8 spruce_slab [] replace air
fill ~-4 ~0 ~-7 ~4 ~0 ~7 stone_bricks []
fill ~-3 ~0 ~-6 ~3 ~0 ~6 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-3 ~-6 ~3 ~-1 ~6 mossy_stone_bricks []
fill ~-2 ~-4 ~-5 ~2 ~-1 ~5 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~2 ~-2 ~5 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~5 slot.container 0 gunpowder 7
replaceitem block ~2 ~-2 ~5 slot.container 1 rabbit_hide 8
replaceitem block ~2 ~-2 ~5 slot.container 2 leather 9
replaceitem block ~2 ~-2 ~5 slot.container 3 ender_pearl 6
replaceitem block ~2 ~-2 ~5 slot.container 4 bone 15
replaceitem block ~2 ~-2 ~5 slot.container 5 arrow 22
replaceitem block ~2 ~-2 ~5 slot.container 9 campfire 5
replaceitem block ~2 ~-2 ~5 slot.container 10 lantern 8
replaceitem block ~2 ~-2 ~5 slot.container 11 sweet_berries 17
replaceitem block ~2 ~-2 ~5 slot.container 12 cooked_rabbit 12
replaceitem block ~2 ~-2 ~5 slot.container 13 cooked_salmon 6
replaceitem block ~2 ~-2 ~5 slot.container 14 spruce_log 17
loot insert ~2 ~-2 ~5 loot "rsf/taiga"
loot insert ~2 ~-2 ~5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-7 ~4 ~5 ~7 spruce_planks []
fill ~-3 ~1 ~-6 ~3 ~4 ~6 air []
fill ~-4 ~1 ~-7 ~-4 ~5 ~-7 spruce_log []
fill ~-4 ~1 ~7 ~-4 ~5 ~7 spruce_log []
fill ~4 ~1 ~-7 ~4 ~5 ~-7 spruce_log []
fill ~4 ~1 ~7 ~4 ~5 ~7 spruce_log []
fill ~0 ~1 ~-7 ~0 ~2 ~-7 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-5 ~6 ~-8 ~-5 ~6 ~8 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~6 ~-8 ~5 ~6 ~8 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-7 ~-4 ~7 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~4 ~7 ~-7 ~4 ~7 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-3 ~7 ~-7 ~3 ~7 ~7 spruce_slab []
fill ~0 ~8 ~-8 ~0 ~8 ~8 mossy_cobblestone []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 spruce_log []
setblock ~0 ~4 ~-6 chiseled_stone_bricks []
setblock ~0 ~5 ~-6 lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 spruce_log []
setblock ~0 ~4 ~6 chiseled_stone_bricks []
setblock ~0 ~5 ~6 lantern []
fill ~-5 ~0 ~0 ~-5 ~3 ~0 spruce_log []
setblock ~-5 ~4 ~0 chiseled_stone_bricks []
setblock ~-5 ~5 ~0 lantern []
fill ~5 ~0 ~0 ~5 ~3 ~0 spruce_log []
setblock ~5 ~4 ~0 chiseled_stone_bricks []
setblock ~5 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x9x6) ---
fill ~-1 ~0 ~-8 ~1 ~0 ~-9 mossy_cobblestone []
setblock ~0 ~1 ~-9 campfire []
fill ~-1 ~1 ~-8 ~-1 ~7 ~-8 spruce_fence []
fill ~1 ~1 ~-8 ~1 ~7 ~-8 spruce_fence []
fill ~-1 ~8 ~-8 ~1 ~8 ~-9 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 bookshelf []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~6 slot.container 0 bone 10
replaceitem block ~-3 ~1 ~6 slot.container 1 arrow 17
replaceitem block ~-3 ~1 ~6 slot.container 2 rotten_flesh 12
replaceitem block ~-3 ~1 ~6 slot.container 3 string 11
replaceitem block ~-3 ~1 ~6 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~6 slot.container 5 rabbit_hide 11
replaceitem block ~-3 ~1 ~6 slot.container 9 iron_ingot 6
replaceitem block ~-3 ~1 ~6 slot.container 10 coal 13
replaceitem block ~-3 ~1 ~6 slot.container 11 emerald 5
replaceitem block ~-3 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~-3 ~1 ~6 slot.container 13 campfire 6
replaceitem block ~-3 ~1 ~6 slot.container 14 lantern 9
loot insert ~-3 ~1 ~6 loot "rsf/taiga"
setblock ~3 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~6 slot.container 0 rotten_flesh 15
replaceitem block ~3 ~1 ~6 slot.container 1 string 14
replaceitem block ~3 ~1 ~6 slot.container 2 gunpowder 13
replaceitem block ~3 ~1 ~6 slot.container 3 rabbit_hide 6
replaceitem block ~3 ~1 ~6 slot.container 4 leather 7
replaceitem block ~3 ~1 ~6 slot.container 5 ender_pearl 4
replaceitem block ~3 ~1 ~6 slot.container 9 iron_ingot 11
replaceitem block ~3 ~1 ~6 slot.container 10 coal 18
replaceitem block ~3 ~1 ~6 slot.container 11 emerald 3
replaceitem block ~3 ~1 ~6 slot.container 12 iron_pickaxe 1
replaceitem block ~3 ~1 ~6 slot.container 13 campfire 4
replaceitem block ~3 ~1 ~6 slot.container 14 lantern 7
loot insert ~3 ~1 ~6 loot "rsf/taiga"
loot insert ~3 ~1 ~6 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-2 ~0

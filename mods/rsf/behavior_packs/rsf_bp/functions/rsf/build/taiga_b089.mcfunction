# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0729/4224 | 主题内编号: b089/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·四柱挑檐祈愿凉亭 (taiga_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 9x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~10 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 mossy_stone_bricks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_brick_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 mossy_cobblestone []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 podzol []
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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~6 ~4 mossy_stone_bricks []
fill ~-2 ~1 ~-3 ~2 ~5 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~6 ~-4 stripped_spruce_log []
fill ~-3 ~1 ~4 ~-3 ~6 ~4 stripped_spruce_log []
fill ~3 ~1 ~-4 ~3 ~6 ~-4 stripped_spruce_log []
fill ~3 ~1 ~4 ~3 ~6 ~4 stripped_spruce_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~6 ~-5 ~4 ~6 ~5 stone_brick_slab []
fill ~-2 ~7 ~-3 ~2 ~8 ~3 cobblestone []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 cobblestone_slab []
setblock ~0 ~10 ~0 barrel []
setblock ~0 ~11 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 spruce_planks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 stripped_spruce_log []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 stripped_spruce_log []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 stone_brick_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 4x7x2) ---
fill ~0 ~0 ~-6 ~2 ~0 ~-7 mossy_cobblestone []
setblock ~1 ~1 ~-7 campfire []
fill ~0 ~1 ~-6 ~0 ~3 ~-6 spruce_fence []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 spruce_fence []
fill ~0 ~4 ~-6 ~2 ~4 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-4 ~1 ~4 smithing_table []
setblock ~-3 ~1 ~4 anvil []
setblock ~3 ~1 ~4 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 arrow 17
replaceitem block ~2 ~1 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~2 ~1 ~3 slot.container 2 string 11
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 4 rabbit_hide 11
replaceitem block ~2 ~1 ~3 slot.container 5 leather 12
replaceitem block ~2 ~1 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~1 ~3 slot.container 10 campfire 4
replaceitem block ~2 ~1 ~3 slot.container 11 lantern 7
replaceitem block ~2 ~1 ~3 slot.container 12 sweet_berries 16
replaceitem block ~2 ~1 ~3 slot.container 13 cooked_rabbit 11
replaceitem block ~2 ~1 ~3 slot.container 14 cooked_salmon 12
loot insert ~2 ~1 ~3 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

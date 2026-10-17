# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0699/4224 | 主题内编号: b059/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·阶梯金字塔法老墓室 (taiga_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x17 | 地上高度 6格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~10 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 spruce_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_planks []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
setblock ~0 ~0 ~0 iron_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 spruce_planks []
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 mossy_stone_bricks []
setblock ~0 ~-7 ~0 chiseled_stone_bricks []
fill ~0 ~-6 ~6 ~0 ~0 ~6 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 lantern []
setblock ~2 ~-6 ~0 lantern []
setblock ~0 ~-4 ~-5 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-5 slot.container 0 rabbit_hide 8
replaceitem block ~0 ~-4 ~-5 slot.container 1 leather 9
replaceitem block ~0 ~-4 ~-5 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-4 ~-5 slot.container 3 bone 15
replaceitem block ~0 ~-4 ~-5 slot.container 4 arrow 22
replaceitem block ~0 ~-4 ~-5 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-4 ~-5 slot.container 9 spruce_log 18
replaceitem block ~0 ~-4 ~-5 slot.container 10 iron_ingot 9
replaceitem block ~0 ~-4 ~-5 slot.container 11 coal 16
replaceitem block ~0 ~-4 ~-5 slot.container 12 emerald 8
replaceitem block ~0 ~-4 ~-5 slot.container 13 iron_pickaxe 1
replaceitem block ~0 ~-4 ~-5 slot.container 14 campfire 2
loot insert ~0 ~-4 ~-5 loot "rsf/taiga"
loot insert ~0 ~-4 ~-5 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 mossy_stone_bricks []
fill ~-4 ~5 ~-5 ~4 ~6 ~5 spruce_planks []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~5 ~-5 ~-4 ~7 ~-5 stripped_spruce_log []
setblock ~-4 ~8 ~-5 campfire []
fill ~-4 ~5 ~5 ~-4 ~7 ~5 stripped_spruce_log []
setblock ~-4 ~8 ~5 campfire []
fill ~4 ~5 ~-5 ~4 ~7 ~-5 stripped_spruce_log []
setblock ~4 ~8 ~-5 campfire []
fill ~4 ~5 ~5 ~4 ~7 ~5 stripped_spruce_log []
setblock ~4 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-9 ~-8 ~3 ~-9 spruce_log []
setblock ~-8 ~4 ~-9 lantern []
fill ~-8 ~0 ~9 ~-8 ~3 ~9 spruce_log []
setblock ~-8 ~4 ~9 lantern []
fill ~8 ~0 ~-9 ~8 ~3 ~-9 spruce_log []
setblock ~8 ~4 ~-9 lantern []
fill ~8 ~0 ~9 ~8 ~3 ~9 spruce_log []
setblock ~8 ~4 ~9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x10x2) ---
fill ~1 ~0 ~-9 ~3 ~0 ~-10 mossy_cobblestone []
setblock ~2 ~1 ~-10 campfire []
fill ~1 ~1 ~-9 ~1 ~3 ~-9 spruce_fence []
fill ~3 ~1 ~-9 ~3 ~3 ~-9 spruce_fence []
fill ~1 ~4 ~-9 ~3 ~4 ~-10 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-5 ~1 ~6 ~-1 ~2 ~6 barrel ["facing_direction"=2]
setblock ~0 ~1 ~6 crafting_table []
setblock ~0 ~1 ~0 iron_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 string 11
replaceitem block ~5 ~1 ~6 slot.container 1 gunpowder 10
replaceitem block ~5 ~1 ~6 slot.container 2 rabbit_hide 11
replaceitem block ~5 ~1 ~6 slot.container 3 leather 12
replaceitem block ~5 ~1 ~6 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 5 bone 10
replaceitem block ~5 ~1 ~6 slot.container 9 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 10 campfire 2
replaceitem block ~5 ~1 ~6 slot.container 11 lantern 5
replaceitem block ~5 ~1 ~6 slot.container 12 sweet_berries 14
replaceitem block ~5 ~1 ~6 slot.container 13 cooked_rabbit 9
replaceitem block ~5 ~1 ~6 slot.container 14 cooked_salmon 10
loot insert ~5 ~1 ~6 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

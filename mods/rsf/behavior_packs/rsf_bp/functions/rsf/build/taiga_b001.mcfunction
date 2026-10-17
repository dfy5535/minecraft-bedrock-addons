# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0641/4224 | 主题内编号: b001/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·三层阶梯圣火祭坛 (taiga_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 11x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~9 ~7 air [] replace log2
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_brick_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 cobblestone []
fill ~-2 ~-5 ~-3 ~2 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~2 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~2 ~-3 ~3 slot.container 0 rabbit_hide 8
replaceitem block ~2 ~-3 ~3 slot.container 1 leather 9
replaceitem block ~2 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~2 ~-3 ~3 slot.container 3 bone 15
replaceitem block ~2 ~-3 ~3 slot.container 4 arrow 22
replaceitem block ~2 ~-3 ~3 slot.container 5 rotten_flesh 17
replaceitem block ~2 ~-3 ~3 slot.container 9 iron_pickaxe 1
replaceitem block ~2 ~-3 ~3 slot.container 10 campfire 3
replaceitem block ~2 ~-3 ~3 slot.container 11 lantern 6
replaceitem block ~2 ~-3 ~3 slot.container 12 sweet_berries 15
replaceitem block ~2 ~-3 ~3 slot.container 13 cooked_rabbit 10
replaceitem block ~2 ~-3 ~3 slot.container 14 cooked_salmon 11
loot insert ~2 ~-3 ~3 loot "rsf/taiga"
loot insert ~2 ~-3 ~3 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-5 ~4 ~2 ~5 mossy_stone_bricks []
fill ~-3 ~3 ~-4 ~3 ~4 ~4 spruce_planks []
fill ~-2 ~5 ~-3 ~2 ~5 ~3 cobblestone []
fill ~-2 ~1 ~-3 ~2 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-4 ~5 ~-5 ~-4 ~7 ~-5 stripped_spruce_log []
setblock ~-4 ~8 ~-5 campfire []
fill ~-4 ~5 ~5 ~-4 ~7 ~5 stripped_spruce_log []
setblock ~-4 ~8 ~5 campfire []
fill ~4 ~5 ~-5 ~4 ~7 ~-5 stripped_spruce_log []
setblock ~4 ~8 ~-5 campfire []
fill ~4 ~5 ~5 ~4 ~7 ~5 stripped_spruce_log []
setblock ~4 ~8 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 mossy_cobblestone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 spruce_log []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 spruce_log []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 spruce_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x7x4) ---
fill ~0 ~0 ~-6 ~2 ~0 ~-7 mossy_cobblestone []
setblock ~1 ~1 ~-7 campfire []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 spruce_fence []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 spruce_fence []
fill ~0 ~6 ~-6 ~2 ~6 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 iron_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 arrow 17
replaceitem block ~3 ~1 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~4 slot.container 2 string 11
replaceitem block ~3 ~1 ~4 slot.container 3 gunpowder 10
replaceitem block ~3 ~1 ~4 slot.container 4 rabbit_hide 11
replaceitem block ~3 ~1 ~4 slot.container 5 leather 12
replaceitem block ~3 ~1 ~4 slot.container 9 spruce_log 20
replaceitem block ~3 ~1 ~4 slot.container 10 iron_ingot 11
replaceitem block ~3 ~1 ~4 slot.container 11 coal 18
replaceitem block ~3 ~1 ~4 slot.container 12 emerald 3
replaceitem block ~3 ~1 ~4 slot.container 13 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 14 campfire 4
loot insert ~3 ~1 ~4 loot "rsf/taiga"
summon fox ~0 ~1 ~-1
summon stray ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon zombie ~0 ~-3 ~0

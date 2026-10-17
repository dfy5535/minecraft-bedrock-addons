# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0765/4224 | 主题内编号: b125/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·巨型阶梯金字塔神王殿 (taiga_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x17 | 地上高度 8格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace leaves2
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log
fill ~-8 ~1 ~-9 ~8 ~12 ~9 air [] replace log2
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace air
fill ~-7 ~-6 ~-8 ~7 ~-1 ~8 mossy_stone_bricks [] replace water
fill ~-7 ~0 ~-8 ~7 ~0 ~8 stone_brick_slab [] replace air
fill ~-6 ~0 ~-7 ~6 ~0 ~7 mossy_cobblestone []
fill ~-5 ~0 ~-6 ~5 ~0 ~6 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-5 ~-6 ~5 ~-1 ~6 cobblestone []
fill ~-4 ~-6 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 obsidian []
setblock ~0 ~-6 ~0 barrel []
setblock ~0 ~-7 ~0 campfire []
fill ~0 ~-6 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~4 ~-4 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-4 ~0 slot.container 0 rabbit_hide 8
replaceitem block ~4 ~-4 ~0 slot.container 1 leather 9
replaceitem block ~4 ~-4 ~0 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-4 ~0 slot.container 3 bone 15
replaceitem block ~4 ~-4 ~0 slot.container 4 arrow 22
replaceitem block ~4 ~-4 ~0 slot.container 5 rotten_flesh 17
replaceitem block ~4 ~-4 ~0 slot.container 9 cooked_rabbit 6
replaceitem block ~4 ~-4 ~0 slot.container 10 cooked_salmon 7
replaceitem block ~4 ~-4 ~0 slot.container 11 spruce_log 18
replaceitem block ~4 ~-4 ~0 slot.container 12 iron_ingot 9
replaceitem block ~4 ~-4 ~0 slot.container 13 coal 16
replaceitem block ~4 ~-4 ~0 slot.container 14 emerald 8
loot insert ~4 ~-4 ~0 loot "rsf/taiga"
loot insert ~4 ~-4 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 mossy_stone_bricks []
fill ~-5 ~3 ~-6 ~5 ~4 ~6 spruce_planks []
fill ~-4 ~5 ~-5 ~4 ~8 ~5 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~7 ~5 air []
fill ~0 ~1 ~-7 ~0 ~4 ~-7 stone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-6 ~0 ~3 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~9 ~-7 ~6 ~9 ~7 spruce_planks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 barrel []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 7x10x3) ---
fill ~1 ~0 ~-9 ~3 ~0 ~-10 mossy_cobblestone []
setblock ~2 ~1 ~-10 campfire []
fill ~1 ~1 ~-9 ~1 ~4 ~-9 spruce_fence []
fill ~3 ~1 ~-9 ~3 ~4 ~-9 spruce_fence []
fill ~1 ~5 ~-9 ~3 ~5 ~-10 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~6 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~6 slot.container 0 rabbit_hide 11
replaceitem block ~5 ~1 ~6 slot.container 1 leather 12
replaceitem block ~5 ~1 ~6 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~6 slot.container 3 bone 10
replaceitem block ~5 ~1 ~6 slot.container 4 arrow 17
replaceitem block ~5 ~1 ~6 slot.container 5 rotten_flesh 12
replaceitem block ~5 ~1 ~6 slot.container 9 coal 14
replaceitem block ~5 ~1 ~6 slot.container 10 emerald 6
replaceitem block ~5 ~1 ~6 slot.container 11 iron_pickaxe 1
replaceitem block ~5 ~1 ~6 slot.container 12 campfire 7
replaceitem block ~5 ~1 ~6 slot.container 13 lantern 10
replaceitem block ~5 ~1 ~6 slot.container 14 sweet_berries 12
loot insert ~5 ~1 ~6 loot "rsf/taiga"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1

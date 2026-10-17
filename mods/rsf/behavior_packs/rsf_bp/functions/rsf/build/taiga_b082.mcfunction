# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0722/4224 | 主题内编号: b082/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·竖井井架矿工物资站 (taiga_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 11x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~11 ~7 air [] replace log2
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace air
fill ~-5 ~-6 ~-6 ~5 ~-1 ~6 cobblestone [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 spruce_planks []
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 mossy_stone_bricks []
setblock ~0 ~-6 ~0 chiseled_stone_bricks []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 lantern []
setblock ~2 ~-5 ~0 lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rabbit_hide 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 leather 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 arrow 22
replaceitem block ~0 ~-3 ~-4 slot.container 5 rotten_flesh 17
replaceitem block ~0 ~-3 ~-4 slot.container 9 coal 14
replaceitem block ~0 ~-3 ~-4 slot.container 10 emerald 6
replaceitem block ~0 ~-3 ~-4 slot.container 11 iron_pickaxe 1
replaceitem block ~0 ~-3 ~-4 slot.container 12 campfire 7
replaceitem block ~0 ~-3 ~-4 slot.container 13 lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 14 sweet_berries 12
loot insert ~0 ~-3 ~-4 loot "rsf/taiga"
loot insert ~0 ~-3 ~-4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-5 ~4 ~3 ~5 cobblestone []
fill ~-3 ~1 ~-4 ~3 ~2 ~4 air []
fill ~-5 ~3 ~-6 ~5 ~3 ~6 cobblestone_slab []
fill ~-3 ~4 ~-4 ~3 ~7 ~4 stone_bricks []
fill ~-2 ~4 ~-3 ~2 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 spruce_planks []
fill ~-3 ~9 ~-4 ~3 ~9 ~4 stone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 bookshelf []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 spruce_planks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 5x7x5) ---
fill ~-3 ~0 ~-6 ~-1 ~0 ~-7 mossy_cobblestone []
setblock ~-2 ~1 ~-7 campfire []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 spruce_fence []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 spruce_fence []
fill ~-3 ~7 ~-6 ~-1 ~7 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-3 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~1 ~4 slot.container 1 string 11
replaceitem block ~-3 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-3 ~1 ~4 slot.container 3 rabbit_hide 11
replaceitem block ~-3 ~1 ~4 slot.container 4 leather 12
replaceitem block ~-3 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 9 emerald 4
replaceitem block ~-3 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~-3 ~1 ~4 slot.container 11 campfire 5
replaceitem block ~-3 ~1 ~4 slot.container 12 lantern 8
replaceitem block ~-3 ~1 ~4 slot.container 13 sweet_berries 17
replaceitem block ~-3 ~1 ~4 slot.container 14 cooked_rabbit 12
loot insert ~-3 ~1 ~4 loot "rsf/taiga"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 1 rabbit_hide 6
replaceitem block ~3 ~1 ~4 slot.container 2 leather 7
replaceitem block ~3 ~1 ~4 slot.container 3 ender_pearl 4
replaceitem block ~3 ~1 ~4 slot.container 4 bone 13
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 20
replaceitem block ~3 ~1 ~4 slot.container 9 emerald 9
replaceitem block ~3 ~1 ~4 slot.container 10 iron_pickaxe 1
replaceitem block ~3 ~1 ~4 slot.container 11 campfire 3
replaceitem block ~3 ~1 ~4 slot.container 12 lantern 6
replaceitem block ~3 ~1 ~4 slot.container 13 sweet_berries 15
replaceitem block ~3 ~1 ~4 slot.container 14 cooked_rabbit 10
loot insert ~3 ~1 ~4 loot "rsf/taiga"
loot insert ~3 ~1 ~4 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-4 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0709/4224 | 主题内编号: b069/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·藤蔓侵蚀十字修道院 (taiga_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~9 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 podzol []
setblock ~0 ~0 ~0 barrel []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 bookshelf []
setblock ~0 ~-5 ~0 torch []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-2 ~0 slot.container 1 string 8
replaceitem block ~3 ~-2 ~0 slot.container 2 gunpowder 7
replaceitem block ~3 ~-2 ~0 slot.container 3 rabbit_hide 8
replaceitem block ~3 ~-2 ~0 slot.container 4 leather 9
replaceitem block ~3 ~-2 ~0 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 9 campfire 7
replaceitem block ~3 ~-2 ~0 slot.container 10 lantern 10
replaceitem block ~3 ~-2 ~0 slot.container 11 sweet_berries 12
replaceitem block ~3 ~-2 ~0 slot.container 12 cooked_rabbit 7
replaceitem block ~3 ~-2 ~0 slot.container 13 cooked_salmon 8
replaceitem block ~3 ~-2 ~0 slot.container 14 spruce_log 19
loot insert ~3 ~-2 ~0 loot "rsf/taiga"
loot insert ~3 ~-2 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~5 ~-6 ~5 ~5 ~6 stone_brick_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-5 ~4 ~-1 ~-5 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 spruce_planks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_spruce_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_spruce_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 stone_brick_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~-1 ~0 ~-6 ~1 ~0 ~-7 mossy_cobblestone []
setblock ~0 ~1 ~-7 campfire []
fill ~-1 ~1 ~-6 ~-1 ~3 ~-6 spruce_fence []
fill ~1 ~1 ~-6 ~1 ~3 ~-6 spruce_fence []
fill ~-1 ~4 ~-6 ~1 ~4 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~4 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 rabbit_hide 11
replaceitem block ~4 ~1 ~5 slot.container 1 leather 12
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 bone 10
replaceitem block ~4 ~1 ~5 slot.container 4 arrow 17
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 10 campfire 5
replaceitem block ~4 ~1 ~5 slot.container 11 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 12 sweet_berries 17
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_rabbit 12
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_salmon 6
loot insert ~4 ~1 ~5 loot "rsf/taiga"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon spider ~1 ~1 ~1

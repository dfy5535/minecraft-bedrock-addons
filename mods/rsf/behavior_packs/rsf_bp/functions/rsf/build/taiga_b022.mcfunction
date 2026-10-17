# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0662/4224 | 主题内编号: b022/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·廊柱书库秘藏室 (taiga_chamber_pillared_archive)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 cobblestone_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 podzol []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 spruce_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~3 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~4 slot.container 0 rotten_flesh 17
replaceitem block ~3 ~-2 ~4 slot.container 1 string 8
replaceitem block ~3 ~-2 ~4 slot.container 2 gunpowder 7
replaceitem block ~3 ~-2 ~4 slot.container 3 rabbit_hide 8
replaceitem block ~3 ~-2 ~4 slot.container 4 leather 9
replaceitem block ~3 ~-2 ~4 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-2 ~4 slot.container 9 sweet_berries 12
replaceitem block ~3 ~-2 ~4 slot.container 10 cooked_rabbit 7
replaceitem block ~3 ~-2 ~4 slot.container 11 cooked_salmon 8
replaceitem block ~3 ~-2 ~4 slot.container 12 spruce_log 19
replaceitem block ~3 ~-2 ~4 slot.container 13 iron_ingot 10
replaceitem block ~3 ~-2 ~4 slot.container 14 coal 17
loot insert ~3 ~-2 ~4 loot "rsf/taiga"
loot insert ~3 ~-2 ~4 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 spruce_planks []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 spruce_log []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 spruce_log []
fill ~-3 ~1 ~-6 ~-3 ~5 ~-6 spruce_log []
fill ~-3 ~1 ~6 ~-3 ~5 ~6 spruce_log []
fill ~-1 ~1 ~-6 ~-1 ~5 ~-6 spruce_log []
fill ~-1 ~1 ~6 ~-1 ~5 ~6 spruce_log []
fill ~1 ~1 ~-6 ~1 ~5 ~-6 spruce_log []
fill ~1 ~1 ~6 ~1 ~5 ~6 spruce_log []
fill ~3 ~1 ~-6 ~3 ~5 ~-6 spruce_log []
fill ~3 ~1 ~6 ~3 ~5 ~6 spruce_log []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 spruce_log []
fill ~5 ~1 ~6 ~5 ~5 ~6 spruce_log []
fill ~-5 ~1 ~-4 ~-5 ~5 ~-4 spruce_log []
fill ~5 ~1 ~-4 ~5 ~5 ~-4 spruce_log []
fill ~-5 ~1 ~-2 ~-5 ~5 ~-2 spruce_log []
fill ~5 ~1 ~-2 ~5 ~5 ~-2 spruce_log []
fill ~-5 ~1 ~0 ~-5 ~5 ~0 spruce_log []
fill ~5 ~1 ~0 ~5 ~5 ~0 spruce_log []
fill ~-5 ~1 ~2 ~-5 ~5 ~2 spruce_log []
fill ~5 ~1 ~2 ~5 ~5 ~2 spruce_log []
fill ~-5 ~1 ~4 ~-5 ~5 ~4 spruce_log []
fill ~5 ~1 ~4 ~5 ~5 ~4 spruce_log []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 spruce_planks []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 bookshelf []
setblock ~0 ~10 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 mossy_cobblestone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 lantern []
setblock ~2 ~4 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x8x5) ---
fill ~-3 ~0 ~-7 ~-1 ~0 ~-8 mossy_cobblestone []
setblock ~-2 ~1 ~-8 campfire []
fill ~-3 ~1 ~-7 ~-3 ~6 ~-7 spruce_fence []
fill ~-1 ~1 ~-7 ~-1 ~6 ~-7 spruce_fence []
fill ~-3 ~7 ~-7 ~-1 ~7 ~-8 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~3 ~0 lantern []
setblock ~0 ~1 ~0 bookshelf []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 torch []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 2 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 3 arrow 17
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 12
replaceitem block ~-4 ~1 ~5 slot.container 5 string 11
replaceitem block ~-4 ~1 ~5 slot.container 9 emerald 7
replaceitem block ~-4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 11 campfire 8
replaceitem block ~-4 ~1 ~5 slot.container 12 lantern 4
replaceitem block ~-4 ~1 ~5 slot.container 13 sweet_berries 13
replaceitem block ~-4 ~1 ~5 slot.container 14 cooked_rabbit 8
loot insert ~-4 ~1 ~5 loot "rsf/taiga"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 bone 13
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 3 string 14
replaceitem block ~4 ~1 ~5 slot.container 4 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 5 rabbit_hide 6
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 5
replaceitem block ~4 ~1 ~5 slot.container 10 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 11 campfire 6
replaceitem block ~4 ~1 ~5 slot.container 12 lantern 9
replaceitem block ~4 ~1 ~5 slot.container 13 sweet_berries 18
replaceitem block ~4 ~1 ~5 slot.container 14 cooked_rabbit 6
loot insert ~4 ~1 ~5 loot "rsf/taiga"
loot insert ~4 ~1 ~5 loot "chests/village/village_taiga_house"
summon zombie ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1
summon fox ~0 ~-2 ~0

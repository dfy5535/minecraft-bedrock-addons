# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0748/4224 | 主题内编号: b108/128
# 地形主题 #06: 针叶林与巨型松木林 (taiga) —— 带云杉原木哨鹿台与篝火烟囱
# 建筑名称: 松林猎手系·十字四相元素秘法殿 (taiga_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: taiga, taiga_hills, taiga_mutated, mega_taiga, mega_taiga_hills, redwood_taiga_mutated, redwood_taiga_hills_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 spruce_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 spruce_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 gunpowder 7
replaceitem block ~3 ~-2 ~0 slot.container 1 rabbit_hide 8
replaceitem block ~3 ~-2 ~0 slot.container 2 leather 9
replaceitem block ~3 ~-2 ~0 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 4 bone 15
replaceitem block ~3 ~-2 ~0 slot.container 5 arrow 22
replaceitem block ~3 ~-2 ~0 slot.container 9 sweet_berries 16
replaceitem block ~3 ~-2 ~0 slot.container 10 cooked_rabbit 11
replaceitem block ~3 ~-2 ~0 slot.container 11 cooked_salmon 12
replaceitem block ~3 ~-2 ~0 slot.container 12 spruce_log 16
replaceitem block ~3 ~-2 ~0 slot.container 13 iron_ingot 7
replaceitem block ~3 ~-2 ~0 slot.container 14 coal 14
loot insert ~3 ~-2 ~0 loot "rsf/taiga"
loot insert ~3 ~-2 ~0 loot "chests/village/village_taiga_house"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 spruce_planks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 spruce_planks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-6 ~5 ~7 ~6 mossy_cobblestone []
fill ~-4 ~8 ~-5 ~4 ~8 ~5 mossy_stone_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 chiseled_stone_bricks []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 mossy_stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (taiga 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-2 ~0 ~-6 ~0 ~0 ~-7 mossy_cobblestone []
setblock ~-1 ~1 ~-7 campfire []
fill ~-2 ~1 ~-6 ~-2 ~7 ~-6 spruce_fence []
fill ~0 ~1 ~-6 ~0 ~7 ~-6 spruce_fence []
fill ~-2 ~8 ~-6 ~0 ~8 ~-7 spruce_slab []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 cartography_table []
setblock ~0 ~1 ~5 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 1 rabbit_hide 11
replaceitem block ~-4 ~1 ~5 slot.container 2 leather 12
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 bone 10
replaceitem block ~-4 ~1 ~5 slot.container 5 arrow 17
replaceitem block ~-4 ~1 ~5 slot.container 9 iron_ingot 12
replaceitem block ~-4 ~1 ~5 slot.container 10 coal 12
replaceitem block ~-4 ~1 ~5 slot.container 11 emerald 4
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~-4 ~1 ~5 slot.container 13 campfire 5
replaceitem block ~-4 ~1 ~5 slot.container 14 lantern 8
loot insert ~-4 ~1 ~5 loot "rsf/taiga"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 leather 7
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 bone 13
replaceitem block ~4 ~1 ~5 slot.container 3 arrow 20
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~5 slot.container 5 string 14
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 coal 17
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 12 iron_pickaxe 1
replaceitem block ~4 ~1 ~5 slot.container 13 campfire 3
replaceitem block ~4 ~1 ~5 slot.container 14 lantern 6
loot insert ~4 ~1 ~5 loot "rsf/taiga"
loot insert ~4 ~1 ~5 loot "chests/village/village_taiga_house"
summon pillager ~0 ~1 ~-1
summon fox ~-1 ~1 ~1
summon stray ~1 ~1 ~1

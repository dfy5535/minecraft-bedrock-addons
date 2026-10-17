# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0166/4224 | 主题内编号: b038/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·四方凯旋衣冠冢 (forest_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace leaves2
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log
fill ~-6 ~1 ~-7 ~6 ~13 ~7 air [] replace log2
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace air
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks [] replace water
fill ~-5 ~0 ~-6 ~5 ~0 ~6 spruce_slab [] replace air
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
fill ~-3 ~0 ~-4 ~3 ~0 ~4 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 moss_block []
setblock ~0 ~-5 ~0 emerald_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 campfire []
setblock ~2 ~-4 ~0 campfire []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-2 ~-3 slot.container 1 bone 16
replaceitem block ~0 ~-2 ~-3 slot.container 2 string 17
replaceitem block ~0 ~-2 ~-3 slot.container 3 spider_eye 5
replaceitem block ~0 ~-2 ~-3 slot.container 4 gunpowder 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 arrow 18
replaceitem block ~0 ~-2 ~-3 slot.container 9 oak_log 17
replaceitem block ~0 ~-2 ~-3 slot.container 10 emerald 5
replaceitem block ~0 ~-2 ~-3 slot.container 11 golden_apple 4
replaceitem block ~0 ~-2 ~-3 slot.container 12 iron_axe 1
replaceitem block ~0 ~-2 ~-3 slot.container 13 bow 1
replaceitem block ~0 ~-2 ~-3 slot.container 14 lantern 10
loot insert ~0 ~-2 ~-3 loot "rsf/forest"
loot insert ~0 ~-2 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~9 ~5 stone_bricks []
fill ~-4 ~1 ~-2 ~4 ~9 ~2 stone_bricks []
fill ~-1 ~1 ~-4 ~1 ~8 ~4 air []
fill ~-3 ~1 ~-1 ~3 ~8 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-4 ~2 ~0 spruce_fence []
setblock ~4 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-4 ~10 ~-5 ~4 ~10 ~5 moss_block []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 cobblestone []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 bookshelf []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 mossy_stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~-7 ~0 ~-7 ~-7 ~4 ~-7 spruce_log []
fill ~7 ~0 ~-7 ~7 ~4 ~-7 spruce_log []
fill ~-7 ~4 ~-7 ~7 ~4 ~-7 moss_block []
setblock ~-2 ~5 ~-7 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~8 ~0 lantern []
fill ~-3 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 bookshelf []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~4 slot.container 0 slime_ball 10
replaceitem block ~-3 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-3 ~1 ~4 slot.container 2 rotten_flesh 10
replaceitem block ~-3 ~1 ~4 slot.container 3 bone 11
replaceitem block ~-3 ~1 ~4 slot.container 4 string 12
replaceitem block ~-3 ~1 ~4 slot.container 5 spider_eye 8
replaceitem block ~-3 ~1 ~4 slot.container 9 bow 1
replaceitem block ~-3 ~1 ~4 slot.container 10 lantern 10
replaceitem block ~-3 ~1 ~4 slot.container 11 honey_bottle 4
replaceitem block ~-3 ~1 ~4 slot.container 12 sweet_berries 11
replaceitem block ~-3 ~1 ~4 slot.container 13 cooked_porkchop 8
replaceitem block ~-3 ~1 ~4 slot.container 14 iron_ingot 9
loot insert ~-3 ~1 ~4 loot "rsf/forest"
setblock ~3 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~4 slot.container 0 rotten_flesh 13
replaceitem block ~3 ~1 ~4 slot.container 1 bone 14
replaceitem block ~3 ~1 ~4 slot.container 2 string 15
replaceitem block ~3 ~1 ~4 slot.container 3 spider_eye 11
replaceitem block ~3 ~1 ~4 slot.container 4 gunpowder 13
replaceitem block ~3 ~1 ~4 slot.container 5 arrow 16
replaceitem block ~3 ~1 ~4 slot.container 9 bow 1
replaceitem block ~3 ~1 ~4 slot.container 10 lantern 8
replaceitem block ~3 ~1 ~4 slot.container 11 honey_bottle 9
replaceitem block ~3 ~1 ~4 slot.container 12 sweet_berries 16
replaceitem block ~3 ~1 ~4 slot.container 13 cooked_porkchop 6
replaceitem block ~3 ~1 ~4 slot.container 14 iron_ingot 7
loot insert ~3 ~1 ~4 loot "rsf/forest"
loot insert ~3 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

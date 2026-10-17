# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0186/4224 | 主题内编号: b058/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·十字拱顶家族陵墓 (forest_crypt_cross_mausoleum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-6 ~5 ~-1 ~6 stone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 campfire []
setblock ~3 ~-5 ~0 campfire []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 16
replaceitem block ~0 ~-3 ~4 slot.container 2 string 17
replaceitem block ~0 ~-3 ~4 slot.container 3 spider_eye 5
replaceitem block ~0 ~-3 ~4 slot.container 4 gunpowder 7
replaceitem block ~0 ~-3 ~4 slot.container 5 arrow 18
replaceitem block ~0 ~-3 ~4 slot.container 9 honey_bottle 7
replaceitem block ~0 ~-3 ~4 slot.container 10 sweet_berries 14
replaceitem block ~0 ~-3 ~4 slot.container 11 cooked_porkchop 11
replaceitem block ~0 ~-3 ~4 slot.container 12 iron_ingot 12
replaceitem block ~0 ~-3 ~4 slot.container 13 oak_log 16
replaceitem block ~0 ~-3 ~4 slot.container 14 emerald 4
loot insert ~0 ~-3 ~4 loot "rsf/forest"
loot insert ~0 ~-3 ~4 loot "chests/simple_dungeon"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 14
replaceitem block ~0 ~-3 ~-4 slot.container 2 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 3 spider_eye 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 gunpowder 13
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 16
replaceitem block ~0 ~-3 ~-4 slot.container 9 honey_bottle 6
replaceitem block ~0 ~-3 ~-4 slot.container 10 sweet_berries 13
replaceitem block ~0 ~-3 ~-4 slot.container 11 cooked_porkchop 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 iron_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 13 oak_log 22
replaceitem block ~0 ~-3 ~-4 slot.container 14 emerald 3
loot insert ~0 ~-3 ~-4 loot "rsf/forest"
loot insert ~0 ~-3 ~-4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~7 ~6 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~7 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~6 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~6 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-7 ~-6 ~8 ~7 spruce_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-7 ~6 ~8 ~7 spruce_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-6 ~-5 ~9 ~6 spruce_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-6 ~5 ~9 ~6 spruce_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-6 ~4 ~9 ~6 spruce_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 moss_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 mossy_stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 spruce_log []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 spruce_log []
fill ~-8 ~4 ~-7 ~8 ~4 ~-7 moss_block []
setblock ~2 ~5 ~-7 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 bookshelf []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 12
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 8
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 4 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 bow 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 9
replaceitem block ~-4 ~1 ~5 slot.container 11 honey_bottle 10
replaceitem block ~-4 ~1 ~5 slot.container 12 sweet_berries 10
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_porkchop 7
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 16
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 bow 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 11 honey_bottle 8
replaceitem block ~4 ~1 ~5 slot.container 12 sweet_berries 15
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_porkchop 12
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 6
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon zombie ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

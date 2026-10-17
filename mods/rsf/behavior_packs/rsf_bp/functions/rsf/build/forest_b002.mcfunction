# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0130/4224 | 主题内编号: b002/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·十字拱门祈愿圣殿 (forest_altar_cross_sanctuary)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 2格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 stone_bricks [] replace air
fill ~-6 ~-3 ~-7 ~6 ~-1 ~7 stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 spruce_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_planks []
setblock ~0 ~0 ~0 bookshelf []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-6 ~5 ~-1 ~6 moss_block []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 spruce_fence []
setblock ~5 ~2 ~0 spruce_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 moss_block []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 cobblestone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 bookshelf []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 mossy_stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~-8 ~-8 ~8 ~-8 spruce_log []
fill ~8 ~0 ~-8 ~8 ~8 ~-8 spruce_log []
fill ~-8 ~8 ~-8 ~8 ~8 ~-8 moss_block []
setblock ~1 ~9 ~-8 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 string 12
replaceitem block ~-4 ~1 ~5 slot.container 1 spider_eye 8
replaceitem block ~-4 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 4 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 9 honey_bottle 8
replaceitem block ~-4 ~1 ~5 slot.container 10 sweet_berries 15
replaceitem block ~-4 ~1 ~5 slot.container 11 cooked_porkchop 12
replaceitem block ~-4 ~1 ~5 slot.container 12 iron_ingot 6
replaceitem block ~-4 ~1 ~5 slot.container 13 oak_log 17
replaceitem block ~-4 ~1 ~5 slot.container 14 emerald 5
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 gunpowder 13
replaceitem block ~4 ~1 ~5 slot.container 1 arrow 16
replaceitem block ~4 ~1 ~5 slot.container 2 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 3 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 4 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 5 bone 14
replaceitem block ~4 ~1 ~5 slot.container 9 honey_bottle 6
replaceitem block ~4 ~1 ~5 slot.container 10 sweet_berries 13
replaceitem block ~4 ~1 ~5 slot.container 11 cooked_porkchop 10
replaceitem block ~4 ~1 ~5 slot.container 12 iron_ingot 11
replaceitem block ~4 ~1 ~5 slot.container 13 oak_log 22
replaceitem block ~4 ~1 ~5 slot.container 14 emerald 3
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

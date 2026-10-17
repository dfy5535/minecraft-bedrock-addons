# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0236/4224 | 主题内编号: b108/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·十字四相元素秘法殿 (forest_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x15 | 地上高度 8格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~12 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 mossy_stone_bricks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 mossy_cobblestone []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-5 ~4 ~-1 ~5 oak_planks []
fill ~-3 ~-4 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 chiseled_stone_bricks []
setblock ~0 ~-5 ~0 lantern []
fill ~0 ~-4 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 gunpowder 7
replaceitem block ~3 ~-2 ~0 slot.container 1 arrow 18
replaceitem block ~3 ~-2 ~0 slot.container 2 slime_ball 7
replaceitem block ~3 ~-2 ~0 slot.container 3 ender_pearl 6
replaceitem block ~3 ~-2 ~0 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~-2 ~0 slot.container 5 bone 16
replaceitem block ~3 ~-2 ~0 slot.container 9 oak_log 19
replaceitem block ~3 ~-2 ~0 slot.container 10 emerald 7
replaceitem block ~3 ~-2 ~0 slot.container 11 golden_apple 6
replaceitem block ~3 ~-2 ~0 slot.container 12 iron_axe 1
replaceitem block ~3 ~-2 ~0 slot.container 13 bow 1
replaceitem block ~3 ~-2 ~0 slot.container 14 lantern 5
loot insert ~3 ~-2 ~0 loot "rsf/forest"
loot insert ~3 ~-2 ~0 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 mossy_stone_bricks []
fill ~-5 ~1 ~-2 ~5 ~8 ~2 mossy_stone_bricks []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-6 ~5 ~9 ~6 stone_bricks []
fill ~-4 ~10 ~-5 ~4 ~10 ~5 oak_planks []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 chiseled_stone_bricks []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-10 ~2 ~4 ~-8 mossy_stone_bricks []
fill ~-1 ~1 ~-10 ~1 ~3 ~-8 air []
setblock ~-2 ~4 ~-10 lantern []
setblock ~2 ~4 ~-10 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 oak_log []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 oak_log []
fill ~-8 ~4 ~-9 ~8 ~4 ~-9 moss_block []
setblock ~2 ~5 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~5 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~5 slot.container 2 slime_ball 10
replaceitem block ~-4 ~1 ~5 slot.container 3 ender_pearl 9
replaceitem block ~-4 ~1 ~5 slot.container 4 rotten_flesh 10
replaceitem block ~-4 ~1 ~5 slot.container 5 bone 11
replaceitem block ~-4 ~1 ~5 slot.container 9 bow 1
replaceitem block ~-4 ~1 ~5 slot.container 10 lantern 10
replaceitem block ~-4 ~1 ~5 slot.container 11 honey_bottle 4
replaceitem block ~-4 ~1 ~5 slot.container 12 sweet_berries 11
replaceitem block ~-4 ~1 ~5 slot.container 13 cooked_porkchop 8
replaceitem block ~-4 ~1 ~5 slot.container 14 iron_ingot 9
loot insert ~-4 ~1 ~5 loot "rsf/forest"
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 slime_ball 5
replaceitem block ~4 ~1 ~5 slot.container 1 ender_pearl 4
replaceitem block ~4 ~1 ~5 slot.container 2 rotten_flesh 13
replaceitem block ~4 ~1 ~5 slot.container 3 bone 14
replaceitem block ~4 ~1 ~5 slot.container 4 string 15
replaceitem block ~4 ~1 ~5 slot.container 5 spider_eye 11
replaceitem block ~4 ~1 ~5 slot.container 9 bow 1
replaceitem block ~4 ~1 ~5 slot.container 10 lantern 8
replaceitem block ~4 ~1 ~5 slot.container 11 honey_bottle 9
replaceitem block ~4 ~1 ~5 slot.container 12 sweet_berries 16
replaceitem block ~4 ~1 ~5 slot.container 13 cooked_porkchop 6
replaceitem block ~4 ~1 ~5 slot.container 14 iron_ingot 7
loot insert ~4 ~1 ~5 loot "rsf/forest"
loot insert ~4 ~1 ~5 loot "chests/simple_dungeon"
summon spider ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1
summon witch ~1 ~1 ~1
summon wolf ~0 ~-2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0160/4224 | 主题内编号: b032/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·断顶残垣古哨塔 (forest_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 9x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace leaves
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace leaves2
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace log
fill ~-5 ~1 ~-7 ~5 ~14 ~7 air [] replace log2
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 mossy_stone_bricks [] replace air
fill ~-4 ~-4 ~-6 ~4 ~-1 ~6 mossy_stone_bricks [] replace water
fill ~-4 ~0 ~-6 ~4 ~0 ~6 stone_brick_slab [] replace air
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mossy_cobblestone []
fill ~-2 ~0 ~-4 ~2 ~0 ~4 stone_bricks []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-3 ~-3 ~-5 ~3 ~-1 ~5 oak_planks []
fill ~-2 ~-4 ~-4 ~2 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone_bricks []
setblock ~0 ~-5 ~0 honeycomb_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 lantern []
setblock ~2 ~-4 ~0 lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 string 17
replaceitem block ~0 ~-2 ~-3 slot.container 1 spider_eye 5
replaceitem block ~0 ~-2 ~-3 slot.container 2 gunpowder 7
replaceitem block ~0 ~-2 ~-3 slot.container 3 arrow 18
replaceitem block ~0 ~-2 ~-3 slot.container 4 slime_ball 7
replaceitem block ~0 ~-2 ~-3 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 9 golden_apple 3
replaceitem block ~0 ~-2 ~-3 slot.container 10 iron_axe 1
replaceitem block ~0 ~-2 ~-3 slot.container 11 bow 1
replaceitem block ~0 ~-2 ~-3 slot.container 12 lantern 9
replaceitem block ~0 ~-2 ~-3 slot.container 13 honey_bottle 10
replaceitem block ~0 ~-2 ~-3 slot.container 14 sweet_berries 10
loot insert ~0 ~-2 ~-3 loot "rsf/forest"
loot insert ~0 ~-2 ~-3 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-5 ~3 ~10 ~5 mossy_stone_bricks []
fill ~-2 ~1 ~-4 ~2 ~9 ~4 air []
fill ~-3 ~1 ~-5 ~-3 ~10 ~-5 oak_log []
fill ~-3 ~1 ~5 ~-3 ~10 ~5 oak_log []
fill ~3 ~1 ~-5 ~3 ~10 ~-5 oak_log []
fill ~3 ~1 ~5 ~3 ~10 ~5 oak_log []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-3 ~2 ~0 cobblestone_wall []
setblock ~3 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-3 ~10 ~-5 ~3 ~10 ~5 stone_brick_slab []
fill ~-1 ~9 ~-1 ~2 ~10 ~2 air []
fill ~-3 ~9 ~-1 ~-3 ~10 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-4 ~0 ~-2 ~-4 ~9 ~-2 oak_log []
fill ~-4 ~0 ~2 ~-4 ~9 ~2 oak_log []
fill ~4 ~0 ~-2 ~4 ~9 ~-2 oak_log []
fill ~4 ~0 ~2 ~4 ~9 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~-6 ~0 ~-7 ~-6 ~8 ~-7 oak_log []
fill ~6 ~0 ~-7 ~6 ~8 ~-7 oak_log []
fill ~-6 ~8 ~-7 ~6 ~8 ~-7 moss_block []
setblock ~1 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-3 ~1 ~1 ~-3 ~2 ~4 bookshelf []
setblock ~3 ~1 ~4 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-2 ~1 ~4 slot.container 0 rotten_flesh 10
replaceitem block ~-2 ~1 ~4 slot.container 1 bone 11
replaceitem block ~-2 ~1 ~4 slot.container 2 string 12
replaceitem block ~-2 ~1 ~4 slot.container 3 spider_eye 8
replaceitem block ~-2 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-2 ~1 ~4 slot.container 5 arrow 21
replaceitem block ~-2 ~1 ~4 slot.container 9 honey_bottle 10
replaceitem block ~-2 ~1 ~4 slot.container 10 sweet_berries 10
replaceitem block ~-2 ~1 ~4 slot.container 11 cooked_porkchop 7
replaceitem block ~-2 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-2 ~1 ~4 slot.container 13 oak_log 19
replaceitem block ~-2 ~1 ~4 slot.container 14 emerald 7
loot insert ~-2 ~1 ~4 loot "rsf/forest"
setblock ~2 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~4 slot.container 0 string 15
replaceitem block ~2 ~1 ~4 slot.container 1 spider_eye 11
replaceitem block ~2 ~1 ~4 slot.container 2 gunpowder 13
replaceitem block ~2 ~1 ~4 slot.container 3 arrow 16
replaceitem block ~2 ~1 ~4 slot.container 4 slime_ball 5
replaceitem block ~2 ~1 ~4 slot.container 5 ender_pearl 4
replaceitem block ~2 ~1 ~4 slot.container 9 honey_bottle 8
replaceitem block ~2 ~1 ~4 slot.container 10 sweet_berries 15
replaceitem block ~2 ~1 ~4 slot.container 11 cooked_porkchop 12
replaceitem block ~2 ~1 ~4 slot.container 12 iron_ingot 6
replaceitem block ~2 ~1 ~4 slot.container 13 oak_log 17
replaceitem block ~2 ~1 ~4 slot.container 14 emerald 5
loot insert ~2 ~1 ~4 loot "rsf/forest"
loot insert ~2 ~1 ~4 loot "chests/simple_dungeon"
summon witch ~0 ~1 ~-1
summon wolf ~-1 ~1 ~1
summon zombie ~1 ~1 ~1

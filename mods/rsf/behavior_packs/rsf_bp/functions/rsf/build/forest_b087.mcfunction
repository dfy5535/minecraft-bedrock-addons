# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0215/4224 | 主题内编号: b087/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·十字矿道枢纽补给室 (forest_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 5格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~10 ~8 air [] replace log2
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace air
fill ~-6 ~-6 ~-7 ~6 ~-1 ~7 cobblestone [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 stone_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 oak_planks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 mossy_cobblestone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 cobblestone []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~4 anvil []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 lantern []
setblock ~3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~4 slot.container 0 spider_eye 5
replaceitem block ~3 ~-4 ~4 slot.container 1 gunpowder 7
replaceitem block ~3 ~-4 ~4 slot.container 2 arrow 18
replaceitem block ~3 ~-4 ~4 slot.container 3 slime_ball 7
replaceitem block ~3 ~-4 ~4 slot.container 4 ender_pearl 6
replaceitem block ~3 ~-4 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~3 ~-4 ~4 slot.container 9 sweet_berries 14
replaceitem block ~3 ~-4 ~4 slot.container 10 cooked_porkchop 11
replaceitem block ~3 ~-4 ~4 slot.container 11 iron_ingot 12
replaceitem block ~3 ~-4 ~4 slot.container 12 oak_log 16
replaceitem block ~3 ~-4 ~4 slot.container 13 emerald 4
replaceitem block ~3 ~-4 ~4 slot.container 14 golden_apple 3
loot insert ~3 ~-4 ~4 loot "rsf/forest"
loot insert ~3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 cobblestone []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 cobblestone []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-4 ~1 ~-1 ~4 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-5 ~2 ~0 cobblestone_wall []
setblock ~5 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 mossy_stone_bricks []
fill ~-5 ~7 ~-6 ~5 ~7 ~6 cobblestone_wall []
fill ~-4 ~7 ~-5 ~4 ~7 ~5 air []
setblock ~-5 ~7 ~-6 oak_log []
setblock ~-5 ~8 ~-6 lantern []
setblock ~-5 ~7 ~6 oak_log []
setblock ~-5 ~8 ~6 lantern []
setblock ~5 ~7 ~-6 oak_log []
setblock ~5 ~8 ~-6 lantern []
setblock ~5 ~7 ~6 oak_log []
setblock ~5 ~8 ~6 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 mossy_stone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 lantern []
setblock ~2 ~4 ~-9 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-8 ~0 ~-9 ~-8 ~8 ~-9 oak_log []
fill ~8 ~0 ~-9 ~8 ~8 ~-9 oak_log []
fill ~-8 ~8 ~-9 ~8 ~8 ~-9 moss_block []
setblock ~1 ~9 ~-9 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~5 bookshelf []
setblock ~4 ~1 ~5 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 1 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 2 bone 11
replaceitem block ~4 ~1 ~5 slot.container 3 string 12
replaceitem block ~4 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 5 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 8
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~5 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 12 bow 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 6
replaceitem block ~4 ~1 ~5 slot.container 14 honey_bottle 7
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0

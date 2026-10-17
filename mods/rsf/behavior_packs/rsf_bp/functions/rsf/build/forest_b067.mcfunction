# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0195/4224 | 主题内编号: b067/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·半掩埋下沉庭院遗迹 (forest_ruin_sunken_courtyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_storage]
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

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 mossy_stone_bricks []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 arrow 18
replaceitem block ~-3 ~-4 ~4 slot.container 1 slime_ball 7
replaceitem block ~-3 ~-4 ~4 slot.container 2 ender_pearl 6
replaceitem block ~-3 ~-4 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-3 ~-4 ~4 slot.container 4 bone 16
replaceitem block ~-3 ~-4 ~4 slot.container 5 string 17
replaceitem block ~-3 ~-4 ~4 slot.container 9 sweet_berries 10
replaceitem block ~-3 ~-4 ~4 slot.container 10 cooked_porkchop 7
replaceitem block ~-3 ~-4 ~4 slot.container 11 iron_ingot 8
replaceitem block ~-3 ~-4 ~4 slot.container 12 oak_log 19
replaceitem block ~-3 ~-4 ~4 slot.container 13 emerald 7
replaceitem block ~-3 ~-4 ~4 slot.container 14 golden_apple 6
loot insert ~-3 ~-4 ~4 loot "rsf/forest"
loot insert ~-3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 cobblestone []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 mossy_cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~6 ~-6 ~5 ~6 ~6 stone_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-5 ~5 ~-1 ~-5 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 oak_log []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 oak_log []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 oak_log []
fill ~7 ~0 ~2 ~7 ~6 ~2 oak_log []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-8 ~8 ~-7 oak_log []
fill ~8 ~0 ~-7 ~8 ~8 ~-7 oak_log []
fill ~-8 ~8 ~-7 ~8 ~8 ~-7 moss_block []
setblock ~1 ~9 ~-7 lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 lantern []
fill ~-4 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 spider_eye 8
replaceitem block ~4 ~1 ~5 slot.container 1 gunpowder 10
replaceitem block ~4 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 3 slime_ball 10
replaceitem block ~4 ~1 ~5 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 5 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 9 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 10 golden_apple 1
replaceitem block ~4 ~1 ~5 slot.container 11 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 12 bow 1
replaceitem block ~4 ~1 ~5 slot.container 13 lantern 7
replaceitem block ~4 ~1 ~5 slot.container 14 honey_bottle 8
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon cave_spider ~0 ~1 ~-1
summon witch ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0221/4224 | 主题内编号: b093/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·U型庭院神道祈福祠 (forest_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 13x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace leaves2
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log
fill ~-7 ~1 ~-8 ~7 ~11 ~8 air [] replace log2
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks [] replace air
fill ~-6 ~-4 ~-7 ~6 ~-1 ~7 oak_planks [] replace water
fill ~-6 ~0 ~-7 ~6 ~0 ~7 oak_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 stone_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-5 ~-5 ~4 ~-1 ~5 moss_block []
fill ~-3 ~-6 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 water []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-3 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-4 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~-3 ~-4 ~4 slot.container 1 bone 16
replaceitem block ~-3 ~-4 ~4 slot.container 2 string 17
replaceitem block ~-3 ~-4 ~4 slot.container 3 spider_eye 5
replaceitem block ~-3 ~-4 ~4 slot.container 4 gunpowder 7
replaceitem block ~-3 ~-4 ~4 slot.container 5 arrow 18
replaceitem block ~-3 ~-4 ~4 slot.container 9 cooked_porkchop 9
replaceitem block ~-3 ~-4 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-3 ~-4 ~4 slot.container 11 oak_log 21
replaceitem block ~-3 ~-4 ~4 slot.container 12 emerald 9
replaceitem block ~-3 ~-4 ~4 slot.container 13 golden_apple 1
replaceitem block ~-3 ~-4 ~4 slot.container 14 iron_axe 1
loot insert ~-3 ~-4 ~4 loot "rsf/forest"
loot insert ~-3 ~-4 ~4 loot "chests/simple_dungeon"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-5 ~1 ~-6 ~5 ~7 ~6 oak_planks []
fill ~-4 ~1 ~-5 ~4 ~6 ~5 air []
fill ~-2 ~1 ~-6 ~2 ~7 ~0 air []
fill ~-2 ~0 ~-6 ~2 ~0 ~0 cobblestone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-7 ~6 ~7 ~7 oak_slab []
fill ~-4 ~8 ~-5 ~4 ~9 ~5 stone_bricks []
fill ~-5 ~10 ~-6 ~5 ~10 ~6 spruce_slab []
setblock ~0 ~11 ~0 honeycomb_block []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 mossy_cobblestone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 stripped_oak_log []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 stripped_oak_log []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 oak_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~-9 ~-8 ~4 ~-9 stripped_oak_log []
fill ~8 ~0 ~-9 ~8 ~4 ~-9 stripped_oak_log []
fill ~-8 ~4 ~-9 ~8 ~4 ~-9 moss_block []
setblock ~2 ~5 ~-9 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~6 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-4 ~1 ~5 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~5 slot.container 0 arrow 21
replaceitem block ~4 ~1 ~5 slot.container 1 slime_ball 10
replaceitem block ~4 ~1 ~5 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~5 slot.container 3 rotten_flesh 10
replaceitem block ~4 ~1 ~5 slot.container 4 bone 11
replaceitem block ~4 ~1 ~5 slot.container 5 string 12
replaceitem block ~4 ~1 ~5 slot.container 9 iron_ingot 10
replaceitem block ~4 ~1 ~5 slot.container 10 oak_log 21
replaceitem block ~4 ~1 ~5 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~5 slot.container 12 golden_apple 1
replaceitem block ~4 ~1 ~5 slot.container 13 iron_axe 1
replaceitem block ~4 ~1 ~5 slot.container 14 bow 1
loot insert ~4 ~1 ~5 loot "rsf/forest"
summon wolf ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~2 ~0

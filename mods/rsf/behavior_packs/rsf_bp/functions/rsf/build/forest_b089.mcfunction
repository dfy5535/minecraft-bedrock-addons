# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #0217/4224 | 主题内编号: b089/128
# 地形主题 #02: 温带橡木与繁花森林 (forest) —— 带古树藤蔓拱门与林冠悬廊
# 建筑名称: 林间德鲁伊系·四柱挑檐祈愿凉亭 (forest_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_bell_tower]
# 建筑规模: 平面 9x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: forest, forest_hills, flower_forest
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air [] replace leaves
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air [] replace leaves2
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air [] replace log
fill ~-5 ~1 ~-6 ~5 ~12 ~6 air [] replace log2
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 oak_planks [] replace air
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 oak_planks [] replace water
fill ~-4 ~0 ~-5 ~4 ~0 ~5 oak_slab [] replace air
fill ~-3 ~0 ~-4 ~3 ~0 ~4 stone_bricks []
fill ~-2 ~0 ~-3 ~2 ~0 ~3 cobblestone []
setblock ~0 ~0 ~0 honeycomb_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-3 ~-3 ~-4 ~3 ~-1 ~4 mossy_cobblestone []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-3 ~1 ~-4 ~3 ~8 ~4 oak_planks []
fill ~-2 ~1 ~-3 ~2 ~7 ~3 air []
fill ~-3 ~1 ~-4 ~-3 ~8 ~-4 stripped_oak_log []
fill ~-3 ~1 ~4 ~-3 ~8 ~4 stripped_oak_log []
fill ~3 ~1 ~-4 ~3 ~8 ~-4 stripped_oak_log []
fill ~3 ~1 ~4 ~3 ~8 ~4 stripped_oak_log []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-3 ~2 ~0 oak_fence []
setblock ~3 ~2 ~0 oak_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-4 ~8 ~-5 ~4 ~8 ~5 oak_slab []
fill ~-2 ~9 ~-3 ~2 ~10 ~3 stone_bricks []
fill ~-3 ~11 ~-4 ~3 ~11 ~4 spruce_slab []
setblock ~0 ~12 ~0 honeycomb_block []
setblock ~0 ~13 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-6 ~1 ~-7 ~6 ~2 ~7 oak_fence []
fill ~-5 ~1 ~-6 ~5 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (forest 独有建筑构件 | 几何特征参数 6x6x3) ---
fill ~-6 ~0 ~-6 ~-6 ~5 ~-6 stripped_oak_log []
fill ~6 ~0 ~-6 ~6 ~5 ~-6 stripped_oak_log []
fill ~-6 ~5 ~-6 ~6 ~5 ~-6 moss_block []
setblock ~1 ~6 ~-6 torch []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_bell_tower) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~2 ~0 bell []
setblock ~-2 ~1 ~3 lectern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~2 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~2 ~1 ~3 slot.container 0 bone 11
replaceitem block ~2 ~1 ~3 slot.container 1 string 12
replaceitem block ~2 ~1 ~3 slot.container 2 spider_eye 8
replaceitem block ~2 ~1 ~3 slot.container 3 gunpowder 10
replaceitem block ~2 ~1 ~3 slot.container 4 arrow 21
replaceitem block ~2 ~1 ~3 slot.container 5 slime_ball 10
replaceitem block ~2 ~1 ~3 slot.container 9 sweet_berries 10
replaceitem block ~2 ~1 ~3 slot.container 10 cooked_porkchop 7
replaceitem block ~2 ~1 ~3 slot.container 11 iron_ingot 8
replaceitem block ~2 ~1 ~3 slot.container 12 oak_log 19
replaceitem block ~2 ~1 ~3 slot.container 13 emerald 7
replaceitem block ~2 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~2 ~1 ~3 loot "rsf/forest"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1

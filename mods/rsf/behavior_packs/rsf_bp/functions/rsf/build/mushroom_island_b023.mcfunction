# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2967/4224 | 主题内编号: b023/128
# 地形主题 #24: 蘑菇岛与菌丝秘境 (mushroom_island) —— 带巨型红棕伞菌华盖与菌光体培养室
# 建筑名称: 菌丝秘境系·双层露台阁楼宝室 (mushroom_island_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: mushroom_island
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace leaves2
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log
fill ~-6 ~1 ~-8 ~6 ~11 ~8 air [] replace log2
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 brown_mushroom_block [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 brown_mushroom_block [] replace water
fill ~-5 ~0 ~-7 ~5 ~0 ~7 stone_brick_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 mossy_stone_bricks []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 mycelium []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 mushroom_stem []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~3 ~6 brown_mushroom_block []
fill ~-3 ~1 ~-5 ~3 ~2 ~5 air []
fill ~-5 ~3 ~-7 ~5 ~3 ~7 stone_brick_slab []
fill ~-3 ~4 ~-5 ~3 ~7 ~5 stone_bricks []
fill ~-2 ~4 ~-4 ~2 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 stone_brick_slab []
fill ~-3 ~8 ~-5 ~3 ~9 ~5 stone_bricks []
fill ~-4 ~10 ~-6 ~4 ~10 ~6 stone_brick_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 shroomlight []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~9 ~2 stone_bricks []
fill ~5 ~1 ~-1 ~6 ~8 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~10 ~0 shroomlight []

# --- [阶段 5.5] 地形专属标志性结构 (mushroom_island 独有建筑构件 | 几何特征参数 5x9x4) ---
fill ~5 ~0 ~2 ~5 ~6 ~2 mushroom_stem []
fill ~4 ~7 ~1 ~6 ~7 ~3 red_mushroom_block []
setblock ~5 ~6 ~3 shroomlight []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 emerald_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 blaze_rod 9
replaceitem block ~3 ~1 ~5 slot.container 1 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 2 bone 13
replaceitem block ~3 ~1 ~5 slot.container 3 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 13
replaceitem block ~3 ~1 ~5 slot.container 5 spider_eye 12
replaceitem block ~3 ~1 ~5 slot.container 9 suspicious_stew 1
replaceitem block ~3 ~1 ~5 slot.container 10 mycelium 8
replaceitem block ~3 ~1 ~5 slot.container 11 red_mushroom 13
replaceitem block ~3 ~1 ~5 slot.container 12 brown_mushroom 14
replaceitem block ~3 ~1 ~5 slot.container 13 golden_apple 5
replaceitem block ~3 ~1 ~5 slot.container 14 diamond 6
loot insert ~3 ~1 ~5 loot "rsf/mushroom_island"
summon cave_spider ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

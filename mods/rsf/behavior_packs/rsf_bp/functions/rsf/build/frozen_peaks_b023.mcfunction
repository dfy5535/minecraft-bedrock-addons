# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #2199/4224 | 主题内编号: b023/128
# 地形主题 #18: 冰封山峰、尖峭山峰与积雪山坡 (frozen_peaks) —— 带深板岩防雪崩护墙与冰封烽火台
# 建筑名称: 冰峰绝壁系·双层露台阁楼宝室 (frozen_peaks_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 11x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: frozen_peaks, jagged_peaks, snowy_slopes
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 cobblestone [] replace air
fill ~-5 ~-4 ~-7 ~5 ~-1 ~7 cobblestone [] replace water
fill ~-5 ~1 ~-7 ~5 ~9 ~7 air []
fill ~-5 ~0 ~-7 ~5 ~0 ~7 cobblestone_slab [] replace air
fill ~-4 ~0 ~-6 ~4 ~0 ~6 snow []
fill ~-3 ~0 ~-5 ~3 ~0 ~5 cobblestone []
setblock ~0 ~0 ~0 chiseled_stone_bricks []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-3 ~-6 ~4 ~-1 ~6 stone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-4 ~1 ~-6 ~4 ~3 ~6 cobblestone []
fill ~-3 ~1 ~-5 ~3 ~2 ~5 air []
fill ~-5 ~3 ~-7 ~5 ~3 ~7 cobblestone_slab []
fill ~-3 ~4 ~-5 ~3 ~7 ~5 stone_bricks []
fill ~-2 ~4 ~-4 ~2 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-7 ~5 ~7 ~7 cobblestone_slab []
fill ~-3 ~8 ~-5 ~3 ~9 ~5 stone_bricks []
fill ~-4 ~10 ~-6 ~4 ~10 ~6 stone_brick_slab []
setblock ~0 ~11 ~0 chiseled_stone_bricks []
setblock ~0 ~12 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~5 ~0 ~-2 ~7 ~9 ~2 stone_bricks []
fill ~5 ~1 ~-1 ~6 ~8 ~1 air []
fill ~4 ~1 ~0 ~5 ~2 ~0 air []
setblock ~6 ~10 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (frozen_peaks 独有建筑构件 | 几何特征参数 5x9x3) ---
fill ~-5 ~0 ~2 ~-5 ~6 ~2 deepslate_bricks []
setblock ~-5 ~7 ~2 packed_ice []
setblock ~-5 ~8 ~2 campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 lantern []
setblock ~-4 ~1 ~5 crafting_table []
setblock ~-3 ~1 ~5 furnace []
setblock ~4 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~5 slot.container 0 ender_pearl 9
replaceitem block ~3 ~1 ~5 slot.container 1 bone 12
replaceitem block ~3 ~1 ~5 slot.container 2 arrow 21
replaceitem block ~3 ~1 ~5 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~1 ~5 slot.container 4 string 11
replaceitem block ~3 ~1 ~5 slot.container 5 gunpowder 12
replaceitem block ~3 ~1 ~5 slot.container 9 crossbow 1
replaceitem block ~3 ~1 ~5 slot.container 10 campfire 4
replaceitem block ~3 ~1 ~5 slot.container 11 lantern 7
replaceitem block ~3 ~1 ~5 slot.container 12 emerald 10
replaceitem block ~3 ~1 ~5 slot.container 13 iron_ingot 13
replaceitem block ~3 ~1 ~5 slot.container 14 coal 22
loot insert ~3 ~1 ~5 loot "rsf/frozen_peaks"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

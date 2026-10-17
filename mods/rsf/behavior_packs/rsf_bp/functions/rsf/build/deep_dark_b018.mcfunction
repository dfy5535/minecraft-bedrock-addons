# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3346/4224 | 主题内编号: b018/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·L型转角领主秘宝屋 (deep_dark_chamber_l_wing_manor)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 cobbled_deepslate []
fill ~-6 ~1 ~0 ~6 ~4 ~5 deepslate_bricks []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 deepslate_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 deepslate_tiles []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 polished_deepslate_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-1 ~0 ~6 ~1 ~4 ~6 chiseled_deepslate []
setblock ~0 ~1 ~6 sculk_catalyst []
setblock ~0 ~5 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 18
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond_leggings 1
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 7
replaceitem block ~-5 ~1 ~3 slot.container 11 enchanted_golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 13 experience_bottle 16
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 9
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

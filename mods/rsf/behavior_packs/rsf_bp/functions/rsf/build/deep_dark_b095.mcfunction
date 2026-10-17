# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3423/4224 | 主题内编号: b095/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子灯笼守卫神龛 (deep_dark_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~8 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~7 ~3 deepslate_bricks []
fill ~2 ~1 ~-3 ~6 ~7 ~3 deepslate_bricks []
fill ~-5 ~1 ~-2 ~-3 ~6 ~2 air []
fill ~3 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 deepslate_tiles []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 deepslate_brick_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 deepslate_tiles []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 deepslate_tile_slab []
setblock ~0 ~10 ~0 sculk_catalyst []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-5 ~-8 ~3 ~-5 chiseled_deepslate []
setblock ~-8 ~4 ~-5 soul_lantern []
fill ~-8 ~0 ~5 ~-8 ~3 ~5 chiseled_deepslate []
setblock ~-8 ~4 ~5 soul_lantern []
fill ~8 ~0 ~-5 ~8 ~3 ~-5 chiseled_deepslate []
setblock ~8 ~4 ~-5 soul_lantern []
fill ~8 ~0 ~5 ~8 ~3 ~5 chiseled_deepslate []
setblock ~8 ~4 ~5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-2 ~0 ~6 ~0 ~6 ~6 chiseled_deepslate []
setblock ~-1 ~1 ~6 sculk_catalyst []
setblock ~-1 ~7 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~3 smoker []
setblock ~-5 ~1 ~3 furnace []
setblock ~0 ~1 ~3 crafting_table []
setblock ~6 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~1 slot.container 1 echo_shard 6
replaceitem block ~5 ~1 ~1 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~1 slot.container 3 bone 14
replaceitem block ~5 ~1 ~1 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~1 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~1 slot.container 9 soul_lantern 6
replaceitem block ~5 ~1 ~1 slot.container 10 enchanted_golden_apple 2
replaceitem block ~5 ~1 ~1 slot.container 11 golden_apple 5
replaceitem block ~5 ~1 ~1 slot.container 12 experience_bottle 15
replaceitem block ~5 ~1 ~1 slot.container 13 diamond 8
replaceitem block ~5 ~1 ~1 slot.container 14 amethyst_shard 13
loot insert ~5 ~1 ~1 loot "rsf/deep_dark"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 18
replaceitem block ~-5 ~1 ~2 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~2 slot.container 5 string 13
replaceitem block ~-5 ~1 ~2 slot.container 9 soul_lantern 11
replaceitem block ~-5 ~1 ~2 slot.container 10 enchanted_golden_apple 7
replaceitem block ~-5 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~-5 ~1 ~2 slot.container 12 experience_bottle 13
replaceitem block ~-5 ~1 ~2 slot.container 13 diamond 6
replaceitem block ~-5 ~1 ~2 slot.container 14 amethyst_shard 11
loot insert ~-5 ~1 ~2 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~2 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

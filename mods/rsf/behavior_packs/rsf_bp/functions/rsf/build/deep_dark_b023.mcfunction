# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3351/4224 | 主题内编号: b023/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双层露台阁楼宝室 (deep_dark_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 2格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 deepslate_bricks [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_deepslate []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-5 ~5 ~-1 ~5 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~3 ~5 deepslate_bricks []
fill ~-4 ~1 ~-4 ~4 ~2 ~4 air []
fill ~-6 ~3 ~-6 ~6 ~3 ~6 deepslate_brick_slab []
fill ~-4 ~4 ~-4 ~4 ~7 ~4 deepslate_tiles []
fill ~-3 ~4 ~-3 ~3 ~6 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~4 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-6 ~6 ~7 ~6 deepslate_brick_slab []
fill ~-4 ~8 ~-4 ~4 ~9 ~4 deepslate_tiles []
fill ~-5 ~10 ~-5 ~5 ~10 ~5 deepslate_tile_slab []
setblock ~0 ~11 ~0 sculk_catalyst []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~9 ~2 deepslate_tiles []
fill ~6 ~1 ~-1 ~7 ~8 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~10 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~1 ~0 ~8 ~3 ~4 ~8 chiseled_deepslate []
setblock ~2 ~1 ~8 sculk_catalyst []
setblock ~2 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 spider_eye 13
replaceitem block ~4 ~1 ~3 slot.container 1 echo_shard 6
replaceitem block ~4 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~3 slot.container 3 bone 14
replaceitem block ~4 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 5 phantom_membrane 8
replaceitem block ~4 ~1 ~3 slot.container 9 diamond 9
replaceitem block ~4 ~1 ~3 slot.container 10 amethyst_shard 14
replaceitem block ~4 ~1 ~3 slot.container 11 sculk_catalyst 2
replaceitem block ~4 ~1 ~3 slot.container 12 sculk_sensor 3
replaceitem block ~4 ~1 ~3 slot.container 13 recovery_compass 1
replaceitem block ~4 ~1 ~3 slot.container 14 diamond_leggings 1
loot insert ~4 ~1 ~3 loot "rsf/deep_dark"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~4 slot.container 1 bone 17
replaceitem block ~-4 ~1 ~4 slot.container 2 rotten_flesh 18
replaceitem block ~-4 ~1 ~4 slot.container 3 phantom_membrane 11
replaceitem block ~-4 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 5 string 13
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond 7
replaceitem block ~-4 ~1 ~4 slot.container 10 amethyst_shard 12
replaceitem block ~-4 ~1 ~4 slot.container 11 sculk_catalyst 7
replaceitem block ~-4 ~1 ~4 slot.container 12 sculk_sensor 8
replaceitem block ~-4 ~1 ~4 slot.container 13 recovery_compass 1
replaceitem block ~-4 ~1 ~4 slot.container 14 diamond_leggings 1
loot insert ~-4 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~4 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

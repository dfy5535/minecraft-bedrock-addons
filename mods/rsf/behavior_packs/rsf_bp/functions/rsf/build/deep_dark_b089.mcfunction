# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3417/4224 | 主题内编号: b089/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·四柱挑檐祈愿凉亭 (deep_dark_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 11x9 | 地上高度 6格 | 地下深度 2格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_deepslate [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_deepslate [] replace water
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sculk []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 deepslate_bricks []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~6 ~3 polished_deepslate []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 chiseled_deepslate []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 chiseled_deepslate []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 chiseled_deepslate []
fill ~4 ~1 ~3 ~4 ~6 ~3 chiseled_deepslate []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 polished_deepslate_wall []
setblock ~4 ~2 ~0 polished_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 polished_deepslate_slab []
fill ~-3 ~7 ~-2 ~3 ~8 ~2 cobbled_deepslate []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 deepslate_brick_slab []
setblock ~0 ~10 ~0 diamond_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-5 ~2 ~0 ~-4 deepslate_bricks []
fill ~-2 ~1 ~-5 ~-2 ~3 ~-5 chiseled_deepslate []
fill ~2 ~1 ~-5 ~2 ~3 ~-5 chiseled_deepslate []
fill ~-2 ~4 ~-5 ~2 ~4 ~-4 polished_deepslate_slab []
setblock ~0 ~3 ~-5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 5x6x3) ---
fill ~-1 ~0 ~6 ~1 ~5 ~6 chiseled_deepslate []
setblock ~0 ~1 ~6 sculk_catalyst []
setblock ~0 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 5
replaceitem block ~3 ~1 ~1 slot.container 1 bone 14
replaceitem block ~3 ~1 ~1 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~1 slot.container 3 phantom_membrane 8
replaceitem block ~3 ~1 ~1 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~1 slot.container 5 string 18
replaceitem block ~3 ~1 ~1 slot.container 9 golden_apple 4
replaceitem block ~3 ~1 ~1 slot.container 10 experience_bottle 14
replaceitem block ~3 ~1 ~1 slot.container 11 diamond 7
replaceitem block ~3 ~1 ~1 slot.container 12 amethyst_shard 12
replaceitem block ~3 ~1 ~1 slot.container 13 sculk_catalyst 7
replaceitem block ~3 ~1 ~1 slot.container 14 sculk_sensor 8
loot insert ~3 ~1 ~1 loot "rsf/deep_dark"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 18
replaceitem block ~-3 ~1 ~2 slot.container 1 phantom_membrane 11
replaceitem block ~-3 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-3 ~1 ~2 slot.container 3 string 13
replaceitem block ~-3 ~1 ~2 slot.container 4 spider_eye 8
replaceitem block ~-3 ~1 ~2 slot.container 5 echo_shard 9
replaceitem block ~-3 ~1 ~2 slot.container 9 golden_apple 9
replaceitem block ~-3 ~1 ~2 slot.container 10 experience_bottle 12
replaceitem block ~-3 ~1 ~2 slot.container 11 diamond 5
replaceitem block ~-3 ~1 ~2 slot.container 12 amethyst_shard 10
replaceitem block ~-3 ~1 ~2 slot.container 13 sculk_catalyst 5
replaceitem block ~-3 ~1 ~2 slot.container 14 sculk_sensor 6
loot insert ~-3 ~1 ~2 loot "rsf/deep_dark"
loot insert ~-3 ~1 ~2 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3380/4224 | 主题内编号: b052/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·重檐行商旅店客栈 (deep_dark_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 deepslate_tiles [] replace water
fill ~-7 ~1 ~-7 ~7 ~8 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 deepslate_bricks []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 polished_deepslate []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 echo_shard 11
replaceitem block ~4 ~-3 ~4 slot.container 1 ender_pearl 10
replaceitem block ~4 ~-3 ~4 slot.container 2 bone 19
replaceitem block ~4 ~-3 ~4 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~-3 ~4 slot.container 4 phantom_membrane 5
replaceitem block ~4 ~-3 ~4 slot.container 5 gunpowder 12
replaceitem block ~4 ~-3 ~4 slot.container 9 amethyst_shard 10
replaceitem block ~4 ~-3 ~4 slot.container 10 sculk_catalyst 5
replaceitem block ~4 ~-3 ~4 slot.container 11 sculk_sensor 6
replaceitem block ~4 ~-3 ~4 slot.container 12 recovery_compass 1
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond_leggings 1
replaceitem block ~4 ~-3 ~4 slot.container 14 soul_lantern 6
loot insert ~4 ~-3 ~4 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~3 ~6 deepslate_tiles []
fill ~-5 ~1 ~-5 ~5 ~2 ~5 air []
fill ~-7 ~3 ~-7 ~7 ~3 ~7 deepslate_tile_slab []
fill ~-5 ~4 ~-5 ~5 ~6 ~5 polished_deepslate []
fill ~-4 ~4 ~-4 ~4 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-7 ~7 ~6 ~7 deepslate_tile_slab []
fill ~-5 ~7 ~-5 ~5 ~8 ~5 polished_deepslate []
fill ~-6 ~9 ~-6 ~6 ~9 ~6 polished_deepslate_slab []
setblock ~0 ~10 ~0 amethyst_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 sculk []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 polished_deepslate []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 polished_deepslate []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 deepslate_tile_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~-3 ~0 ~8 ~-1 ~8 ~8 chiseled_deepslate []
setblock ~-2 ~1 ~8 sculk_catalyst []
setblock ~-2 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 phantom_membrane 8
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 18
replaceitem block ~-5 ~1 ~4 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 4 echo_shard 6
replaceitem block ~-5 ~1 ~4 slot.container 5 ender_pearl 5
replaceitem block ~-5 ~1 ~4 slot.container 9 enchanted_golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 11 experience_bottle 13
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 6
replaceitem block ~-5 ~1 ~4 slot.container 13 amethyst_shard 11
replaceitem block ~-5 ~1 ~4 slot.container 14 sculk_catalyst 6
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

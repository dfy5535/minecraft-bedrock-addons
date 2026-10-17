# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3387/4224 | 主题内编号: b059/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·阶梯金字塔法老墓室 (deep_dark_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_tiles []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_tiles []
setblock ~0 ~-6 ~0 amethyst_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 gunpowder 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 2 spider_eye 10
replaceitem block ~0 ~-3 ~-4 slot.container 3 echo_shard 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 ender_pearl 10
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 19
replaceitem block ~0 ~-3 ~-4 slot.container 9 recovery_compass 1
replaceitem block ~0 ~-3 ~-4 slot.container 10 diamond_leggings 1
replaceitem block ~0 ~-3 ~-4 slot.container 11 soul_lantern 10
replaceitem block ~0 ~-3 ~-4 slot.container 12 enchanted_golden_apple 6
replaceitem block ~0 ~-3 ~-4 slot.container 13 golden_apple 9
replaceitem block ~0 ~-3 ~-4 slot.container 14 experience_bottle 12
loot insert ~0 ~-3 ~-4 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 deepslate_tiles []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 deepslate_tiles []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 deepslate_tiles []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_tiles []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 sculk_catalyst []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 chiseled_deepslate []
setblock ~-9 ~4 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 chiseled_deepslate []
setblock ~-9 ~4 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 chiseled_deepslate []
setblock ~9 ~4 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 chiseled_deepslate []
setblock ~9 ~4 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x9x3) ---
fill ~-4 ~0 ~9 ~-2 ~5 ~9 chiseled_deepslate []
setblock ~-3 ~1 ~9 sculk_catalyst []
setblock ~-3 ~6 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 1 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~6 ~1 ~4 slot.container 3 string 18
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 13
replaceitem block ~6 ~1 ~4 slot.container 5 echo_shard 6
replaceitem block ~6 ~1 ~4 slot.container 9 golden_apple 9
replaceitem block ~6 ~1 ~4 slot.container 10 experience_bottle 12
replaceitem block ~6 ~1 ~4 slot.container 11 diamond 5
replaceitem block ~6 ~1 ~4 slot.container 12 amethyst_shard 10
replaceitem block ~6 ~1 ~4 slot.container 13 sculk_catalyst 5
replaceitem block ~6 ~1 ~4 slot.container 14 sculk_sensor 6
loot insert ~6 ~1 ~4 loot "rsf/deep_dark"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-6 ~1 ~5 slot.container 1 string 13
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 3 echo_shard 9
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 9 golden_apple 7
replaceitem block ~-6 ~1 ~5 slot.container 10 experience_bottle 17
replaceitem block ~-6 ~1 ~5 slot.container 11 diamond 10
replaceitem block ~-6 ~1 ~5 slot.container 12 amethyst_shard 8
replaceitem block ~-6 ~1 ~5 slot.container 13 sculk_catalyst 3
replaceitem block ~-6 ~1 ~5 slot.container 14 sculk_sensor 4
loot insert ~-6 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~5 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

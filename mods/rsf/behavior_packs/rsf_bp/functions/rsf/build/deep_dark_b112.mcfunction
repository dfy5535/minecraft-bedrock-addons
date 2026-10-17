# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3440/4224 | 主题内编号: b112/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·U型回廊学者修道院 (deep_dark_arcane_u_cloister)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_deepslate []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 phantom_membrane 5
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~-3 ~3 slot.container 2 string 15
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 10
replaceitem block ~4 ~-3 ~3 slot.container 4 echo_shard 11
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 10
replaceitem block ~4 ~-3 ~3 slot.container 9 amethyst_shard 14
replaceitem block ~4 ~-3 ~3 slot.container 10 sculk_catalyst 2
replaceitem block ~4 ~-3 ~3 slot.container 11 sculk_sensor 3
replaceitem block ~4 ~-3 ~3 slot.container 12 recovery_compass 1
replaceitem block ~4 ~-3 ~3 slot.container 13 diamond_leggings 1
replaceitem block ~4 ~-3 ~3 slot.container 14 soul_lantern 10
loot insert ~4 ~-3 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 deepslate_tiles []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 sculk []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 deepslate_tile_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 sculk []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 chiseled_deepslate []
setblock ~-7 ~4 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 chiseled_deepslate []
setblock ~-7 ~4 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 chiseled_deepslate []
setblock ~7 ~4 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 chiseled_deepslate []
setblock ~7 ~4 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-3 ~0 ~7 ~-1 ~8 ~7 chiseled_deepslate []
setblock ~-2 ~1 ~7 sculk_catalyst []
setblock ~-2 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 echo_shard 6
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 enchanted_golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 11 experience_bottle 17
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 10
replaceitem block ~-5 ~1 ~3 slot.container 13 amethyst_shard 8
replaceitem block ~-5 ~1 ~3 slot.container 14 sculk_catalyst 3
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

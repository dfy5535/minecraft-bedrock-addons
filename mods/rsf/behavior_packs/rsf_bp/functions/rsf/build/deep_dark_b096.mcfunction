# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3424/4224 | 主题内编号: b096/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·高台三阶献祭神祠 (deep_dark_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 polished_deepslate []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 phantom_membrane 5
replaceitem block ~3 ~-3 ~2 slot.container 1 gunpowder 12
replaceitem block ~3 ~-3 ~2 slot.container 2 string 15
replaceitem block ~3 ~-3 ~2 slot.container 3 spider_eye 10
replaceitem block ~3 ~-3 ~2 slot.container 4 echo_shard 11
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 10
replaceitem block ~3 ~-3 ~2 slot.container 9 sculk_sensor 6
replaceitem block ~3 ~-3 ~2 slot.container 10 recovery_compass 1
replaceitem block ~3 ~-3 ~2 slot.container 11 diamond_leggings 1
replaceitem block ~3 ~-3 ~2 slot.container 12 soul_lantern 6
replaceitem block ~3 ~-3 ~2 slot.container 13 enchanted_golden_apple 2
replaceitem block ~3 ~-3 ~2 slot.container 14 golden_apple 5
loot insert ~3 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_tiles []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 sculk []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 polished_deepslate []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 deepslate_tile_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 sculk []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 polished_deepslate []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 amethyst_block []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 sculk []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 polished_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_tile_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~-1 ~0 ~5 ~1 ~7 ~5 chiseled_deepslate []
setblock ~0 ~1 ~5 sculk_catalyst []
setblock ~0 ~8 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 echo_shard 6
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 5
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~2 slot.container 9 experience_bottle 13
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 6
replaceitem block ~-4 ~1 ~2 slot.container 11 amethyst_shard 11
replaceitem block ~-4 ~1 ~2 slot.container 12 sculk_catalyst 6
replaceitem block ~-4 ~1 ~2 slot.container 13 sculk_sensor 7
replaceitem block ~-4 ~1 ~2 slot.container 14 recovery_compass 1
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

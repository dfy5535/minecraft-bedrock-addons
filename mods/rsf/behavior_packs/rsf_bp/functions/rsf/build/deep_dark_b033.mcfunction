# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3361/4224 | 主题内编号: b033/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·太阳金顶高耸方尖碑 (deep_dark_obelisk_sun_needle)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_deepslate [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_deepslate [] replace water
fill ~-5 ~1 ~-4 ~5 ~12 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sculk []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobbled_deepslate []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 deepslate_bricks []
setblock ~0 ~-5 ~0 sculk_sensor []
fill ~0 ~-4 ~2 ~0 ~0 ~2 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-1 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-1 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-2 ~-1 slot.container 1 phantom_membrane 5
replaceitem block ~0 ~-2 ~-1 slot.container 2 gunpowder 12
replaceitem block ~0 ~-2 ~-1 slot.container 3 string 15
replaceitem block ~0 ~-2 ~-1 slot.container 4 spider_eye 10
replaceitem block ~0 ~-2 ~-1 slot.container 5 echo_shard 11
replaceitem block ~0 ~-2 ~-1 slot.container 9 soul_lantern 10
replaceitem block ~0 ~-2 ~-1 slot.container 10 enchanted_golden_apple 6
replaceitem block ~0 ~-2 ~-1 slot.container 11 golden_apple 9
replaceitem block ~0 ~-2 ~-1 slot.container 12 experience_bottle 12
replaceitem block ~0 ~-2 ~-1 slot.container 13 diamond 5
replaceitem block ~0 ~-2 ~-1 slot.container 14 amethyst_shard 10
loot insert ~0 ~-2 ~-1 loot "rsf/deep_dark"
loot insert ~0 ~-2 ~-1 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-4 ~1 ~-3 ~4 ~2 ~3 polished_deepslate []
fill ~-3 ~3 ~-2 ~3 ~4 ~2 deepslate_bricks []
fill ~-2 ~5 ~-1 ~2 ~10 ~1 cobbled_deepslate []
fill ~-2 ~1 ~-1 ~2 ~9 ~1 air []
fill ~0 ~1 ~-3 ~0 ~4 ~-3 polished_deepslate_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-2 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 deepslate_bricks []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 polished_deepslate []
fill ~0 ~16 ~0 ~0 ~19 ~0 diamond_block []
setblock ~0 ~20 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-6 ~0 ~-5 ~-6 ~3 ~-5 chiseled_deepslate []
setblock ~-6 ~4 ~-5 soul_lantern []
fill ~-6 ~0 ~5 ~-6 ~3 ~5 chiseled_deepslate []
setblock ~-6 ~4 ~5 soul_lantern []
fill ~6 ~0 ~-5 ~6 ~3 ~-5 chiseled_deepslate []
setblock ~6 ~4 ~-5 soul_lantern []
fill ~6 ~0 ~5 ~6 ~3 ~5 chiseled_deepslate []
setblock ~6 ~4 ~5 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 5x4x2) ---
fill ~-1 ~0 ~4 ~1 ~4 ~4 chiseled_deepslate []
setblock ~0 ~1 ~4 sculk_catalyst []
setblock ~0 ~5 ~4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ender_pearl 5
replaceitem block ~3 ~1 ~1 slot.container 1 bone 14
replaceitem block ~3 ~1 ~1 slot.container 2 rotten_flesh 15
replaceitem block ~3 ~1 ~1 slot.container 3 phantom_membrane 8
replaceitem block ~3 ~1 ~1 slot.container 4 gunpowder 15
replaceitem block ~3 ~1 ~1 slot.container 5 string 18
replaceitem block ~3 ~1 ~1 slot.container 9 diamond 5
replaceitem block ~3 ~1 ~1 slot.container 10 amethyst_shard 10
replaceitem block ~3 ~1 ~1 slot.container 11 sculk_catalyst 5
replaceitem block ~3 ~1 ~1 slot.container 12 sculk_sensor 6
replaceitem block ~3 ~1 ~1 slot.container 13 recovery_compass 1
replaceitem block ~3 ~1 ~1 slot.container 14 diamond_leggings 1
loot insert ~3 ~1 ~1 loot "rsf/deep_dark"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 rotten_flesh 18
replaceitem block ~-3 ~1 ~2 slot.container 1 phantom_membrane 11
replaceitem block ~-3 ~1 ~2 slot.container 2 gunpowder 10
replaceitem block ~-3 ~1 ~2 slot.container 3 string 13
replaceitem block ~-3 ~1 ~2 slot.container 4 spider_eye 8
replaceitem block ~-3 ~1 ~2 slot.container 5 echo_shard 9
replaceitem block ~-3 ~1 ~2 slot.container 9 diamond 10
replaceitem block ~-3 ~1 ~2 slot.container 10 amethyst_shard 8
replaceitem block ~-3 ~1 ~2 slot.container 11 sculk_catalyst 3
replaceitem block ~-3 ~1 ~2 slot.container 12 sculk_sensor 4
replaceitem block ~-3 ~1 ~2 slot.container 13 recovery_compass 1
replaceitem block ~-3 ~1 ~2 slot.container 14 diamond_leggings 1
loot insert ~-3 ~1 ~2 loot "rsf/deep_dark"
loot insert ~-3 ~1 ~2 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

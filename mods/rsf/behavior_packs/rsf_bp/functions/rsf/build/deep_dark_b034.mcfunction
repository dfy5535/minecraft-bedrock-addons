# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3362/4224 | 主题内编号: b034/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子对称铭文方尖碑 (deep_dark_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 cobbled_deepslate [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-4 ~7 ~11 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 deepslate_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 string 15
replaceitem block ~4 ~-3 ~1 slot.container 1 spider_eye 10
replaceitem block ~4 ~-3 ~1 slot.container 2 echo_shard 11
replaceitem block ~4 ~-3 ~1 slot.container 3 ender_pearl 10
replaceitem block ~4 ~-3 ~1 slot.container 4 bone 19
replaceitem block ~4 ~-3 ~1 slot.container 5 rotten_flesh 12
replaceitem block ~4 ~-3 ~1 slot.container 9 enchanted_golden_apple 6
replaceitem block ~4 ~-3 ~1 slot.container 10 golden_apple 9
replaceitem block ~4 ~-3 ~1 slot.container 11 experience_bottle 12
replaceitem block ~4 ~-3 ~1 slot.container 12 diamond 5
replaceitem block ~4 ~-3 ~1 slot.container 13 amethyst_shard 10
replaceitem block ~4 ~-3 ~1 slot.container 14 sculk_catalyst 5
loot insert ~4 ~-3 ~1 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~1 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 cobbled_deepslate []
fill ~2 ~1 ~-3 ~6 ~10 ~3 cobbled_deepslate []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 deepslate_tiles []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 deepslate_tiles []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 cobbled_deepslate []
fill ~0 ~15 ~0 ~0 ~18 ~0 sculk_sensor []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 deepslate_tiles []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 soul_lantern []
setblock ~2 ~4 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-3 ~0 ~5 ~-1 ~5 ~5 chiseled_deepslate []
setblock ~-2 ~1 ~5 sculk_catalyst []
setblock ~-2 ~6 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~1 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~1 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~1 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~1 slot.container 4 string 18
replaceitem block ~-5 ~1 ~1 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~1 slot.container 9 sculk_sensor 4
replaceitem block ~-5 ~1 ~1 slot.container 10 recovery_compass 1
replaceitem block ~-5 ~1 ~1 slot.container 11 diamond_leggings 1
replaceitem block ~-5 ~1 ~1 slot.container 12 soul_lantern 11
replaceitem block ~-5 ~1 ~1 slot.container 13 enchanted_golden_apple 7
replaceitem block ~-5 ~1 ~1 slot.container 14 golden_apple 3
loot insert ~-5 ~1 ~1 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

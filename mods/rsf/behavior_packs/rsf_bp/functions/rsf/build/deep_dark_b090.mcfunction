# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3418/4224 | 主题内编号: b090/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·八角攒尖悬灯神龛 (deep_dark_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 string 15
replaceitem block ~3 ~-3 ~2 slot.container 1 spider_eye 10
replaceitem block ~3 ~-3 ~2 slot.container 2 echo_shard 11
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 10
replaceitem block ~3 ~-3 ~2 slot.container 4 bone 19
replaceitem block ~3 ~-3 ~2 slot.container 5 rotten_flesh 12
replaceitem block ~3 ~-3 ~2 slot.container 9 diamond_leggings 1
replaceitem block ~3 ~-3 ~2 slot.container 10 soul_lantern 12
replaceitem block ~3 ~-3 ~2 slot.container 11 enchanted_golden_apple 1
replaceitem block ~3 ~-3 ~2 slot.container 12 golden_apple 4
replaceitem block ~3 ~-3 ~2 slot.container 13 experience_bottle 14
replaceitem block ~3 ~-3 ~2 slot.container 14 diamond 7
loot insert ~3 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 cobbled_deepslate []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 chiseled_deepslate []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 chiseled_deepslate []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 chiseled_deepslate []
fill ~4 ~1 ~3 ~4 ~6 ~3 chiseled_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 deepslate_tiles []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 deepslate_bricks []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 sculk_sensor []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 chiseled_deepslate []
setblock ~-7 ~4 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 chiseled_deepslate []
setblock ~-7 ~4 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 chiseled_deepslate []
setblock ~7 ~4 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 chiseled_deepslate []
setblock ~7 ~4 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~-2 ~0 ~5 ~0 ~6 ~5 chiseled_deepslate []
setblock ~-1 ~1 ~5 sculk_catalyst []
setblock ~-1 ~7 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~2 slot.container 4 string 18
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 13
replaceitem block ~-4 ~1 ~2 slot.container 9 amethyst_shard 10
replaceitem block ~-4 ~1 ~2 slot.container 10 sculk_catalyst 5
replaceitem block ~-4 ~1 ~2 slot.container 11 sculk_sensor 6
replaceitem block ~-4 ~1 ~2 slot.container 12 recovery_compass 1
replaceitem block ~-4 ~1 ~2 slot.container 13 diamond_leggings 1
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_lantern 6
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

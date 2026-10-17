# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3401/4224 | 主题内编号: b073/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·八方图腾圣火石阵 (deep_dark_totem_eight_pillars)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sculk []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobbled_deepslate []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 gunpowder 12
replaceitem block ~4 ~-2 ~3 slot.container 1 string 15
replaceitem block ~4 ~-2 ~3 slot.container 2 spider_eye 10
replaceitem block ~4 ~-2 ~3 slot.container 3 echo_shard 11
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 10
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 19
replaceitem block ~4 ~-2 ~3 slot.container 9 recovery_compass 1
replaceitem block ~4 ~-2 ~3 slot.container 10 diamond_leggings 1
replaceitem block ~4 ~-2 ~3 slot.container 11 soul_lantern 10
replaceitem block ~4 ~-2 ~3 slot.container 12 enchanted_golden_apple 6
replaceitem block ~4 ~-2 ~3 slot.container 13 golden_apple 9
replaceitem block ~4 ~-2 ~3 slot.container 14 experience_bottle 12
loot insert ~4 ~-2 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 polished_deepslate []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 air []
fill ~6 ~1 ~5 ~6 ~7 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~6 ~-4 chiseled_deepslate []
fill ~5 ~1 ~-4 ~5 ~6 ~-4 chiseled_deepslate []
fill ~-5 ~1 ~4 ~-5 ~6 ~4 chiseled_deepslate []
fill ~5 ~1 ~4 ~5 ~6 ~4 chiseled_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 chiseled_deepslate []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 chiseled_deepslate []
setblock ~-6 ~9 ~5 soul_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 chiseled_deepslate []
setblock ~6 ~9 ~-5 soul_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 chiseled_deepslate []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_deepslate []
setblock ~0 ~4 ~-7 sculk_sensor []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_deepslate []
setblock ~0 ~4 ~7 sculk_sensor []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_deepslate []
setblock ~-8 ~4 ~0 sculk_sensor []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_deepslate []
setblock ~8 ~4 ~0 sculk_sensor []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~0 ~0 ~7 ~2 ~4 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~3 slot.container 1 bone 14
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 5 string 18
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 10
replaceitem block ~5 ~1 ~3 slot.container 10 amethyst_shard 8
replaceitem block ~5 ~1 ~3 slot.container 11 sculk_catalyst 3
replaceitem block ~5 ~1 ~3 slot.container 12 sculk_sensor 4
replaceitem block ~5 ~1 ~3 slot.container 13 recovery_compass 1
replaceitem block ~5 ~1 ~3 slot.container 14 diamond_leggings 1
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~-5 ~1 ~4 slot.container 1 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 3 string 13
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 5 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 10 amethyst_shard 13
replaceitem block ~-5 ~1 ~4 slot.container 11 sculk_catalyst 8
replaceitem block ~-5 ~1 ~4 slot.container 12 sculk_sensor 2
replaceitem block ~-5 ~1 ~4 slot.container 13 recovery_compass 1
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond_leggings 1
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

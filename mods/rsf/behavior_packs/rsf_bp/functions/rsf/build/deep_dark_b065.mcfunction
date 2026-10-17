# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3393/4224 | 主题内编号: b065/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·断柱露天古神庙废墟 (deep_dark_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 polished_deepslate [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 polished_deepslate [] replace water
fill ~-7 ~1 ~-7 ~7 ~7 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sculk []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-5 ~5 ~-1 ~5 cobbled_deepslate []
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~4 slot.container 0 gunpowder 12
replaceitem block ~4 ~-2 ~4 slot.container 1 string 15
replaceitem block ~4 ~-2 ~4 slot.container 2 spider_eye 10
replaceitem block ~4 ~-2 ~4 slot.container 3 echo_shard 11
replaceitem block ~4 ~-2 ~4 slot.container 4 ender_pearl 10
replaceitem block ~4 ~-2 ~4 slot.container 5 bone 19
replaceitem block ~4 ~-2 ~4 slot.container 9 diamond 5
replaceitem block ~4 ~-2 ~4 slot.container 10 amethyst_shard 10
replaceitem block ~4 ~-2 ~4 slot.container 11 sculk_catalyst 5
replaceitem block ~4 ~-2 ~4 slot.container 12 sculk_sensor 6
replaceitem block ~4 ~-2 ~4 slot.container 13 recovery_compass 1
replaceitem block ~4 ~-2 ~4 slot.container 14 diamond_leggings 1
loot insert ~4 ~-2 ~4 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 deepslate_bricks []
fill ~-6 ~1 ~-6 ~-6 ~4 ~-6 chiseled_deepslate []
fill ~-6 ~1 ~6 ~-6 ~4 ~6 chiseled_deepslate []
fill ~-4 ~1 ~-6 ~-4 ~4 ~-6 chiseled_deepslate []
fill ~-4 ~1 ~6 ~-4 ~4 ~6 chiseled_deepslate []
fill ~-2 ~1 ~-6 ~-2 ~4 ~-6 chiseled_deepslate []
fill ~-2 ~1 ~6 ~-2 ~4 ~6 chiseled_deepslate []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 chiseled_deepslate []
fill ~0 ~1 ~6 ~0 ~4 ~6 chiseled_deepslate []
fill ~2 ~1 ~-6 ~2 ~4 ~-6 chiseled_deepslate []
fill ~2 ~1 ~6 ~2 ~4 ~6 chiseled_deepslate []
fill ~4 ~1 ~-6 ~4 ~4 ~-6 chiseled_deepslate []
fill ~4 ~1 ~6 ~4 ~4 ~6 chiseled_deepslate []
fill ~6 ~1 ~-6 ~6 ~4 ~-6 chiseled_deepslate []
fill ~6 ~1 ~6 ~6 ~4 ~6 chiseled_deepslate []
fill ~-6 ~1 ~-4 ~-6 ~4 ~-4 chiseled_deepslate []
fill ~6 ~1 ~-4 ~6 ~4 ~-4 chiseled_deepslate []
fill ~-6 ~1 ~-2 ~-6 ~4 ~-2 chiseled_deepslate []
fill ~6 ~1 ~-2 ~6 ~4 ~-2 chiseled_deepslate []
fill ~-6 ~1 ~0 ~-6 ~4 ~0 chiseled_deepslate []
fill ~6 ~1 ~0 ~6 ~4 ~0 chiseled_deepslate []
fill ~-6 ~1 ~2 ~-6 ~4 ~2 chiseled_deepslate []
fill ~6 ~1 ~2 ~6 ~4 ~2 chiseled_deepslate []
fill ~-6 ~1 ~4 ~-6 ~4 ~4 chiseled_deepslate []
fill ~6 ~1 ~4 ~6 ~4 ~4 chiseled_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 polished_deepslate_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~3 ~-8 chiseled_deepslate []
setblock ~-8 ~4 ~-8 soul_lantern []
fill ~-8 ~0 ~8 ~-8 ~3 ~8 chiseled_deepslate []
setblock ~-8 ~4 ~8 soul_lantern []
fill ~8 ~0 ~-8 ~8 ~3 ~-8 chiseled_deepslate []
setblock ~8 ~4 ~-8 soul_lantern []
fill ~8 ~0 ~8 ~8 ~3 ~8 chiseled_deepslate []
setblock ~8 ~4 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x9x4) ---
fill ~-2 ~0 ~9 ~0 ~6 ~9 chiseled_deepslate []
setblock ~-1 ~1 ~9 sculk_catalyst []
setblock ~-1 ~7 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 18
replaceitem block ~5 ~1 ~4 slot.container 9 soul_lantern 11
replaceitem block ~5 ~1 ~4 slot.container 10 enchanted_golden_apple 7
replaceitem block ~5 ~1 ~4 slot.container 11 golden_apple 3
replaceitem block ~5 ~1 ~4 slot.container 12 experience_bottle 13
replaceitem block ~5 ~1 ~4 slot.container 13 diamond 6
replaceitem block ~5 ~1 ~4 slot.container 14 amethyst_shard 11
loot insert ~5 ~1 ~4 loot "rsf/deep_dark"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 rotten_flesh 18
replaceitem block ~-5 ~1 ~5 slot.container 1 phantom_membrane 11
replaceitem block ~-5 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~5 slot.container 3 string 13
replaceitem block ~-5 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~-5 ~1 ~5 slot.container 5 echo_shard 9
replaceitem block ~-5 ~1 ~5 slot.container 9 soul_lantern 9
replaceitem block ~-5 ~1 ~5 slot.container 10 enchanted_golden_apple 5
replaceitem block ~-5 ~1 ~5 slot.container 11 golden_apple 8
replaceitem block ~-5 ~1 ~5 slot.container 12 experience_bottle 18
replaceitem block ~-5 ~1 ~5 slot.container 13 diamond 4
replaceitem block ~-5 ~1 ~5 slot.container 14 amethyst_shard 9
loot insert ~-5 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~5 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

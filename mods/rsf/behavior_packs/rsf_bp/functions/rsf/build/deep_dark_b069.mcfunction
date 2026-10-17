# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3397/4224 | 主题内编号: b069/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·藤蔓侵蚀十字修道院 (deep_dark_ruin_overgrown_abbey)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sculk []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 cobbled_deepslate []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 deepslate_bricks []
setblock ~0 ~-5 ~0 sculk_sensor []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 spider_eye 10
replaceitem block ~0 ~-2 ~-3 slot.container 1 echo_shard 11
replaceitem block ~0 ~-2 ~-3 slot.container 2 ender_pearl 10
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 19
replaceitem block ~0 ~-2 ~-3 slot.container 4 rotten_flesh 12
replaceitem block ~0 ~-2 ~-3 slot.container 5 phantom_membrane 5
replaceitem block ~0 ~-2 ~-3 slot.container 9 recovery_compass 1
replaceitem block ~0 ~-2 ~-3 slot.container 10 diamond_leggings 1
replaceitem block ~0 ~-2 ~-3 slot.container 11 soul_lantern 6
replaceitem block ~0 ~-2 ~-3 slot.container 12 enchanted_golden_apple 2
replaceitem block ~0 ~-2 ~-3 slot.container 13 golden_apple 5
replaceitem block ~0 ~-2 ~-3 slot.container 14 experience_bottle 15
loot insert ~0 ~-2 ~-3 loot "rsf/deep_dark"
loot insert ~0 ~-2 ~-3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~5 ~5 polished_deepslate []
fill ~-6 ~1 ~-2 ~6 ~5 ~2 polished_deepslate []
fill ~-1 ~1 ~-4 ~1 ~4 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~4 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 polished_deepslate_wall []
setblock ~6 ~2 ~0 polished_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 polished_deepslate_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 deepslate_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 polished_deepslate_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-4 ~0 ~6 ~-2 ~5 ~6 chiseled_deepslate []
setblock ~-3 ~1 ~6 sculk_catalyst []
setblock ~-3 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 1 string 18
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 3 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~3 slot.container 5 bone 14
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~5 ~1 ~3 slot.container 10 experience_bottle 15
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 8
replaceitem block ~5 ~1 ~3 slot.container 12 amethyst_shard 13
replaceitem block ~5 ~1 ~3 slot.container 13 sculk_catalyst 8
replaceitem block ~5 ~1 ~3 slot.container 14 sculk_sensor 2
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 1 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~-5 ~1 ~4 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 10 experience_bottle 13
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 6
replaceitem block ~-5 ~1 ~4 slot.container 12 amethyst_shard 11
replaceitem block ~-5 ~1 ~4 slot.container 13 sculk_catalyst 6
replaceitem block ~-5 ~1 ~4 slot.container 14 sculk_sensor 7
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

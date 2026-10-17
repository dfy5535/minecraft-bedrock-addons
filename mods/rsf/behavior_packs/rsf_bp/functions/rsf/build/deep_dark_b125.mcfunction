# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3453/4224 | 主题内编号: b125/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·巨型阶梯金字塔神王殿 (deep_dark_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 polished_deepslate [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 polished_deepslate [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_deepslate_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sculk []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobbled_deepslate []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 diamond_block []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 gunpowder 12
replaceitem block ~5 ~-3 ~0 slot.container 1 string 15
replaceitem block ~5 ~-3 ~0 slot.container 2 spider_eye 10
replaceitem block ~5 ~-3 ~0 slot.container 3 echo_shard 11
replaceitem block ~5 ~-3 ~0 slot.container 4 ender_pearl 10
replaceitem block ~5 ~-3 ~0 slot.container 5 bone 19
replaceitem block ~5 ~-3 ~0 slot.container 9 sculk_catalyst 2
replaceitem block ~5 ~-3 ~0 slot.container 10 sculk_sensor 3
replaceitem block ~5 ~-3 ~0 slot.container 11 recovery_compass 1
replaceitem block ~5 ~-3 ~0 slot.container 12 diamond_leggings 1
replaceitem block ~5 ~-3 ~0 slot.container 13 soul_lantern 10
replaceitem block ~5 ~-3 ~0 slot.container 14 enchanted_golden_apple 6
loot insert ~5 ~-3 ~0 loot "rsf/deep_dark"
loot insert ~5 ~-3 ~0 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 polished_deepslate []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 deepslate_bricks []
fill ~-5 ~5 ~-4 ~5 ~8 ~4 cobbled_deepslate []
fill ~-5 ~1 ~-4 ~5 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 polished_deepslate_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~9 ~-6 ~7 ~9 ~6 deepslate_bricks []
fill ~-6 ~10 ~-5 ~6 ~10 ~5 cobbled_deepslate []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 diamond_block []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_deepslate []
setblock ~0 ~4 ~-8 sculk_sensor []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_deepslate []
setblock ~0 ~4 ~8 sculk_sensor []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 chiseled_deepslate []
setblock ~-9 ~4 ~0 sculk_sensor []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 chiseled_deepslate []
setblock ~9 ~4 ~0 sculk_sensor []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x9x4) ---
fill ~-1 ~0 ~9 ~1 ~6 ~9 chiseled_deepslate []
setblock ~0 ~1 ~9 sculk_catalyst []
setblock ~0 ~7 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~6 ~1 ~4 slot.container 1 string 18
replaceitem block ~6 ~1 ~4 slot.container 2 spider_eye 13
replaceitem block ~6 ~1 ~4 slot.container 3 echo_shard 6
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~6 ~1 ~4 slot.container 5 bone 14
replaceitem block ~6 ~1 ~4 slot.container 9 soul_lantern 8
replaceitem block ~6 ~1 ~4 slot.container 10 enchanted_golden_apple 4
replaceitem block ~6 ~1 ~4 slot.container 11 golden_apple 7
replaceitem block ~6 ~1 ~4 slot.container 12 experience_bottle 17
replaceitem block ~6 ~1 ~4 slot.container 13 diamond 10
replaceitem block ~6 ~1 ~4 slot.container 14 amethyst_shard 8
loot insert ~6 ~1 ~4 loot "rsf/deep_dark"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 1 echo_shard 9
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 8
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 4 rotten_flesh 18
replaceitem block ~-6 ~1 ~5 slot.container 5 phantom_membrane 11
replaceitem block ~-6 ~1 ~5 slot.container 9 soul_lantern 6
replaceitem block ~-6 ~1 ~5 slot.container 10 enchanted_golden_apple 2
replaceitem block ~-6 ~1 ~5 slot.container 11 golden_apple 5
replaceitem block ~-6 ~1 ~5 slot.container 12 experience_bottle 15
replaceitem block ~-6 ~1 ~5 slot.container 13 diamond 8
replaceitem block ~-6 ~1 ~5 slot.container 14 amethyst_shard 13
loot insert ~-6 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~5 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

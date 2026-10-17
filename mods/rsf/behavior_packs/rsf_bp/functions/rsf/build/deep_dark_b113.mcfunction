# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3441/4224 | 主题内编号: b113/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·八角全采光生态温室 (deep_dark_conservatory_glass_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_deepslate [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sculk []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 deepslate_bricks []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-2 ~2 slot.container 0 rotten_flesh 12
replaceitem block ~-3 ~-2 ~2 slot.container 1 phantom_membrane 5
replaceitem block ~-3 ~-2 ~2 slot.container 2 gunpowder 12
replaceitem block ~-3 ~-2 ~2 slot.container 3 string 15
replaceitem block ~-3 ~-2 ~2 slot.container 4 spider_eye 10
replaceitem block ~-3 ~-2 ~2 slot.container 5 echo_shard 11
replaceitem block ~-3 ~-2 ~2 slot.container 9 soul_lantern 11
replaceitem block ~-3 ~-2 ~2 slot.container 10 enchanted_golden_apple 7
replaceitem block ~-3 ~-2 ~2 slot.container 11 golden_apple 3
replaceitem block ~-3 ~-2 ~2 slot.container 12 experience_bottle 13
replaceitem block ~-3 ~-2 ~2 slot.container 13 diamond 6
replaceitem block ~-3 ~-2 ~2 slot.container 14 amethyst_shard 11
loot insert ~-3 ~-2 ~2 loot "rsf/deep_dark"
loot insert ~-3 ~-2 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 polished_deepslate []
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

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 deepslate_bricks []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 deepslate_bricks []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 polished_deepslate_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x2) ---
fill ~1 ~0 ~7 ~3 ~4 ~7 chiseled_deepslate []
setblock ~2 ~1 ~7 sculk_catalyst []
setblock ~2 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~2 slot.container 1 bone 14
replaceitem block ~4 ~1 ~2 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 3 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~2 slot.container 5 string 18
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 8
replaceitem block ~4 ~1 ~2 slot.container 10 amethyst_shard 13
replaceitem block ~4 ~1 ~2 slot.container 11 sculk_catalyst 8
replaceitem block ~4 ~1 ~2 slot.container 12 sculk_sensor 2
replaceitem block ~4 ~1 ~2 slot.container 13 recovery_compass 1
replaceitem block ~4 ~1 ~2 slot.container 14 diamond_leggings 1
loot insert ~4 ~1 ~2 loot "rsf/deep_dark"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 rotten_flesh 18
replaceitem block ~-4 ~1 ~3 slot.container 1 phantom_membrane 11
replaceitem block ~-4 ~1 ~3 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~3 slot.container 3 string 13
replaceitem block ~-4 ~1 ~3 slot.container 4 spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 5 echo_shard 9
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 6
replaceitem block ~-4 ~1 ~3 slot.container 10 amethyst_shard 11
replaceitem block ~-4 ~1 ~3 slot.container 11 sculk_catalyst 6
replaceitem block ~-4 ~1 ~3 slot.container 12 sculk_sensor 7
replaceitem block ~-4 ~1 ~3 slot.container 13 recovery_compass 1
replaceitem block ~-4 ~1 ~3 slot.container 14 diamond_leggings 1
loot insert ~-4 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~3 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

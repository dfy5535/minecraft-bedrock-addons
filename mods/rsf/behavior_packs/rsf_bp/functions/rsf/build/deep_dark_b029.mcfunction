# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3357/4224 | 主题内编号: b029/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·奥术星象琉璃塔 (deep_dark_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_deepslate [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sculk []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 cobbled_deepslate []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 diamond_block []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-2 ~0 slot.container 0 gunpowder 12
replaceitem block ~3 ~-2 ~0 slot.container 1 string 15
replaceitem block ~3 ~-2 ~0 slot.container 2 spider_eye 10
replaceitem block ~3 ~-2 ~0 slot.container 3 echo_shard 11
replaceitem block ~3 ~-2 ~0 slot.container 4 ender_pearl 10
replaceitem block ~3 ~-2 ~0 slot.container 5 bone 19
replaceitem block ~3 ~-2 ~0 slot.container 9 recovery_compass 1
replaceitem block ~3 ~-2 ~0 slot.container 10 diamond_leggings 1
replaceitem block ~3 ~-2 ~0 slot.container 11 soul_lantern 10
replaceitem block ~3 ~-2 ~0 slot.container 12 enchanted_golden_apple 6
replaceitem block ~3 ~-2 ~0 slot.container 13 golden_apple 9
replaceitem block ~3 ~-2 ~0 slot.container 14 experience_bottle 12
loot insert ~3 ~-2 ~0 loot "rsf/deep_dark"
loot insert ~3 ~-2 ~0 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 polished_deepslate []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~9 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 deepslate_bricks []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 glass []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_deepslate []
setblock ~0 ~4 ~-6 sculk_sensor []
setblock ~0 ~5 ~-6 soul_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_deepslate []
setblock ~0 ~4 ~6 sculk_sensor []
setblock ~0 ~5 ~6 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_deepslate []
setblock ~-7 ~4 ~0 sculk_sensor []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_deepslate []
setblock ~7 ~4 ~0 sculk_sensor []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-3 ~0 ~7 ~-1 ~5 ~7 chiseled_deepslate []
setblock ~-2 ~1 ~7 sculk_catalyst []
setblock ~-2 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 gunpowder 15
replaceitem block ~4 ~1 ~2 slot.container 1 string 18
replaceitem block ~4 ~1 ~2 slot.container 2 spider_eye 13
replaceitem block ~4 ~1 ~2 slot.container 3 echo_shard 6
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 5
replaceitem block ~4 ~1 ~2 slot.container 5 bone 14
replaceitem block ~4 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~4 ~1 ~2 slot.container 10 experience_bottle 17
replaceitem block ~4 ~1 ~2 slot.container 11 diamond 10
replaceitem block ~4 ~1 ~2 slot.container 12 amethyst_shard 8
replaceitem block ~4 ~1 ~2 slot.container 13 sculk_catalyst 3
replaceitem block ~4 ~1 ~2 slot.container 14 sculk_sensor 4
loot insert ~4 ~1 ~2 loot "rsf/deep_dark"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 1 echo_shard 9
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~-4 ~1 ~3 slot.container 5 phantom_membrane 11
replaceitem block ~-4 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~-4 ~1 ~3 slot.container 10 experience_bottle 15
replaceitem block ~-4 ~1 ~3 slot.container 11 diamond 8
replaceitem block ~-4 ~1 ~3 slot.container 12 amethyst_shard 13
replaceitem block ~-4 ~1 ~3 slot.container 13 sculk_catalyst 8
replaceitem block ~-4 ~1 ~3 slot.container 14 sculk_sensor 2
loot insert ~-4 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~3 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

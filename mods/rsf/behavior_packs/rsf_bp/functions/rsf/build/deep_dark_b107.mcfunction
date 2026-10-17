# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3435/4224 | 主题内编号: b107/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·观星高塔与秘术地宫 (deep_dark_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_tiles []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 sculk_catalyst []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 rotten_flesh 12
replaceitem block ~3 ~-3 ~0 slot.container 1 phantom_membrane 5
replaceitem block ~3 ~-3 ~0 slot.container 2 gunpowder 12
replaceitem block ~3 ~-3 ~0 slot.container 3 string 15
replaceitem block ~3 ~-3 ~0 slot.container 4 spider_eye 10
replaceitem block ~3 ~-3 ~0 slot.container 5 echo_shard 11
replaceitem block ~3 ~-3 ~0 slot.container 9 golden_apple 6
replaceitem block ~3 ~-3 ~0 slot.container 10 experience_bottle 16
replaceitem block ~3 ~-3 ~0 slot.container 11 diamond 9
replaceitem block ~3 ~-3 ~0 slot.container 12 amethyst_shard 14
replaceitem block ~3 ~-3 ~0 slot.container 13 sculk_catalyst 2
replaceitem block ~3 ~-3 ~0 slot.container 14 sculk_sensor 3
loot insert ~3 ~-3 ~0 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~0 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_tile_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~8 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 deepslate_tiles []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 glass []
fill ~-3 ~9 ~-2 ~3 ~9 ~2 air []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 chiseled_deepslate []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 chiseled_deepslate []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 chiseled_deepslate []
fill ~6 ~0 ~2 ~6 ~7 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x6) ---
fill ~0 ~0 ~7 ~2 ~8 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 1 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~2 slot.container 3 string 18
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 13
replaceitem block ~4 ~1 ~2 slot.container 5 echo_shard 6
replaceitem block ~4 ~1 ~2 slot.container 9 sculk_catalyst 7
replaceitem block ~4 ~1 ~2 slot.container 10 sculk_sensor 8
replaceitem block ~4 ~1 ~2 slot.container 11 recovery_compass 1
replaceitem block ~4 ~1 ~2 slot.container 12 diamond_leggings 1
replaceitem block ~4 ~1 ~2 slot.container 13 soul_lantern 8
replaceitem block ~4 ~1 ~2 slot.container 14 enchanted_golden_apple 4
loot insert ~4 ~1 ~2 loot "rsf/deep_dark"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~3 slot.container 1 string 13
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 3 echo_shard 9
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 9 sculk_catalyst 5
replaceitem block ~-4 ~1 ~3 slot.container 10 sculk_sensor 6
replaceitem block ~-4 ~1 ~3 slot.container 11 recovery_compass 1
replaceitem block ~-4 ~1 ~3 slot.container 12 diamond_leggings 1
replaceitem block ~-4 ~1 ~3 slot.container 13 soul_lantern 6
replaceitem block ~-4 ~1 ~3 slot.container 14 enchanted_golden_apple 2
loot insert ~-4 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~3 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

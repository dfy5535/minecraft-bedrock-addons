# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3419/4224 | 主题内编号: b091/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·跨水拱桥水神小祠 (deep_dark_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x9 | 地上高度 6格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~8 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-2 ~5 ~-1 ~2 deepslate_tiles []
fill ~-4 ~-4 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~1 slot.container 0 gunpowder 12
replaceitem block ~-4 ~-2 ~1 slot.container 1 string 15
replaceitem block ~-4 ~-2 ~1 slot.container 2 spider_eye 10
replaceitem block ~-4 ~-2 ~1 slot.container 3 echo_shard 11
replaceitem block ~-4 ~-2 ~1 slot.container 4 ender_pearl 10
replaceitem block ~-4 ~-2 ~1 slot.container 5 bone 19
replaceitem block ~-4 ~-2 ~1 slot.container 9 diamond 8
replaceitem block ~-4 ~-2 ~1 slot.container 10 amethyst_shard 13
replaceitem block ~-4 ~-2 ~1 slot.container 11 sculk_catalyst 8
replaceitem block ~-4 ~-2 ~1 slot.container 12 sculk_sensor 2
replaceitem block ~-4 ~-2 ~1 slot.container 13 recovery_compass 1
replaceitem block ~-4 ~-2 ~1 slot.container 14 diamond_leggings 1
loot insert ~-4 ~-2 ~1 loot "rsf/deep_dark"
loot insert ~-4 ~-2 ~1 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-3 ~6 ~6 ~3 deepslate_bricks []
fill ~-5 ~1 ~-2 ~5 ~5 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 deepslate_brick_slab []
fill ~-5 ~7 ~-2 ~5 ~8 ~2 deepslate_tiles []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 deepslate_tile_slab []
setblock ~0 ~10 ~0 sculk_catalyst []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 deepslate_tiles []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 soul_lantern []
setblock ~2 ~4 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~0 ~0 ~5 ~2 ~7 ~5 chiseled_deepslate []
setblock ~1 ~1 ~5 sculk_catalyst []
setblock ~1 ~8 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~1 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~1 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~1 slot.container 3 string 18
replaceitem block ~5 ~1 ~1 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~1 slot.container 5 echo_shard 6
replaceitem block ~5 ~1 ~1 slot.container 9 recovery_compass 1
replaceitem block ~5 ~1 ~1 slot.container 10 diamond_leggings 1
replaceitem block ~5 ~1 ~1 slot.container 11 soul_lantern 11
replaceitem block ~5 ~1 ~1 slot.container 12 enchanted_golden_apple 7
replaceitem block ~5 ~1 ~1 slot.container 13 golden_apple 3
replaceitem block ~5 ~1 ~1 slot.container 14 experience_bottle 13
loot insert ~5 ~1 ~1 loot "rsf/deep_dark"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~2 slot.container 1 string 13
replaceitem block ~-5 ~1 ~2 slot.container 2 spider_eye 8
replaceitem block ~-5 ~1 ~2 slot.container 3 echo_shard 9
replaceitem block ~-5 ~1 ~2 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~2 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~2 slot.container 9 recovery_compass 1
replaceitem block ~-5 ~1 ~2 slot.container 10 diamond_leggings 1
replaceitem block ~-5 ~1 ~2 slot.container 11 soul_lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 12 enchanted_golden_apple 5
replaceitem block ~-5 ~1 ~2 slot.container 13 golden_apple 8
replaceitem block ~-5 ~1 ~2 slot.container 14 experience_bottle 18
loot insert ~-5 ~1 ~2 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~2 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

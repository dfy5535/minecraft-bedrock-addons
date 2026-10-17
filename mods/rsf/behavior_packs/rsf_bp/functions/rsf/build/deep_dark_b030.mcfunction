# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3358/4224 | 主题内编号: b030/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双坡顶驻军卫戍塔 (deep_dark_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 cobbled_deepslate []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 soul_lantern []
setblock ~3 ~-5 ~-2 soul_lantern []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 echo_shard 11
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 10
replaceitem block ~3 ~-3 ~2 slot.container 2 bone 19
replaceitem block ~3 ~-3 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~3 ~-3 ~2 slot.container 4 phantom_membrane 5
replaceitem block ~3 ~-3 ~2 slot.container 5 gunpowder 12
replaceitem block ~3 ~-3 ~2 slot.container 9 sculk_sensor 2
replaceitem block ~3 ~-3 ~2 slot.container 10 recovery_compass 1
replaceitem block ~3 ~-3 ~2 slot.container 11 diamond_leggings 1
replaceitem block ~3 ~-3 ~2 slot.container 12 soul_lantern 9
replaceitem block ~3 ~-3 ~2 slot.container 13 enchanted_golden_apple 5
replaceitem block ~3 ~-3 ~2 slot.container 14 golden_apple 8
loot insert ~3 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~8 ~4 cobbled_deepslate []
fill ~-5 ~1 ~0 ~5 ~7 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~-1 ~7 ~3 air []
fill ~-1 ~1 ~1 ~4 ~6 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~9 ~-5 ~-6 ~9 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-5 ~6 ~9 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~10 ~-4 ~-5 ~10 ~4 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~5 ~10 ~-4 ~5 ~10 ~4 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-4 ~10 ~-4 ~4 ~10 ~4 deepslate_brick_slab []
fill ~0 ~11 ~-5 ~0 ~11 ~5 deepslate_tiles []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 deepslate_bricks []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x5x4) ---
fill ~-2 ~0 ~5 ~0 ~6 ~5 chiseled_deepslate []
setblock ~-1 ~1 ~5 sculk_catalyst []
setblock ~-1 ~7 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 string 18
replaceitem block ~-4 ~1 ~2 slot.container 1 spider_eye 13
replaceitem block ~-4 ~1 ~2 slot.container 2 echo_shard 6
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 5
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 9 amethyst_shard 13
replaceitem block ~-4 ~1 ~2 slot.container 10 sculk_catalyst 8
replaceitem block ~-4 ~1 ~2 slot.container 11 sculk_sensor 2
replaceitem block ~-4 ~1 ~2 slot.container 12 recovery_compass 1
replaceitem block ~-4 ~1 ~2 slot.container 13 diamond_leggings 1
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_lantern 9
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3454/4224 | 主题内编号: b126/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子主塔天桥宫殿与暗牢 (deep_dark_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-8 ~1 ~-6 ~8 ~10 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 cobbled_deepslate []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 soul_lantern []
setblock ~5 ~-6 ~-3 soul_lantern []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 echo_shard 11
replaceitem block ~5 ~-4 ~3 slot.container 1 ender_pearl 10
replaceitem block ~5 ~-4 ~3 slot.container 2 bone 19
replaceitem block ~5 ~-4 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~-4 ~3 slot.container 4 phantom_membrane 5
replaceitem block ~5 ~-4 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~-4 ~3 slot.container 9 amethyst_shard 13
replaceitem block ~5 ~-4 ~3 slot.container 10 sculk_catalyst 8
replaceitem block ~5 ~-4 ~3 slot.container 11 sculk_sensor 2
replaceitem block ~5 ~-4 ~3 slot.container 12 recovery_compass 1
replaceitem block ~5 ~-4 ~3 slot.container 13 diamond_leggings 1
replaceitem block ~5 ~-4 ~3 slot.container 14 soul_lantern 9
loot insert ~5 ~-4 ~3 loot "rsf/deep_dark"
loot insert ~5 ~-4 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~9 ~5 cobbled_deepslate []
fill ~2 ~1 ~-5 ~7 ~9 ~5 cobbled_deepslate []
fill ~-6 ~1 ~-4 ~-3 ~8 ~4 air []
fill ~3 ~1 ~-4 ~6 ~8 ~4 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 deepslate_tiles []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 deepslate_tiles []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobbled_deepslate []
fill ~0 ~14 ~0 ~0 ~17 ~0 sculk_sensor []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 deepslate_tiles []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_lantern []
setblock ~2 ~4 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~0 ~0 ~6 ~2 ~7 ~6 chiseled_deepslate []
setblock ~1 ~1 ~6 sculk_catalyst []
setblock ~1 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 string 18
replaceitem block ~-6 ~1 ~3 slot.container 1 spider_eye 13
replaceitem block ~-6 ~1 ~3 slot.container 2 echo_shard 6
replaceitem block ~-6 ~1 ~3 slot.container 3 ender_pearl 5
replaceitem block ~-6 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~3 slot.container 9 experience_bottle 15
replaceitem block ~-6 ~1 ~3 slot.container 10 diamond 8
replaceitem block ~-6 ~1 ~3 slot.container 11 amethyst_shard 13
replaceitem block ~-6 ~1 ~3 slot.container 12 sculk_catalyst 8
replaceitem block ~-6 ~1 ~3 slot.container 13 sculk_sensor 2
replaceitem block ~-6 ~1 ~3 slot.container 14 recovery_compass 1
loot insert ~-6 ~1 ~3 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

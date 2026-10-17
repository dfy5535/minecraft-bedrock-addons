# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3390/4224 | 主题内编号: b062/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·下沉阶梯深渊藏骨堂 (deep_dark_crypt_sunken_ossuary)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 6格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 cobbled_deepslate []
fill ~-5 ~-7 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-7 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-7 ~3 soul_lantern []
setblock ~4 ~-7 ~-3 soul_lantern []
setblock ~4 ~-5 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-5 ~3 slot.container 0 echo_shard 11
replaceitem block ~4 ~-5 ~3 slot.container 1 ender_pearl 10
replaceitem block ~4 ~-5 ~3 slot.container 2 bone 19
replaceitem block ~4 ~-5 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~4 ~-5 ~3 slot.container 4 phantom_membrane 5
replaceitem block ~4 ~-5 ~3 slot.container 5 gunpowder 12
replaceitem block ~4 ~-5 ~3 slot.container 9 experience_bottle 16
replaceitem block ~4 ~-5 ~3 slot.container 10 diamond 9
replaceitem block ~4 ~-5 ~3 slot.container 11 amethyst_shard 14
replaceitem block ~4 ~-5 ~3 slot.container 12 sculk_catalyst 2
replaceitem block ~4 ~-5 ~3 slot.container 13 sculk_sensor 3
replaceitem block ~4 ~-5 ~3 slot.container 14 recovery_compass 1
loot insert ~4 ~-5 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-5 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 cobbled_deepslate []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 deepslate_tiles []
fill ~0 ~1 ~-5 ~0 ~2 ~5 deepslate_tiles []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 deepslate_brick_slab []
fill ~-1 ~3 ~-1 ~2 ~4 ~2 air []
fill ~-6 ~3 ~-1 ~-6 ~4 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 deepslate_brick_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x8x6) ---
fill ~1 ~0 ~8 ~3 ~8 ~8 chiseled_deepslate []
setblock ~2 ~1 ~8 sculk_catalyst []
setblock ~2 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 18
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 2 echo_shard 6
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 9 enchanted_golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 11 experience_bottle 16
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 9
replaceitem block ~-5 ~1 ~3 slot.container 13 amethyst_shard 14
replaceitem block ~-5 ~1 ~3 slot.container 14 sculk_catalyst 2
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

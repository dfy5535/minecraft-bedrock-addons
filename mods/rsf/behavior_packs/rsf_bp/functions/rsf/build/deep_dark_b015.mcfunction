# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3343/4224 | 主题内编号: b015/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·竖井阶梯深渊地牢 (deep_dark_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 5格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 soul_lantern []
setblock ~3 ~-6 ~-2 soul_lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 ender_pearl 10
replaceitem block ~3 ~-4 ~2 slot.container 1 bone 19
replaceitem block ~3 ~-4 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~3 ~-4 ~2 slot.container 3 phantom_membrane 5
replaceitem block ~3 ~-4 ~2 slot.container 4 gunpowder 12
replaceitem block ~3 ~-4 ~2 slot.container 5 string 15
replaceitem block ~3 ~-4 ~2 slot.container 9 golden_apple 9
replaceitem block ~3 ~-4 ~2 slot.container 10 experience_bottle 12
replaceitem block ~3 ~-4 ~2 slot.container 11 diamond 5
replaceitem block ~3 ~-4 ~2 slot.container 12 amethyst_shard 10
replaceitem block ~3 ~-4 ~2 slot.container 13 sculk_catalyst 5
replaceitem block ~3 ~-4 ~2 slot.container 14 sculk_sensor 6
loot insert ~3 ~-4 ~2 loot "rsf/deep_dark"
loot insert ~3 ~-4 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_bricks []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 deepslate_tiles []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 deepslate_tiles []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~7 ~-2 ~2 ~8 ~2 deepslate_tiles []
fill ~-1 ~9 ~-1 ~1 ~11 ~1 deepslate_bricks []
fill ~0 ~12 ~0 ~0 ~15 ~0 sculk_catalyst []
setblock ~0 ~16 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 chiseled_deepslate []
setblock ~-7 ~4 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 chiseled_deepslate []
setblock ~-7 ~4 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 chiseled_deepslate []
setblock ~7 ~4 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 chiseled_deepslate []
setblock ~7 ~4 ~6 soul_lantern []

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
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 13
replaceitem block ~4 ~1 ~2 slot.container 1 echo_shard 6
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~2 slot.container 3 bone 14
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 9 soul_lantern 10
replaceitem block ~4 ~1 ~2 slot.container 10 enchanted_golden_apple 6
replaceitem block ~4 ~1 ~2 slot.container 11 golden_apple 9
replaceitem block ~4 ~1 ~2 slot.container 12 experience_bottle 12
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 5
replaceitem block ~4 ~1 ~2 slot.container 14 amethyst_shard 10
loot insert ~4 ~1 ~2 loot "rsf/deep_dark"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~-4 ~1 ~3 slot.container 3 phantom_membrane 11
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~3 slot.container 5 string 13
replaceitem block ~-4 ~1 ~3 slot.container 9 soul_lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 10 enchanted_golden_apple 4
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 12 experience_bottle 17
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 10
replaceitem block ~-4 ~1 ~3 slot.container 14 amethyst_shard 8
loot insert ~-4 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~3 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

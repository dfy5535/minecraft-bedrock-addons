# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3443/4224 | 主题内编号: b115/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·阶梯立体生态种植台 (deep_dark_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 water []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 gunpowder 12
replaceitem block ~-4 ~-2 ~3 slot.container 1 string 15
replaceitem block ~-4 ~-2 ~3 slot.container 2 spider_eye 10
replaceitem block ~-4 ~-2 ~3 slot.container 3 echo_shard 11
replaceitem block ~-4 ~-2 ~3 slot.container 4 ender_pearl 10
replaceitem block ~-4 ~-2 ~3 slot.container 5 bone 19
replaceitem block ~-4 ~-2 ~3 slot.container 9 sculk_catalyst 2
replaceitem block ~-4 ~-2 ~3 slot.container 10 sculk_sensor 3
replaceitem block ~-4 ~-2 ~3 slot.container 11 recovery_compass 1
replaceitem block ~-4 ~-2 ~3 slot.container 12 diamond_leggings 1
replaceitem block ~-4 ~-2 ~3 slot.container 13 soul_lantern 10
replaceitem block ~-4 ~-2 ~3 slot.container 14 enchanted_golden_apple 6
loot insert ~-4 ~-2 ~3 loot "rsf/deep_dark"
loot insert ~-4 ~-2 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 deepslate_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 deepslate_tiles []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 deepslate_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~5 ~-5 ~-6 ~7 ~-5 chiseled_deepslate []
setblock ~-6 ~8 ~-5 soul_lantern []
fill ~-6 ~5 ~5 ~-6 ~7 ~5 chiseled_deepslate []
setblock ~-6 ~8 ~5 soul_lantern []
fill ~6 ~5 ~-5 ~6 ~7 ~-5 chiseled_deepslate []
setblock ~6 ~8 ~-5 soul_lantern []
fill ~6 ~5 ~5 ~6 ~7 ~5 chiseled_deepslate []
setblock ~6 ~8 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 deepslate_brick_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~0 ~0 ~7 ~2 ~6 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 3 string 18
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 5 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 9 soul_lantern 12
replaceitem block ~5 ~1 ~3 slot.container 10 enchanted_golden_apple 1
replaceitem block ~5 ~1 ~3 slot.container 11 golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 12 experience_bottle 14
replaceitem block ~5 ~1 ~3 slot.container 13 diamond 7
replaceitem block ~5 ~1 ~3 slot.container 14 amethyst_shard 12
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 3 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 10 enchanted_golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 9
replaceitem block ~-5 ~1 ~4 slot.container 12 experience_bottle 12
replaceitem block ~-5 ~1 ~4 slot.container 13 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 14 amethyst_shard 10
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

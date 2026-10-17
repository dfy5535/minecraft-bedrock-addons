# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3402/4224 | 主题内编号: b074/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·十字四象图腾柱阵 (deep_dark_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 sculk_sensor []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 bone 19
replaceitem block ~4 ~-3 ~0 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~-3 ~0 slot.container 2 phantom_membrane 5
replaceitem block ~4 ~-3 ~0 slot.container 3 gunpowder 12
replaceitem block ~4 ~-3 ~0 slot.container 4 string 15
replaceitem block ~4 ~-3 ~0 slot.container 5 spider_eye 10
replaceitem block ~4 ~-3 ~0 slot.container 9 experience_bottle 17
replaceitem block ~4 ~-3 ~0 slot.container 10 diamond 10
replaceitem block ~4 ~-3 ~0 slot.container 11 amethyst_shard 8
replaceitem block ~4 ~-3 ~0 slot.container 12 sculk_catalyst 3
replaceitem block ~4 ~-3 ~0 slot.container 13 sculk_sensor 4
replaceitem block ~4 ~-3 ~0 slot.container 14 recovery_compass 1
loot insert ~4 ~-3 ~0 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~0 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 cobbled_deepslate []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 deepslate_brick_wall []
setblock ~6 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 chiseled_deepslate []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 chiseled_deepslate []
setblock ~-6 ~9 ~5 soul_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 chiseled_deepslate []
setblock ~6 ~9 ~-5 soul_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 chiseled_deepslate []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 chiseled_deepslate []
setblock ~-8 ~4 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 chiseled_deepslate []
setblock ~-8 ~4 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 chiseled_deepslate []
setblock ~8 ~4 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 chiseled_deepslate []
setblock ~8 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x8x3) ---
fill ~1 ~0 ~8 ~3 ~5 ~8 chiseled_deepslate []
setblock ~2 ~1 ~8 sculk_catalyst []
setblock ~2 ~6 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 18
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 9 sculk_sensor 2
replaceitem block ~-5 ~1 ~3 slot.container 10 recovery_compass 1
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond_leggings 1
replaceitem block ~-5 ~1 ~3 slot.container 12 soul_lantern 9
replaceitem block ~-5 ~1 ~3 slot.container 13 enchanted_golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 8
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

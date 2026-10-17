# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3434/4224 | 主题内编号: b106/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·琉璃穹顶魔药炼金室 (deep_dark_arcane_alchemy_dome)
# 建筑构造: 主体[octagonal_keep] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 deepslate_tiles []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 phantom_membrane 5
replaceitem block ~-3 ~-3 ~2 slot.container 1 gunpowder 12
replaceitem block ~-3 ~-3 ~2 slot.container 2 string 15
replaceitem block ~-3 ~-3 ~2 slot.container 3 spider_eye 10
replaceitem block ~-3 ~-3 ~2 slot.container 4 echo_shard 11
replaceitem block ~-3 ~-3 ~2 slot.container 5 ender_pearl 10
replaceitem block ~-3 ~-3 ~2 slot.container 9 diamond_leggings 1
replaceitem block ~-3 ~-3 ~2 slot.container 10 soul_lantern 12
replaceitem block ~-3 ~-3 ~2 slot.container 11 enchanted_golden_apple 1
replaceitem block ~-3 ~-3 ~2 slot.container 12 golden_apple 4
replaceitem block ~-3 ~-3 ~2 slot.container 13 experience_bottle 14
replaceitem block ~-3 ~-3 ~2 slot.container 14 diamond 7
loot insert ~-3 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~-3 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 cobbled_deepslate []
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
fill ~-5 ~6 ~-4 ~5 ~6 ~4 deepslate_tiles []
fill ~-4 ~7 ~-3 ~4 ~8 ~3 glass []
fill ~-3 ~7 ~-2 ~3 ~7 ~2 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~3 ~-6 chiseled_deepslate []
setblock ~-7 ~4 ~-6 soul_lantern []
fill ~-7 ~0 ~6 ~-7 ~3 ~6 chiseled_deepslate []
setblock ~-7 ~4 ~6 soul_lantern []
fill ~7 ~0 ~-6 ~7 ~3 ~-6 chiseled_deepslate []
setblock ~7 ~4 ~-6 soul_lantern []
fill ~7 ~0 ~6 ~7 ~3 ~6 chiseled_deepslate []
setblock ~7 ~4 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x6x5) ---
fill ~-1 ~0 ~6 ~1 ~7 ~6 chiseled_deepslate []
setblock ~0 ~1 ~6 sculk_catalyst []
setblock ~0 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-4 ~1 ~2 slot.container 4 string 18
replaceitem block ~-4 ~1 ~2 slot.container 5 spider_eye 13
replaceitem block ~-4 ~1 ~2 slot.container 9 experience_bottle 16
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 9
replaceitem block ~-4 ~1 ~2 slot.container 11 amethyst_shard 14
replaceitem block ~-4 ~1 ~2 slot.container 12 sculk_catalyst 2
replaceitem block ~-4 ~1 ~2 slot.container 13 sculk_sensor 3
replaceitem block ~-4 ~1 ~2 slot.container 14 recovery_compass 1
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

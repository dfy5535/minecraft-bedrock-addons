# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3431/4224 | 主题内编号: b103/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·十字全向防御方堡 (deep_dark_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_tiles []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 1 phantom_membrane 5
replaceitem block ~4 ~-2 ~3 slot.container 2 gunpowder 12
replaceitem block ~4 ~-2 ~3 slot.container 3 string 15
replaceitem block ~4 ~-2 ~3 slot.container 4 spider_eye 10
replaceitem block ~4 ~-2 ~3 slot.container 5 echo_shard 11
replaceitem block ~4 ~-2 ~3 slot.container 9 recovery_compass 1
replaceitem block ~4 ~-2 ~3 slot.container 10 diamond_leggings 1
replaceitem block ~4 ~-2 ~3 slot.container 11 soul_lantern 12
replaceitem block ~4 ~-2 ~3 slot.container 12 enchanted_golden_apple 1
replaceitem block ~4 ~-2 ~3 slot.container 13 golden_apple 4
replaceitem block ~4 ~-2 ~3 slot.container 14 experience_bottle 14
loot insert ~4 ~-2 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 deepslate_bricks []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 deepslate_bricks []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 deepslate_brick_wall []
setblock ~6 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 deepslate_tiles []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_brick_wall []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 chiseled_deepslate []
setblock ~-6 ~8 ~-5 soul_lantern []
setblock ~-6 ~7 ~5 chiseled_deepslate []
setblock ~-6 ~8 ~5 soul_lantern []
setblock ~6 ~7 ~-5 chiseled_deepslate []
setblock ~6 ~8 ~-5 soul_lantern []
setblock ~6 ~7 ~5 chiseled_deepslate []
setblock ~6 ~8 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 chiseled_deepslate []
setblock ~-8 ~4 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 chiseled_deepslate []
setblock ~-8 ~4 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 chiseled_deepslate []
setblock ~8 ~4 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 chiseled_deepslate []
setblock ~8 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x2) ---
fill ~0 ~0 ~7 ~2 ~4 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 1 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~3 slot.container 3 bone 14
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 5
replaceitem block ~5 ~1 ~3 slot.container 10 amethyst_shard 10
replaceitem block ~5 ~1 ~3 slot.container 11 sculk_catalyst 5
replaceitem block ~5 ~1 ~3 slot.container 12 sculk_sensor 6
replaceitem block ~5 ~1 ~3 slot.container 13 recovery_compass 1
replaceitem block ~5 ~1 ~3 slot.container 14 diamond_leggings 1
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 18
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 5 string 13
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 10
replaceitem block ~-5 ~1 ~4 slot.container 10 amethyst_shard 8
replaceitem block ~-5 ~1 ~4 slot.container 11 sculk_catalyst 3
replaceitem block ~-5 ~1 ~4 slot.container 12 sculk_sensor 4
replaceitem block ~-5 ~1 ~4 slot.container 13 recovery_compass 1
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond_leggings 1
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3377/4224 | 主题内编号: b049/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双坡顶林间猎人木屋 (deep_dark_outpost_hunter_cabin)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 polished_deepslate [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 polished_deepslate [] replace water
fill ~-6 ~1 ~-6 ~6 ~7 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_deepslate_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 sculk []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 cobbled_deepslate []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 gunpowder 12
replaceitem block ~3 ~-2 ~3 slot.container 1 string 15
replaceitem block ~3 ~-2 ~3 slot.container 2 spider_eye 10
replaceitem block ~3 ~-2 ~3 slot.container 3 echo_shard 11
replaceitem block ~3 ~-2 ~3 slot.container 4 ender_pearl 10
replaceitem block ~3 ~-2 ~3 slot.container 5 bone 19
replaceitem block ~3 ~-2 ~3 slot.container 9 sculk_catalyst 8
replaceitem block ~3 ~-2 ~3 slot.container 10 sculk_sensor 2
replaceitem block ~3 ~-2 ~3 slot.container 11 recovery_compass 1
replaceitem block ~3 ~-2 ~3 slot.container 12 diamond_leggings 1
replaceitem block ~3 ~-2 ~3 slot.container 13 soul_lantern 9
replaceitem block ~3 ~-2 ~3 slot.container 14 enchanted_golden_apple 5
loot insert ~3 ~-2 ~3 loot "rsf/deep_dark"
loot insert ~3 ~-2 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~5 ~5 polished_deepslate []
fill ~-4 ~1 ~-4 ~4 ~4 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~5 ~-5 chiseled_deepslate []
fill ~-5 ~1 ~5 ~-5 ~5 ~5 chiseled_deepslate []
fill ~5 ~1 ~-5 ~5 ~5 ~-5 chiseled_deepslate []
fill ~5 ~1 ~5 ~5 ~5 ~5 chiseled_deepslate []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 polished_deepslate_wall []
setblock ~5 ~2 ~0 polished_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-6 ~-6 ~6 ~6 polished_deepslate_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-6 ~6 ~6 ~6 polished_deepslate_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~-5 ~7 ~5 polished_deepslate_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-5 ~5 ~7 ~5 polished_deepslate_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-5 ~4 ~7 ~5 polished_deepslate_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 deepslate_bricks []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x3) ---
fill ~-3 ~0 ~7 ~-1 ~5 ~7 chiseled_deepslate []
setblock ~-2 ~1 ~7 sculk_catalyst []
setblock ~-2 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~4 ~1 ~3 slot.container 1 bone 14
replaceitem block ~4 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~4 ~1 ~3 slot.container 3 phantom_membrane 8
replaceitem block ~4 ~1 ~3 slot.container 4 gunpowder 15
replaceitem block ~4 ~1 ~3 slot.container 5 string 18
replaceitem block ~4 ~1 ~3 slot.container 9 golden_apple 6
replaceitem block ~4 ~1 ~3 slot.container 10 experience_bottle 16
replaceitem block ~4 ~1 ~3 slot.container 11 diamond 9
replaceitem block ~4 ~1 ~3 slot.container 12 amethyst_shard 14
replaceitem block ~4 ~1 ~3 slot.container 13 sculk_catalyst 2
replaceitem block ~4 ~1 ~3 slot.container 14 sculk_sensor 3
loot insert ~4 ~1 ~3 loot "rsf/deep_dark"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~-4 ~1 ~4 slot.container 1 phantom_membrane 11
replaceitem block ~-4 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-4 ~1 ~4 slot.container 3 string 13
replaceitem block ~-4 ~1 ~4 slot.container 4 spider_eye 8
replaceitem block ~-4 ~1 ~4 slot.container 5 echo_shard 9
replaceitem block ~-4 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-4 ~1 ~4 slot.container 10 experience_bottle 14
replaceitem block ~-4 ~1 ~4 slot.container 11 diamond 7
replaceitem block ~-4 ~1 ~4 slot.container 12 amethyst_shard 12
replaceitem block ~-4 ~1 ~4 slot.container 13 sculk_catalyst 7
replaceitem block ~-4 ~1 ~4 slot.container 14 sculk_sensor 8
loot insert ~-4 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~4 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3389/4224 | 主题内编号: b061/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子封土古墓地宫 (deep_dark_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 polished_deepslate [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 polished_deepslate [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 polished_deepslate_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 sculk []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cobbled_deepslate []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_bricks []
setblock ~0 ~-6 ~0 sculk_sensor []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 spider_eye 10
replaceitem block ~0 ~-3 ~-2 slot.container 1 echo_shard 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 ender_pearl 10
replaceitem block ~0 ~-3 ~-2 slot.container 3 bone 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 rotten_flesh 12
replaceitem block ~0 ~-3 ~-2 slot.container 5 phantom_membrane 5
replaceitem block ~0 ~-3 ~-2 slot.container 9 diamond 8
replaceitem block ~0 ~-3 ~-2 slot.container 10 amethyst_shard 13
replaceitem block ~0 ~-3 ~-2 slot.container 11 sculk_catalyst 8
replaceitem block ~0 ~-3 ~-2 slot.container 12 sculk_sensor 2
replaceitem block ~0 ~-3 ~-2 slot.container 13 recovery_compass 1
replaceitem block ~0 ~-3 ~-2 slot.container 14 diamond_leggings 1
loot insert ~0 ~-3 ~-2 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 polished_deepslate []
fill ~2 ~1 ~-4 ~7 ~6 ~4 polished_deepslate []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 deepslate_bricks []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~6 ~-4 ~7 ~6 ~4 deepslate_bricks []
fill ~-6 ~7 ~-3 ~6 ~7 ~3 cobbled_deepslate []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 diamond_block []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 deepslate_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-2 ~0 ~6 ~0 ~7 ~6 chiseled_deepslate []
setblock ~-1 ~1 ~6 sculk_catalyst []
setblock ~-1 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 gunpowder 15
replaceitem block ~6 ~1 ~2 slot.container 1 string 18
replaceitem block ~6 ~1 ~2 slot.container 2 spider_eye 13
replaceitem block ~6 ~1 ~2 slot.container 3 echo_shard 6
replaceitem block ~6 ~1 ~2 slot.container 4 ender_pearl 5
replaceitem block ~6 ~1 ~2 slot.container 5 bone 14
replaceitem block ~6 ~1 ~2 slot.container 9 recovery_compass 1
replaceitem block ~6 ~1 ~2 slot.container 10 diamond_leggings 1
replaceitem block ~6 ~1 ~2 slot.container 11 soul_lantern 9
replaceitem block ~6 ~1 ~2 slot.container 12 enchanted_golden_apple 5
replaceitem block ~6 ~1 ~2 slot.container 13 golden_apple 8
replaceitem block ~6 ~1 ~2 slot.container 14 experience_bottle 18
loot insert ~6 ~1 ~2 loot "rsf/deep_dark"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 spider_eye 8
replaceitem block ~-6 ~1 ~3 slot.container 1 echo_shard 9
replaceitem block ~-6 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-6 ~1 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~-6 ~1 ~3 slot.container 5 phantom_membrane 11
replaceitem block ~-6 ~1 ~3 slot.container 9 recovery_compass 1
replaceitem block ~-6 ~1 ~3 slot.container 10 diamond_leggings 1
replaceitem block ~-6 ~1 ~3 slot.container 11 soul_lantern 7
replaceitem block ~-6 ~1 ~3 slot.container 12 enchanted_golden_apple 3
replaceitem block ~-6 ~1 ~3 slot.container 13 golden_apple 6
replaceitem block ~-6 ~1 ~3 slot.container 14 experience_bottle 16
loot insert ~-6 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~3 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

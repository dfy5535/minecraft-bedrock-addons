# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3438/4224 | 主题内编号: b110/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子附魔与酿造实验楼 (deep_dark_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 deepslate_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 bone 19
replaceitem block ~5 ~-3 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~-3 ~2 slot.container 2 phantom_membrane 5
replaceitem block ~5 ~-3 ~2 slot.container 3 gunpowder 12
replaceitem block ~5 ~-3 ~2 slot.container 4 string 15
replaceitem block ~5 ~-3 ~2 slot.container 5 spider_eye 10
replaceitem block ~5 ~-3 ~2 slot.container 9 diamond_leggings 1
replaceitem block ~5 ~-3 ~2 slot.container 10 soul_lantern 11
replaceitem block ~5 ~-3 ~2 slot.container 11 enchanted_golden_apple 7
replaceitem block ~5 ~-3 ~2 slot.container 12 golden_apple 3
replaceitem block ~5 ~-3 ~2 slot.container 13 experience_bottle 13
replaceitem block ~5 ~-3 ~2 slot.container 14 diamond 6
loot insert ~5 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~5 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 cobbled_deepslate []
fill ~2 ~1 ~-4 ~7 ~7 ~4 cobbled_deepslate []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 deepslate_tiles []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~6 ~-5 ~8 ~6 ~5 deepslate_brick_slab []
fill ~-6 ~7 ~-3 ~6 ~8 ~3 deepslate_bricks []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 deepslate_brick_slab []
setblock ~0 ~10 ~0 sculk_sensor []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 deepslate_tiles []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-2 ~0 ~7 ~0 ~6 ~7 chiseled_deepslate []
setblock ~-1 ~1 ~7 sculk_catalyst []
setblock ~-1 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 18
replaceitem block ~-6 ~1 ~2 slot.container 1 spider_eye 13
replaceitem block ~-6 ~1 ~2 slot.container 2 echo_shard 6
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 5
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~2 slot.container 9 amethyst_shard 9
replaceitem block ~-6 ~1 ~2 slot.container 10 sculk_catalyst 4
replaceitem block ~-6 ~1 ~2 slot.container 11 sculk_sensor 5
replaceitem block ~-6 ~1 ~2 slot.container 12 recovery_compass 1
replaceitem block ~-6 ~1 ~2 slot.container 13 diamond_leggings 1
replaceitem block ~-6 ~1 ~2 slot.container 14 soul_lantern 12
loot insert ~-6 ~1 ~2 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3394/4224 | 主题内编号: b066/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·崩塌角楼古堡残垣 (deep_dark_ruin_shattered_keep)
# 建筑构造: 主体[fortress_citadel] + 屋顶[ruined_skylight] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 cobbled_deepslate []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 soul_lantern []
setblock ~4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 phantom_membrane 5
replaceitem block ~4 ~-3 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~-3 ~3 slot.container 2 string 15
replaceitem block ~4 ~-3 ~3 slot.container 3 spider_eye 10
replaceitem block ~4 ~-3 ~3 slot.container 4 echo_shard 11
replaceitem block ~4 ~-3 ~3 slot.container 5 ender_pearl 10
replaceitem block ~4 ~-3 ~3 slot.container 9 amethyst_shard 9
replaceitem block ~4 ~-3 ~3 slot.container 10 sculk_catalyst 4
replaceitem block ~4 ~-3 ~3 slot.container 11 sculk_sensor 5
replaceitem block ~4 ~-3 ~3 slot.container 12 recovery_compass 1
replaceitem block ~4 ~-3 ~3 slot.container 13 diamond_leggings 1
replaceitem block ~4 ~-3 ~3 slot.container 14 soul_lantern 12
loot insert ~4 ~-3 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 cobbled_deepslate []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 deepslate_tiles []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 deepslate_tiles []
setblock ~-6 ~9 ~4 soul_lantern []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 deepslate_tiles []
setblock ~5 ~9 ~-5 soul_lantern []
fill ~5 ~1 ~4 ~6 ~8 ~5 deepslate_tiles []
setblock ~5 ~9 ~4 soul_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 deepslate_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~5 ~-2 chiseled_deepslate []
fill ~-7 ~0 ~2 ~-7 ~5 ~2 chiseled_deepslate []
fill ~7 ~0 ~-2 ~7 ~5 ~-2 chiseled_deepslate []
fill ~7 ~0 ~2 ~7 ~5 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-1 ~0 ~6 ~1 ~7 ~6 chiseled_deepslate []
setblock ~0 ~1 ~6 sculk_catalyst []
setblock ~0 ~8 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 2 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 18
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 9 experience_bottle 18
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 4
replaceitem block ~-5 ~1 ~3 slot.container 11 amethyst_shard 9
replaceitem block ~-5 ~1 ~3 slot.container 12 sculk_catalyst 4
replaceitem block ~-5 ~1 ~3 slot.container 13 sculk_sensor 5
replaceitem block ~-5 ~1 ~3 slot.container 14 recovery_compass 1
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

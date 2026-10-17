# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3407/4224 | 主题内编号: b079/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·四角结界守护柱阵 (deep_dark_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_alchemy]
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
replaceitem block ~4 ~-2 ~3 slot.container 9 sculk_catalyst 3
replaceitem block ~4 ~-2 ~3 slot.container 10 sculk_sensor 4
replaceitem block ~4 ~-2 ~3 slot.container 11 recovery_compass 1
replaceitem block ~4 ~-2 ~3 slot.container 12 diamond_leggings 1
replaceitem block ~4 ~-2 ~3 slot.container 13 soul_lantern 11
replaceitem block ~4 ~-2 ~3 slot.container 14 enchanted_golden_apple 7
loot insert ~4 ~-2 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 deepslate_bricks []
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

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 chiseled_deepslate []
setblock ~-6 ~9 ~-5 soul_lantern []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 chiseled_deepslate []
setblock ~-6 ~9 ~5 soul_lantern []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 chiseled_deepslate []
setblock ~6 ~9 ~-5 soul_lantern []
fill ~6 ~6 ~5 ~6 ~8 ~5 chiseled_deepslate []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_deepslate []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~0 ~0 ~7 ~2 ~5 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 sculk_catalyst []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 1 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~3 slot.container 3 bone 14
replaceitem block ~5 ~1 ~3 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 8
replaceitem block ~5 ~1 ~3 slot.container 10 experience_bottle 18
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 4
replaceitem block ~5 ~1 ~3 slot.container 12 amethyst_shard 9
replaceitem block ~5 ~1 ~3 slot.container 13 sculk_catalyst 4
replaceitem block ~5 ~1 ~3 slot.container 14 sculk_sensor 5
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 18
replaceitem block ~-5 ~1 ~4 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 5 string 13
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 10 experience_bottle 16
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 9
replaceitem block ~-5 ~1 ~4 slot.container 12 amethyst_shard 14
replaceitem block ~-5 ~1 ~4 slot.container 13 sculk_catalyst 2
replaceitem block ~-5 ~1 ~4 slot.container 14 sculk_sensor 3
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

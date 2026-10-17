# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3374/4224 | 主题内编号: b046/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·要塞校场比武演武台 (deep_dark_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobbled_deepslate [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 cobbled_deepslate [] replace water
fill ~-8 ~1 ~-7 ~8 ~7 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 deepslate_bricks []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~5 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~4 slot.container 0 bone 19
replaceitem block ~5 ~-3 ~4 slot.container 1 rotten_flesh 12
replaceitem block ~5 ~-3 ~4 slot.container 2 phantom_membrane 5
replaceitem block ~5 ~-3 ~4 slot.container 3 gunpowder 12
replaceitem block ~5 ~-3 ~4 slot.container 4 string 15
replaceitem block ~5 ~-3 ~4 slot.container 5 spider_eye 10
replaceitem block ~5 ~-3 ~4 slot.container 9 sculk_sensor 5
replaceitem block ~5 ~-3 ~4 slot.container 10 recovery_compass 1
replaceitem block ~5 ~-3 ~4 slot.container 11 diamond_leggings 1
replaceitem block ~5 ~-3 ~4 slot.container 12 soul_lantern 12
replaceitem block ~5 ~-3 ~4 slot.container 13 enchanted_golden_apple 1
replaceitem block ~5 ~-3 ~4 slot.container 14 golden_apple 4
loot insert ~5 ~-3 ~4 loot "rsf/deep_dark"
loot insert ~5 ~-3 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 cobbled_deepslate []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~7 ~-5 deepslate_tiles []
setblock ~-7 ~8 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~7 ~6 deepslate_tiles []
setblock ~-7 ~8 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~7 ~-5 deepslate_tiles []
setblock ~6 ~8 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~7 ~6 deepslate_tiles []
setblock ~6 ~8 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~5 ~-6 ~7 ~5 ~6 deepslate_tiles []
fill ~-7 ~6 ~-6 ~7 ~6 ~6 deepslate_brick_wall []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 air []
setblock ~-7 ~6 ~-6 chiseled_deepslate []
setblock ~-7 ~7 ~-6 soul_lantern []
setblock ~-7 ~6 ~6 chiseled_deepslate []
setblock ~-7 ~7 ~6 soul_lantern []
setblock ~7 ~6 ~-6 chiseled_deepslate []
setblock ~7 ~7 ~-6 soul_lantern []
setblock ~7 ~6 ~6 chiseled_deepslate []
setblock ~7 ~7 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~7 ~2 deepslate_bricks []
fill ~8 ~1 ~-1 ~9 ~6 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~8 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-3 ~0 ~8 ~-1 ~7 ~8 chiseled_deepslate []
setblock ~-2 ~1 ~8 sculk_catalyst []
setblock ~-2 ~8 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 diamond_block []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 string 18
replaceitem block ~-6 ~1 ~4 slot.container 1 spider_eye 13
replaceitem block ~-6 ~1 ~4 slot.container 2 echo_shard 6
replaceitem block ~-6 ~1 ~4 slot.container 3 ender_pearl 5
replaceitem block ~-6 ~1 ~4 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 9 experience_bottle 12
replaceitem block ~-6 ~1 ~4 slot.container 10 diamond 5
replaceitem block ~-6 ~1 ~4 slot.container 11 amethyst_shard 10
replaceitem block ~-6 ~1 ~4 slot.container 12 sculk_catalyst 5
replaceitem block ~-6 ~1 ~4 slot.container 13 sculk_sensor 6
replaceitem block ~-6 ~1 ~4 slot.container 14 recovery_compass 1
loot insert ~-6 ~1 ~4 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3416/4224 | 主题内编号: b088/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·矿车铁轨转运仓库 (deep_dark_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 deepslate_tiles [] replace water
fill ~-6 ~1 ~-7 ~6 ~7 ~7 air []
fill ~-6 ~0 ~-7 ~6 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 deepslate_bricks []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 polished_deepslate []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 phantom_membrane 5
replaceitem block ~3 ~-3 ~4 slot.container 1 gunpowder 12
replaceitem block ~3 ~-3 ~4 slot.container 2 string 15
replaceitem block ~3 ~-3 ~4 slot.container 3 spider_eye 10
replaceitem block ~3 ~-3 ~4 slot.container 4 echo_shard 11
replaceitem block ~3 ~-3 ~4 slot.container 5 ender_pearl 10
replaceitem block ~3 ~-3 ~4 slot.container 9 experience_bottle 15
replaceitem block ~3 ~-3 ~4 slot.container 10 diamond 8
replaceitem block ~3 ~-3 ~4 slot.container 11 amethyst_shard 13
replaceitem block ~3 ~-3 ~4 slot.container 12 sculk_catalyst 8
replaceitem block ~3 ~-3 ~4 slot.container 13 sculk_sensor 2
replaceitem block ~3 ~-3 ~4 slot.container 14 recovery_compass 1
loot insert ~3 ~-3 ~4 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~5 ~6 deepslate_tiles []
fill ~-4 ~1 ~-5 ~4 ~4 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~5 ~-6 polished_deepslate []
fill ~-5 ~1 ~6 ~-5 ~5 ~6 polished_deepslate []
fill ~5 ~1 ~-6 ~5 ~5 ~-6 polished_deepslate []
fill ~5 ~1 ~6 ~5 ~5 ~6 polished_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 deepslate_tile_wall []
setblock ~5 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-7 ~-6 ~6 ~7 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-7 ~6 ~6 ~7 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-6 ~-5 ~7 ~6 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-6 ~5 ~7 ~6 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-6 ~4 ~7 ~6 deepslate_tile_slab []
fill ~0 ~8 ~-7 ~0 ~8 ~7 sculk []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 sculk []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_lantern []
setblock ~2 ~4 ~-9 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x8x2) ---
fill ~1 ~0 ~8 ~3 ~4 ~8 chiseled_deepslate []
setblock ~2 ~1 ~8 sculk_catalyst []
setblock ~2 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 echo_shard 6
replaceitem block ~-4 ~1 ~4 slot.container 1 ender_pearl 5
replaceitem block ~-4 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~4 slot.container 4 phantom_membrane 8
replaceitem block ~-4 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~4 slot.container 9 diamond_leggings 1
replaceitem block ~-4 ~1 ~4 slot.container 10 soul_lantern 7
replaceitem block ~-4 ~1 ~4 slot.container 11 enchanted_golden_apple 3
replaceitem block ~-4 ~1 ~4 slot.container 12 golden_apple 6
replaceitem block ~-4 ~1 ~4 slot.container 13 experience_bottle 16
replaceitem block ~-4 ~1 ~4 slot.container 14 diamond 9
loot insert ~-4 ~1 ~4 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~-3 ~0

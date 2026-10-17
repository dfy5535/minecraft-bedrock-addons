# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3414/4224 | 主题内编号: b086/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·重装矿石金库碉堡 (deep_dark_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cobbled_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 bone 19
replaceitem block ~4 ~-3 ~3 slot.container 1 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 2 phantom_membrane 5
replaceitem block ~4 ~-3 ~3 slot.container 3 gunpowder 12
replaceitem block ~4 ~-3 ~3 slot.container 4 string 15
replaceitem block ~4 ~-3 ~3 slot.container 5 spider_eye 10
replaceitem block ~4 ~-3 ~3 slot.container 9 sculk_sensor 3
replaceitem block ~4 ~-3 ~3 slot.container 10 recovery_compass 1
replaceitem block ~4 ~-3 ~3 slot.container 11 diamond_leggings 1
replaceitem block ~4 ~-3 ~3 slot.container 12 soul_lantern 10
replaceitem block ~4 ~-3 ~3 slot.container 13 enchanted_golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 14 golden_apple 9
loot insert ~4 ~-3 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 cobbled_deepslate []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~7 ~-4 deepslate_tiles []
setblock ~-6 ~8 ~-5 soul_lantern []
fill ~-6 ~1 ~4 ~-5 ~7 ~5 deepslate_tiles []
setblock ~-6 ~8 ~4 soul_lantern []
fill ~5 ~1 ~-5 ~6 ~7 ~-4 deepslate_tiles []
setblock ~5 ~8 ~-5 soul_lantern []
fill ~5 ~1 ~4 ~6 ~7 ~5 deepslate_tiles []
setblock ~5 ~8 ~4 soul_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 deepslate_tiles []
fill ~-6 ~6 ~-5 ~6 ~6 ~5 deepslate_brick_wall []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 air []
setblock ~-6 ~6 ~-5 chiseled_deepslate []
setblock ~-6 ~7 ~-5 soul_lantern []
setblock ~-6 ~6 ~5 chiseled_deepslate []
setblock ~-6 ~7 ~5 soul_lantern []
setblock ~6 ~6 ~-5 chiseled_deepslate []
setblock ~6 ~7 ~-5 soul_lantern []
setblock ~6 ~6 ~5 chiseled_deepslate []
setblock ~6 ~7 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 sculk []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x8x5) ---
fill ~1 ~0 ~8 ~3 ~7 ~8 chiseled_deepslate []
setblock ~2 ~1 ~8 sculk_catalyst []
setblock ~2 ~8 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 sculk_sensor []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 string 18
replaceitem block ~-5 ~1 ~3 slot.container 1 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 2 echo_shard 6
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 5 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 9 experience_bottle 17
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 10
replaceitem block ~-5 ~1 ~3 slot.container 11 amethyst_shard 8
replaceitem block ~-5 ~1 ~3 slot.container 12 sculk_catalyst 3
replaceitem block ~-5 ~1 ~3 slot.container 13 sculk_sensor 4
replaceitem block ~-5 ~1 ~3 slot.container 14 recovery_compass 1
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

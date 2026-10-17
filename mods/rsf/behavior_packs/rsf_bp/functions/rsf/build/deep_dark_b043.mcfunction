# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3371/4224 | 主题内编号: b043/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·十字四门试炼擂台 (deep_dark_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 2格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~7 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~5 ~6 deepslate_bricks []
fill ~-7 ~1 ~-2 ~7 ~5 ~2 deepslate_bricks []
fill ~-1 ~1 ~-5 ~1 ~4 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~4 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 deepslate_brick_wall []
setblock ~7 ~2 ~0 deepslate_brick_wall []

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

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 polished_deepslate []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~1 ~0 ~8 ~3 ~4 ~8 chiseled_deepslate []
setblock ~2 ~1 ~8 sculk_catalyst []
setblock ~2 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 fletching_table []
setblock ~0 ~1 ~5 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 1 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~6 ~1 ~4 slot.container 3 string 18
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 13
replaceitem block ~6 ~1 ~4 slot.container 5 echo_shard 6
replaceitem block ~6 ~1 ~4 slot.container 9 diamond 8
replaceitem block ~6 ~1 ~4 slot.container 10 amethyst_shard 13
replaceitem block ~6 ~1 ~4 slot.container 11 sculk_catalyst 8
replaceitem block ~6 ~1 ~4 slot.container 12 sculk_sensor 2
replaceitem block ~6 ~1 ~4 slot.container 13 recovery_compass 1
replaceitem block ~6 ~1 ~4 slot.container 14 diamond_leggings 1
loot insert ~6 ~1 ~4 loot "rsf/deep_dark"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-6 ~1 ~5 slot.container 1 string 13
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 3 echo_shard 9
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 9 diamond 6
replaceitem block ~-6 ~1 ~5 slot.container 10 amethyst_shard 11
replaceitem block ~-6 ~1 ~5 slot.container 11 sculk_catalyst 6
replaceitem block ~-6 ~1 ~5 slot.container 12 sculk_sensor 7
replaceitem block ~-6 ~1 ~5 slot.container 13 recovery_compass 1
replaceitem block ~-6 ~1 ~5 slot.container 14 diamond_leggings 1
loot insert ~-6 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~5 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~2 ~0

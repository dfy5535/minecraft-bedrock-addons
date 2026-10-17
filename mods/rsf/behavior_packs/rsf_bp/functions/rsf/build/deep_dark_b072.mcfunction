# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3400/4224 | 主题内编号: b072/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·L型古商会废墟暗窖 (deep_dark_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_deepslate []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
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

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 deepslate_tiles []
fill ~-6 ~1 ~0 ~6 ~4 ~5 polished_deepslate []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~5 ~-5 ~6 ~5 ~5 deepslate_tile_slab []
fill ~-1 ~4 ~-1 ~2 ~5 ~2 air []
fill ~-6 ~4 ~-1 ~-6 ~5 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 sculk []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 polished_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 polished_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 deepslate_tile_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-1 ~0 ~6 ~1 ~8 ~6 chiseled_deepslate []
setblock ~0 ~1 ~6 sculk_catalyst []
setblock ~0 ~9 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 echo_shard 6
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~3 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 enchanted_golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 10 golden_apple 9
replaceitem block ~-5 ~1 ~3 slot.container 11 experience_bottle 12
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 5
replaceitem block ~-5 ~1 ~3 slot.container 13 amethyst_shard 10
replaceitem block ~-5 ~1 ~3 slot.container 14 sculk_catalyst 5
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

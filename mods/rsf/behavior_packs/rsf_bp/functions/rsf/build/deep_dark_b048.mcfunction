# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3376/4224 | 主题内编号: b048/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·阶梯王座巅峰试炼台 (deep_dark_arena_ziggurat_crown)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_tiles [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_tiles [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 sculk []
setblock ~0 ~-6 ~0 diamond_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 bone 19
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 12
replaceitem block ~0 ~-3 ~-4 slot.container 2 phantom_membrane 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 gunpowder 12
replaceitem block ~0 ~-3 ~-4 slot.container 4 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 5 spider_eye 10
replaceitem block ~0 ~-3 ~-4 slot.container 9 amethyst_shard 13
replaceitem block ~0 ~-3 ~-4 slot.container 10 sculk_catalyst 8
replaceitem block ~0 ~-3 ~-4 slot.container 11 sculk_sensor 2
replaceitem block ~0 ~-3 ~-4 slot.container 12 recovery_compass 1
replaceitem block ~0 ~-3 ~-4 slot.container 13 diamond_leggings 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 soul_lantern 9
loot insert ~0 ~-3 ~-4 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_tiles []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 sculk []
fill ~-5 ~5 ~-4 ~5 ~6 ~4 polished_deepslate []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 deepslate_tile_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-6 ~-7 ~8 ~-6 polished_deepslate []
setblock ~-7 ~9 ~-6 soul_lantern []
fill ~-7 ~6 ~6 ~-7 ~8 ~6 polished_deepslate []
setblock ~-7 ~9 ~6 soul_lantern []
fill ~7 ~6 ~-6 ~7 ~8 ~-6 polished_deepslate []
setblock ~7 ~9 ~-6 soul_lantern []
fill ~7 ~6 ~6 ~7 ~8 ~6 polished_deepslate []
setblock ~7 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 polished_deepslate []
setblock ~0 ~4 ~-8 diamond_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 polished_deepslate []
setblock ~0 ~4 ~8 diamond_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 polished_deepslate []
setblock ~-9 ~4 ~0 diamond_block []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 polished_deepslate []
setblock ~9 ~4 ~0 diamond_block []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-1 ~0 ~7 ~1 ~4 ~7 chiseled_deepslate []
setblock ~0 ~1 ~7 sculk_catalyst []
setblock ~0 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 echo_shard 6
replaceitem block ~-6 ~1 ~4 slot.container 1 ender_pearl 5
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 3 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 4 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 5 gunpowder 15
replaceitem block ~-6 ~1 ~4 slot.container 9 diamond_leggings 1
replaceitem block ~-6 ~1 ~4 slot.container 10 soul_lantern 9
replaceitem block ~-6 ~1 ~4 slot.container 11 enchanted_golden_apple 5
replaceitem block ~-6 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 13 experience_bottle 18
replaceitem block ~-6 ~1 ~4 slot.container 14 diamond 4
loot insert ~-6 ~1 ~4 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

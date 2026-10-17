# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3436/4224 | 主题内编号: b108/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·十字四相元素秘法殿 (deep_dark_arcane_cross_sanctum)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_tiles [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_deepslate []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 amethyst_block []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 phantom_membrane 5
replaceitem block ~4 ~-3 ~0 slot.container 1 gunpowder 12
replaceitem block ~4 ~-3 ~0 slot.container 2 string 15
replaceitem block ~4 ~-3 ~0 slot.container 3 spider_eye 10
replaceitem block ~4 ~-3 ~0 slot.container 4 echo_shard 11
replaceitem block ~4 ~-3 ~0 slot.container 5 ender_pearl 10
replaceitem block ~4 ~-3 ~0 slot.container 9 amethyst_shard 12
replaceitem block ~4 ~-3 ~0 slot.container 10 sculk_catalyst 7
replaceitem block ~4 ~-3 ~0 slot.container 11 sculk_sensor 8
replaceitem block ~4 ~-3 ~0 slot.container 12 recovery_compass 1
replaceitem block ~4 ~-3 ~0 slot.container 13 diamond_leggings 1
replaceitem block ~4 ~-3 ~0 slot.container 14 soul_lantern 8
loot insert ~4 ~-3 ~0 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~0 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 deepslate_tiles []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 deepslate_tiles []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 deepslate_tile_wall []
setblock ~6 ~2 ~0 deepslate_tile_wall []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 sculk []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 polished_deepslate []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 amethyst_block []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 polished_deepslate []
setblock ~0 ~4 ~-7 diamond_block []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 polished_deepslate []
setblock ~0 ~4 ~7 diamond_block []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 polished_deepslate []
setblock ~-8 ~4 ~0 diamond_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 polished_deepslate []
setblock ~8 ~4 ~0 diamond_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-1 ~0 ~6 ~1 ~4 ~6 chiseled_deepslate []
setblock ~0 ~1 ~6 sculk_catalyst []
setblock ~0 ~5 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 phantom_membrane 8
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 2 string 18
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 4 echo_shard 6
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond_leggings 1
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 11 enchanted_golden_apple 2
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 13 experience_bottle 15
replaceitem block ~-5 ~1 ~3 slot.container 14 diamond 8
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

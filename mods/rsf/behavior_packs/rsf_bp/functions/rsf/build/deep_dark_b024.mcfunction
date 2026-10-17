# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3352/4224 | 主题内编号: b024/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·半地下掩体储藏室 (deep_dark_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 4格 | 地下深度 5格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 deepslate_tiles []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 phantom_membrane 5
replaceitem block ~3 ~-4 ~2 slot.container 1 gunpowder 12
replaceitem block ~3 ~-4 ~2 slot.container 2 string 15
replaceitem block ~3 ~-4 ~2 slot.container 3 spider_eye 10
replaceitem block ~3 ~-4 ~2 slot.container 4 echo_shard 11
replaceitem block ~3 ~-4 ~2 slot.container 5 ender_pearl 10
replaceitem block ~3 ~-4 ~2 slot.container 9 experience_bottle 17
replaceitem block ~3 ~-4 ~2 slot.container 10 diamond 10
replaceitem block ~3 ~-4 ~2 slot.container 11 amethyst_shard 8
replaceitem block ~3 ~-4 ~2 slot.container 12 sculk_catalyst 3
replaceitem block ~3 ~-4 ~2 slot.container 13 sculk_sensor 4
replaceitem block ~3 ~-4 ~2 slot.container 14 recovery_compass 1
loot insert ~3 ~-4 ~2 loot "rsf/deep_dark"
loot insert ~3 ~-4 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 sculk []
fill ~0 ~1 ~-4 ~0 ~2 ~4 sculk []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~4 ~-4 ~5 ~4 ~4 sculk []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 deepslate_tile_wall []
fill ~-4 ~5 ~-3 ~4 ~5 ~3 air []
setblock ~-5 ~5 ~-4 polished_deepslate []
setblock ~-5 ~6 ~-4 soul_lantern []
setblock ~-5 ~5 ~4 polished_deepslate []
setblock ~-5 ~6 ~4 soul_lantern []
setblock ~5 ~5 ~-4 polished_deepslate []
setblock ~5 ~6 ~-4 soul_lantern []
setblock ~5 ~5 ~4 polished_deepslate []
setblock ~5 ~6 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 deepslate_tile_wall []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x5x3) ---
fill ~-3 ~0 ~5 ~-1 ~5 ~5 chiseled_deepslate []
setblock ~-2 ~1 ~5 sculk_catalyst []
setblock ~-2 ~6 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 echo_shard 6
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 5
replaceitem block ~-4 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-4 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-4 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-4 ~1 ~2 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~2 slot.container 9 sculk_sensor 8
replaceitem block ~-4 ~1 ~2 slot.container 10 recovery_compass 1
replaceitem block ~-4 ~1 ~2 slot.container 11 diamond_leggings 1
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_lantern 8
replaceitem block ~-4 ~1 ~2 slot.container 13 enchanted_golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

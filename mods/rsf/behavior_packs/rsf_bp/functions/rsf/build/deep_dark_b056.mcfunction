# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3384/4224 | 主题内编号: b056/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·隐士半地下避难山居 (deep_dark_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_tiles [] replace water
fill ~-6 ~1 ~-5 ~6 ~7 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 polished_deepslate []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 phantom_membrane 5
replaceitem block ~3 ~-3 ~2 slot.container 1 gunpowder 12
replaceitem block ~3 ~-3 ~2 slot.container 2 string 15
replaceitem block ~3 ~-3 ~2 slot.container 3 spider_eye 10
replaceitem block ~3 ~-3 ~2 slot.container 4 echo_shard 11
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 10
replaceitem block ~3 ~-3 ~2 slot.container 9 sculk_sensor 8
replaceitem block ~3 ~-3 ~2 slot.container 10 recovery_compass 1
replaceitem block ~3 ~-3 ~2 slot.container 11 diamond_leggings 1
replaceitem block ~3 ~-3 ~2 slot.container 12 soul_lantern 8
replaceitem block ~3 ~-3 ~2 slot.container 13 enchanted_golden_apple 4
replaceitem block ~3 ~-3 ~2 slot.container 14 golden_apple 7
loot insert ~3 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~3 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 deepslate_tiles []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 sculk []
fill ~0 ~1 ~-4 ~0 ~2 ~4 sculk []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~6 ~-5 ~-6 ~6 ~5 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~6 ~6 ~-5 ~6 ~6 ~5 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-4 ~-5 ~7 ~4 deepslate_tile_stairs ["weirdo_direction"=0]
fill ~5 ~7 ~-4 ~5 ~7 ~4 deepslate_tile_stairs ["weirdo_direction"=1]
fill ~-4 ~7 ~-4 ~4 ~7 ~4 deepslate_tile_slab []
fill ~0 ~8 ~-5 ~0 ~8 ~5 sculk []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 sculk []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x5) ---
fill ~-1 ~0 ~7 ~1 ~7 ~7 chiseled_deepslate []
setblock ~0 ~1 ~7 sculk_catalyst []
setblock ~0 ~8 ~7 soul_lantern []

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
replaceitem block ~-4 ~1 ~2 slot.container 9 experience_bottle 15
replaceitem block ~-4 ~1 ~2 slot.container 10 diamond 8
replaceitem block ~-4 ~1 ~2 slot.container 11 amethyst_shard 13
replaceitem block ~-4 ~1 ~2 slot.container 12 sculk_catalyst 8
replaceitem block ~-4 ~1 ~2 slot.container 13 sculk_sensor 2
replaceitem block ~-4 ~1 ~2 slot.container 14 recovery_compass 1
loot insert ~-4 ~1 ~2 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

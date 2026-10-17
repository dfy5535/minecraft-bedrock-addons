# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3372/4224 | 主题内编号: b044/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子祭台勇士角斗场 (deep_dark_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 deepslate_tiles [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 deepslate_tiles [] replace water
fill ~-8 ~1 ~-6 ~8 ~7 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_bricks []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 polished_deepslate []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 echo_shard 11
replaceitem block ~5 ~-3 ~3 slot.container 1 ender_pearl 10
replaceitem block ~5 ~-3 ~3 slot.container 2 bone 19
replaceitem block ~5 ~-3 ~3 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~-3 ~3 slot.container 4 phantom_membrane 5
replaceitem block ~5 ~-3 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~-3 ~3 slot.container 9 enchanted_golden_apple 2
replaceitem block ~5 ~-3 ~3 slot.container 10 golden_apple 5
replaceitem block ~5 ~-3 ~3 slot.container 11 experience_bottle 15
replaceitem block ~5 ~-3 ~3 slot.container 12 diamond 8
replaceitem block ~5 ~-3 ~3 slot.container 13 amethyst_shard 13
replaceitem block ~5 ~-3 ~3 slot.container 14 sculk_catalyst 8
loot insert ~5 ~-3 ~3 loot "rsf/deep_dark"
loot insert ~5 ~-3 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~6 ~5 deepslate_tiles []
fill ~2 ~1 ~-5 ~7 ~6 ~5 deepslate_tiles []
fill ~-6 ~1 ~-4 ~-3 ~5 ~4 air []
fill ~3 ~1 ~-4 ~6 ~5 ~4 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 sculk []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-5 ~-7 ~7 ~-5 polished_deepslate []
setblock ~-7 ~8 ~-5 soul_lantern []
fill ~-7 ~5 ~5 ~-7 ~7 ~5 polished_deepslate []
setblock ~-7 ~8 ~5 soul_lantern []
fill ~7 ~5 ~-5 ~7 ~7 ~-5 polished_deepslate []
setblock ~7 ~8 ~-5 soul_lantern []
fill ~7 ~5 ~5 ~7 ~7 ~5 polished_deepslate []
setblock ~7 ~8 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_deepslate []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~2 ~0 ~8 ~4 ~5 ~8 chiseled_deepslate []
setblock ~3 ~1 ~8 sculk_catalyst []
setblock ~3 ~6 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~4 smithing_table []
setblock ~0 ~1 ~4 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~3 slot.container 2 string 18
replaceitem block ~-6 ~1 ~3 slot.container 3 spider_eye 13
replaceitem block ~-6 ~1 ~3 slot.container 4 echo_shard 6
replaceitem block ~-6 ~1 ~3 slot.container 5 ender_pearl 5
replaceitem block ~-6 ~1 ~3 slot.container 9 sculk_sensor 7
replaceitem block ~-6 ~1 ~3 slot.container 10 recovery_compass 1
replaceitem block ~-6 ~1 ~3 slot.container 11 diamond_leggings 1
replaceitem block ~-6 ~1 ~3 slot.container 12 soul_lantern 7
replaceitem block ~-6 ~1 ~3 slot.container 13 enchanted_golden_apple 3
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 6
loot insert ~-6 ~1 ~3 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

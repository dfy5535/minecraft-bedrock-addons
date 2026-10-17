# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3365/4224 | 主题内编号: b037/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·环廊聖柱纪念碑 (deep_dark_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sculk []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobbled_deepslate []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 diamond_block []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 gunpowder 12
replaceitem block ~4 ~-2 ~0 slot.container 1 string 15
replaceitem block ~4 ~-2 ~0 slot.container 2 spider_eye 10
replaceitem block ~4 ~-2 ~0 slot.container 3 echo_shard 11
replaceitem block ~4 ~-2 ~0 slot.container 4 ender_pearl 10
replaceitem block ~4 ~-2 ~0 slot.container 5 bone 19
replaceitem block ~4 ~-2 ~0 slot.container 9 golden_apple 6
replaceitem block ~4 ~-2 ~0 slot.container 10 experience_bottle 16
replaceitem block ~4 ~-2 ~0 slot.container 11 diamond 9
replaceitem block ~4 ~-2 ~0 slot.container 12 amethyst_shard 14
replaceitem block ~4 ~-2 ~0 slot.container 13 sculk_catalyst 2
replaceitem block ~4 ~-2 ~0 slot.container 14 sculk_sensor 3
loot insert ~4 ~-2 ~0 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~0 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 chiseled_deepslate []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 chiseled_deepslate []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 chiseled_deepslate []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 chiseled_deepslate []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 chiseled_deepslate []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 chiseled_deepslate []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 chiseled_deepslate []
fill ~0 ~1 ~5 ~0 ~6 ~5 chiseled_deepslate []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 chiseled_deepslate []
fill ~2 ~1 ~5 ~2 ~6 ~5 chiseled_deepslate []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 chiseled_deepslate []
fill ~4 ~1 ~5 ~4 ~6 ~5 chiseled_deepslate []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 chiseled_deepslate []
fill ~6 ~1 ~5 ~6 ~6 ~5 chiseled_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 chiseled_deepslate []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 chiseled_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 chiseled_deepslate []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 chiseled_deepslate []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 chiseled_deepslate []
fill ~6 ~1 ~1 ~6 ~6 ~1 chiseled_deepslate []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 chiseled_deepslate []
fill ~6 ~1 ~3 ~6 ~6 ~3 chiseled_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 chiseled_deepslate []
setblock ~-6 ~10 ~-5 soul_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 chiseled_deepslate []
setblock ~-6 ~10 ~5 soul_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 chiseled_deepslate []
setblock ~6 ~10 ~-5 soul_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 chiseled_deepslate []
setblock ~6 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~3 ~-7 chiseled_deepslate []
setblock ~-8 ~4 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~3 ~7 chiseled_deepslate []
setblock ~-8 ~4 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~3 ~-7 chiseled_deepslate []
setblock ~8 ~4 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~3 ~7 chiseled_deepslate []
setblock ~8 ~4 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~0 ~0 ~7 ~2 ~8 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 1 string 18
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 3 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~3 slot.container 5 bone 14
replaceitem block ~5 ~1 ~3 slot.container 9 sculk_catalyst 7
replaceitem block ~5 ~1 ~3 slot.container 10 sculk_sensor 8
replaceitem block ~5 ~1 ~3 slot.container 11 recovery_compass 1
replaceitem block ~5 ~1 ~3 slot.container 12 diamond_leggings 1
replaceitem block ~5 ~1 ~3 slot.container 13 soul_lantern 8
replaceitem block ~5 ~1 ~3 slot.container 14 enchanted_golden_apple 4
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 1 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~-5 ~1 ~4 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 9 sculk_catalyst 5
replaceitem block ~-5 ~1 ~4 slot.container 10 sculk_sensor 6
replaceitem block ~-5 ~1 ~4 slot.container 11 recovery_compass 1
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond_leggings 1
replaceitem block ~-5 ~1 ~4 slot.container 13 soul_lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 14 enchanted_golden_apple 2
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

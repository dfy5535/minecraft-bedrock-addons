# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3341/4224 | 主题内编号: b013/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·地底熔炉苦工地牢 (deep_dark_dungeon_forged_depths)
# 建筑构造: 主体[rect_hall] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 polished_deepslate [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 polished_deepslate [] replace water
fill ~-7 ~1 ~-7 ~7 ~7 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sculk []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 polished_deepslate []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 ender_pearl 10
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 19
replaceitem block ~4 ~-3 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~4 ~-3 ~4 slot.container 3 phantom_membrane 5
replaceitem block ~4 ~-3 ~4 slot.container 4 gunpowder 12
replaceitem block ~4 ~-3 ~4 slot.container 5 string 15
replaceitem block ~4 ~-3 ~4 slot.container 9 soul_lantern 7
replaceitem block ~4 ~-3 ~4 slot.container 10 enchanted_golden_apple 3
replaceitem block ~4 ~-3 ~4 slot.container 11 golden_apple 6
replaceitem block ~4 ~-3 ~4 slot.container 12 experience_bottle 16
replaceitem block ~4 ~-3 ~4 slot.container 13 diamond 9
replaceitem block ~4 ~-3 ~4 slot.container 14 amethyst_shard 14
loot insert ~4 ~-3 ~4 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 polished_deepslate []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 chiseled_deepslate []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 chiseled_deepslate []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 chiseled_deepslate []
fill ~6 ~1 ~6 ~6 ~5 ~6 chiseled_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-6 ~2 ~0 polished_deepslate_wall []
setblock ~6 ~2 ~0 polished_deepslate_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 deepslate_bricks []
fill ~-6 ~6 ~-6 ~6 ~6 ~6 polished_deepslate_wall []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 air []
setblock ~-6 ~6 ~-6 chiseled_deepslate []
setblock ~-6 ~7 ~-6 soul_lantern []
setblock ~-6 ~6 ~6 chiseled_deepslate []
setblock ~-6 ~7 ~6 soul_lantern []
setblock ~6 ~6 ~-6 chiseled_deepslate []
setblock ~6 ~7 ~-6 soul_lantern []
setblock ~6 ~6 ~6 chiseled_deepslate []
setblock ~6 ~7 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~7 ~2 cobbled_deepslate []
fill ~7 ~1 ~-1 ~8 ~6 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~8 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~0 ~0 ~8 ~2 ~4 ~8 chiseled_deepslate []
setblock ~1 ~1 ~8 sculk_catalyst []
setblock ~1 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 1 string 18
replaceitem block ~5 ~1 ~4 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~4 slot.container 3 echo_shard 6
replaceitem block ~5 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~4 slot.container 5 bone 14
replaceitem block ~5 ~1 ~4 slot.container 9 diamond 6
replaceitem block ~5 ~1 ~4 slot.container 10 amethyst_shard 11
replaceitem block ~5 ~1 ~4 slot.container 11 sculk_catalyst 6
replaceitem block ~5 ~1 ~4 slot.container 12 sculk_sensor 7
replaceitem block ~5 ~1 ~4 slot.container 13 recovery_compass 1
replaceitem block ~5 ~1 ~4 slot.container 14 diamond_leggings 1
loot insert ~5 ~1 ~4 loot "rsf/deep_dark"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 spider_eye 8
replaceitem block ~-5 ~1 ~5 slot.container 1 echo_shard 9
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~5 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~5 slot.container 4 rotten_flesh 18
replaceitem block ~-5 ~1 ~5 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~5 slot.container 9 diamond 4
replaceitem block ~-5 ~1 ~5 slot.container 10 amethyst_shard 9
replaceitem block ~-5 ~1 ~5 slot.container 11 sculk_catalyst 4
replaceitem block ~-5 ~1 ~5 slot.container 12 sculk_sensor 5
replaceitem block ~-5 ~1 ~5 slot.container 13 recovery_compass 1
replaceitem block ~-5 ~1 ~5 slot.container 14 diamond_leggings 1
loot insert ~-5 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~5 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

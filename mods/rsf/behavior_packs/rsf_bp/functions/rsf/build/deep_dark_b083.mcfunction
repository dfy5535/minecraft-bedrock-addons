# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3411/4224 | 主题内编号: b083/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·铁砧锻造与模具工坊 (deep_dark_mine_smithing_foundry)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~7 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~3 anvil []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 spider_eye 10
replaceitem block ~4 ~-2 ~3 slot.container 1 echo_shard 11
replaceitem block ~4 ~-2 ~3 slot.container 2 ender_pearl 10
replaceitem block ~4 ~-2 ~3 slot.container 3 bone 19
replaceitem block ~4 ~-2 ~3 slot.container 4 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 5 phantom_membrane 5
replaceitem block ~4 ~-2 ~3 slot.container 9 soul_lantern 7
replaceitem block ~4 ~-2 ~3 slot.container 10 enchanted_golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 11 golden_apple 6
replaceitem block ~4 ~-2 ~3 slot.container 12 experience_bottle 16
replaceitem block ~4 ~-2 ~3 slot.container 13 diamond 9
replaceitem block ~4 ~-2 ~3 slot.container 14 amethyst_shard 14
loot insert ~4 ~-2 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~5 ~5 deepslate_bricks []
fill ~-6 ~1 ~0 ~6 ~4 ~5 deepslate_tiles []
fill ~-5 ~1 ~-4 ~-1 ~4 ~4 air []
fill ~-1 ~1 ~1 ~5 ~3 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~6 ~-6 ~-7 ~6 ~6 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~7 ~6 ~-6 ~7 ~6 ~6 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 deepslate_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 deepslate_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~7 ~-5 ~5 ~7 ~5 deepslate_brick_slab []
fill ~0 ~8 ~-6 ~0 ~8 ~6 deepslate_tiles []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 chiseled_deepslate []
fill ~-7 ~0 ~2 ~-7 ~4 ~2 chiseled_deepslate []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 chiseled_deepslate []
fill ~7 ~0 ~2 ~7 ~4 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x8x2) ---
fill ~-2 ~0 ~8 ~0 ~4 ~8 chiseled_deepslate []
setblock ~-1 ~1 ~8 sculk_catalyst []
setblock ~-1 ~5 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 3 string 18
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 5 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 6
replaceitem block ~5 ~1 ~3 slot.container 10 amethyst_shard 11
replaceitem block ~5 ~1 ~3 slot.container 11 sculk_catalyst 6
replaceitem block ~5 ~1 ~3 slot.container 12 sculk_sensor 7
replaceitem block ~5 ~1 ~3 slot.container 13 recovery_compass 1
replaceitem block ~5 ~1 ~3 slot.container 14 diamond_leggings 1
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 3 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-5 ~1 ~4 slot.container 10 amethyst_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 11 sculk_catalyst 4
replaceitem block ~-5 ~1 ~4 slot.container 12 sculk_sensor 5
replaceitem block ~-5 ~1 ~4 slot.container 13 recovery_compass 1
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond_leggings 1
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

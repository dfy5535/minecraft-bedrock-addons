# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3448/4224 | 主题内编号: b120/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·引水渠跨桥水培温室 (deep_dark_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x11 | 地上高度 5格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 deepslate_tiles [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 deepslate_tiles [] replace water
fill ~-7 ~1 ~-5 ~7 ~7 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 deepslate_bricks []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 sculk []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 bone 19
replaceitem block ~-4 ~-3 ~2 slot.container 1 rotten_flesh 12
replaceitem block ~-4 ~-3 ~2 slot.container 2 phantom_membrane 5
replaceitem block ~-4 ~-3 ~2 slot.container 3 gunpowder 12
replaceitem block ~-4 ~-3 ~2 slot.container 4 string 15
replaceitem block ~-4 ~-3 ~2 slot.container 5 spider_eye 10
replaceitem block ~-4 ~-3 ~2 slot.container 9 enchanted_golden_apple 6
replaceitem block ~-4 ~-3 ~2 slot.container 10 golden_apple 9
replaceitem block ~-4 ~-3 ~2 slot.container 11 experience_bottle 12
replaceitem block ~-4 ~-3 ~2 slot.container 12 diamond 5
replaceitem block ~-4 ~-3 ~2 slot.container 13 amethyst_shard 10
replaceitem block ~-4 ~-3 ~2 slot.container 14 sculk_catalyst 5
loot insert ~-4 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~-4 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~5 ~4 deepslate_tiles []
fill ~-5 ~1 ~-3 ~5 ~4 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~5 ~-4 ~6 ~5 ~4 sculk []
fill ~-5 ~6 ~-3 ~5 ~7 ~3 glass []
fill ~-4 ~6 ~-2 ~4 ~6 ~2 air []
setblock ~0 ~7 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 sculk []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-1 ~0 ~5 ~1 ~6 ~5 chiseled_deepslate []
setblock ~0 ~1 ~5 sculk_catalyst []
setblock ~0 ~7 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 echo_shard 6
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 5
replaceitem block ~-5 ~1 ~2 slot.container 2 bone 14
replaceitem block ~-5 ~1 ~2 slot.container 3 rotten_flesh 15
replaceitem block ~-5 ~1 ~2 slot.container 4 phantom_membrane 8
replaceitem block ~-5 ~1 ~2 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~2 slot.container 9 amethyst_shard 12
replaceitem block ~-5 ~1 ~2 slot.container 10 sculk_catalyst 7
replaceitem block ~-5 ~1 ~2 slot.container 11 sculk_sensor 8
replaceitem block ~-5 ~1 ~2 slot.container 12 recovery_compass 1
replaceitem block ~-5 ~1 ~2 slot.container 13 diamond_leggings 1
replaceitem block ~-5 ~1 ~2 slot.container 14 soul_lantern 8
loot insert ~-5 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

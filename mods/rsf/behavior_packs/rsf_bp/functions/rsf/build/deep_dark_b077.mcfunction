# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3405/4224 | 主题内编号: b077/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子鸟居图腾神道 (deep_dark_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 polished_deepslate [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 polished_deepslate [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 sculk []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 deepslate_bricks []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 polished_deepslate []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-5 ~7 ~6 ~5 polished_deepslate_slab []
fill ~-5 ~7 ~-3 ~5 ~8 ~3 cobbled_deepslate []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 deepslate_brick_slab []
setblock ~0 ~10 ~0 diamond_block []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 deepslate_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-2 ~0 ~7 ~0 ~8 ~7 chiseled_deepslate []
setblock ~-1 ~1 ~7 sculk_catalyst []
setblock ~-1 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~2 slot.container 1 string 18
replaceitem block ~5 ~1 ~2 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~2 slot.container 3 echo_shard 6
replaceitem block ~5 ~1 ~2 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~2 slot.container 5 bone 14
replaceitem block ~5 ~1 ~2 slot.container 9 sculk_catalyst 5
replaceitem block ~5 ~1 ~2 slot.container 10 sculk_sensor 6
replaceitem block ~5 ~1 ~2 slot.container 11 recovery_compass 1
replaceitem block ~5 ~1 ~2 slot.container 12 diamond_leggings 1
replaceitem block ~5 ~1 ~2 slot.container 13 soul_lantern 6
replaceitem block ~5 ~1 ~2 slot.container 14 enchanted_golden_apple 2
loot insert ~5 ~1 ~2 loot "rsf/deep_dark"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 8
replaceitem block ~-5 ~1 ~3 slot.container 1 echo_shard 9
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 18
replaceitem block ~-5 ~1 ~3 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~3 slot.container 9 sculk_catalyst 3
replaceitem block ~-5 ~1 ~3 slot.container 10 sculk_sensor 4
replaceitem block ~-5 ~1 ~3 slot.container 11 recovery_compass 1
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond_leggings 1
replaceitem block ~-5 ~1 ~3 slot.container 13 soul_lantern 11
replaceitem block ~-5 ~1 ~3 slot.container 14 enchanted_golden_apple 7
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~3 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

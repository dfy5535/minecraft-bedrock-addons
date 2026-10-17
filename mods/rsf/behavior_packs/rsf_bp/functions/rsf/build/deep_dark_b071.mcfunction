# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3399/4224 | 主题内编号: b071/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·残破双子哨所遗迹 (deep_dark_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 2格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_deepslate []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~7 ~4 deepslate_bricks []
fill ~2 ~1 ~-4 ~6 ~7 ~4 deepslate_bricks []
fill ~-5 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 deepslate_tiles []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 deepslate_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 deepslate_bricks []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x5) ---
fill ~-2 ~0 ~7 ~0 ~7 ~7 chiseled_deepslate []
setblock ~-1 ~1 ~7 sculk_catalyst []
setblock ~-1 ~8 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 spider_eye 13
replaceitem block ~5 ~1 ~2 slot.container 1 echo_shard 6
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 5
replaceitem block ~5 ~1 ~2 slot.container 3 bone 14
replaceitem block ~5 ~1 ~2 slot.container 4 rotten_flesh 15
replaceitem block ~5 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~5 ~1 ~2 slot.container 9 recovery_compass 1
replaceitem block ~5 ~1 ~2 slot.container 10 diamond_leggings 1
replaceitem block ~5 ~1 ~2 slot.container 11 soul_lantern 12
replaceitem block ~5 ~1 ~2 slot.container 12 enchanted_golden_apple 1
replaceitem block ~5 ~1 ~2 slot.container 13 golden_apple 4
replaceitem block ~5 ~1 ~2 slot.container 14 experience_bottle 14
loot insert ~5 ~1 ~2 loot "rsf/deep_dark"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 17
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~-5 ~1 ~3 slot.container 3 phantom_membrane 11
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 5 string 13
replaceitem block ~-5 ~1 ~3 slot.container 9 recovery_compass 1
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond_leggings 1
replaceitem block ~-5 ~1 ~3 slot.container 11 soul_lantern 10
replaceitem block ~-5 ~1 ~3 slot.container 12 enchanted_golden_apple 6
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 9
replaceitem block ~-5 ~1 ~3 slot.container 14 experience_bottle 12
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~3 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

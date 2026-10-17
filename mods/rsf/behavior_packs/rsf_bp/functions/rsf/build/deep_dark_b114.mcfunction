# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3442/4224 | 主题内编号: b114/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双联拱顶植物培育馆 (deep_dark_conservatory_twin_house)
# 建筑构造: 主体[twin_towers] + 屋顶[dome_glass] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-8 ~1 ~-5 ~8 ~7 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~6 ~4 cobbled_deepslate []
fill ~2 ~1 ~-4 ~7 ~6 ~4 cobbled_deepslate []
fill ~-6 ~1 ~-3 ~-3 ~5 ~3 air []
fill ~3 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-2 ~3 ~-1 ~2 ~5 ~1 deepslate_tiles []
fill ~-3 ~4 ~0 ~3 ~4 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~5 ~-4 ~7 ~5 ~4 deepslate_tiles []
fill ~-6 ~6 ~-3 ~6 ~7 ~3 glass []
fill ~-5 ~6 ~-2 ~5 ~6 ~2 air []
setblock ~0 ~7 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_deepslate []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x5x3) ---
fill ~2 ~0 ~5 ~4 ~5 ~5 chiseled_deepslate []
setblock ~3 ~1 ~5 sculk_catalyst []
setblock ~3 ~6 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~2 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~2 slot.container 2 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~2 slot.container 4 string 18
replaceitem block ~-6 ~1 ~2 slot.container 5 spider_eye 13
replaceitem block ~-6 ~1 ~2 slot.container 9 sculk_sensor 7
replaceitem block ~-6 ~1 ~2 slot.container 10 recovery_compass 1
replaceitem block ~-6 ~1 ~2 slot.container 11 diamond_leggings 1
replaceitem block ~-6 ~1 ~2 slot.container 12 soul_lantern 7
replaceitem block ~-6 ~1 ~2 slot.container 13 enchanted_golden_apple 3
replaceitem block ~-6 ~1 ~2 slot.container 14 golden_apple 6
loot insert ~-6 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

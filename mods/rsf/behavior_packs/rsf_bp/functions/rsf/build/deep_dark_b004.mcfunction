# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3332/4224 | 主题内编号: b004/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子火盆高台神坛 (deep_dark_altar_twin_brazier)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 deepslate_tiles [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 deepslate_tiles [] replace water
fill ~-8 ~1 ~-5 ~8 ~8 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_tile_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 sculk []
setblock ~0 ~0 ~0 amethyst_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 sculk []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 deepslate_tiles []
fill ~2 ~1 ~-4 ~7 ~7 ~4 deepslate_tiles []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 sculk []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-4 ~-7 ~8 ~-4 polished_deepslate []
setblock ~-7 ~9 ~-4 soul_lantern []
fill ~-7 ~6 ~4 ~-7 ~8 ~4 polished_deepslate []
setblock ~-7 ~9 ~4 soul_lantern []
fill ~7 ~6 ~-4 ~7 ~8 ~-4 polished_deepslate []
setblock ~7 ~9 ~-4 soul_lantern []
fill ~7 ~6 ~4 ~7 ~8 ~4 polished_deepslate []
setblock ~7 ~9 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 sculk []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 polished_deepslate []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 polished_deepslate []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 deepslate_tile_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x6x3) ---
fill ~-3 ~0 ~6 ~-1 ~5 ~6 chiseled_deepslate []
setblock ~-2 ~1 ~6 sculk_catalyst []
setblock ~-2 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 phantom_membrane 8
replaceitem block ~-6 ~1 ~2 slot.container 1 gunpowder 15
replaceitem block ~-6 ~1 ~2 slot.container 2 string 18
replaceitem block ~-6 ~1 ~2 slot.container 3 spider_eye 13
replaceitem block ~-6 ~1 ~2 slot.container 4 echo_shard 6
replaceitem block ~-6 ~1 ~2 slot.container 5 ender_pearl 5
replaceitem block ~-6 ~1 ~2 slot.container 9 sculk_sensor 2
replaceitem block ~-6 ~1 ~2 slot.container 10 recovery_compass 1
replaceitem block ~-6 ~1 ~2 slot.container 11 diamond_leggings 1
replaceitem block ~-6 ~1 ~2 slot.container 12 soul_lantern 9
replaceitem block ~-6 ~1 ~2 slot.container 13 enchanted_golden_apple 5
replaceitem block ~-6 ~1 ~2 slot.container 14 golden_apple 8
loot insert ~-6 ~1 ~2 loot "rsf/deep_dark"
summon enderman ~0 ~1 ~-1
summon witch ~-1 ~1 ~1
summon cave_spider ~1 ~1 ~1
summon phantom ~0 ~2 ~0

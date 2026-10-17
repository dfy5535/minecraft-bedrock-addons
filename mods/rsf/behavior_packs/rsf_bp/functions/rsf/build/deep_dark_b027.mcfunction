# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3355/4224 | 主题内编号: b027/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子连廊警戒塔楼 (deep_dark_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x9 | 地上高度 8格 | 地下深度 2格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 deepslate_bricks [] replace water
fill ~-7 ~1 ~-4 ~7 ~10 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 deepslate_tiles []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~9 ~3 deepslate_bricks []
fill ~2 ~1 ~-3 ~6 ~9 ~3 deepslate_bricks []
fill ~-5 ~1 ~-2 ~-3 ~8 ~2 air []
fill ~3 ~1 ~-2 ~5 ~8 ~2 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 deepslate_tiles []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-3 ~6 ~8 ~3 deepslate_tiles []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 deepslate_brick_wall []
fill ~-5 ~9 ~-2 ~5 ~9 ~2 air []
setblock ~-6 ~9 ~-3 chiseled_deepslate []
setblock ~-6 ~10 ~-3 soul_lantern []
setblock ~-6 ~9 ~3 chiseled_deepslate []
setblock ~-6 ~10 ~3 soul_lantern []
setblock ~6 ~9 ~-3 chiseled_deepslate []
setblock ~6 ~10 ~-3 soul_lantern []
setblock ~6 ~9 ~3 chiseled_deepslate []
setblock ~6 ~10 ~3 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 polished_deepslate []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x4x6) ---
fill ~-4 ~0 ~4 ~-2 ~8 ~4 chiseled_deepslate []
setblock ~-3 ~1 ~4 sculk_catalyst []
setblock ~-3 ~9 ~4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~2 smithing_table []
setblock ~-4 ~1 ~2 anvil []
setblock ~4 ~1 ~2 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~1 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~1 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~1 slot.container 3 string 18
replaceitem block ~5 ~1 ~1 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~1 slot.container 5 echo_shard 6
replaceitem block ~5 ~1 ~1 slot.container 9 sculk_catalyst 4
replaceitem block ~5 ~1 ~1 slot.container 10 sculk_sensor 5
replaceitem block ~5 ~1 ~1 slot.container 11 recovery_compass 1
replaceitem block ~5 ~1 ~1 slot.container 12 diamond_leggings 1
replaceitem block ~5 ~1 ~1 slot.container 13 soul_lantern 12
replaceitem block ~5 ~1 ~1 slot.container 14 enchanted_golden_apple 1
loot insert ~5 ~1 ~1 loot "rsf/deep_dark"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~2 slot.container 1 string 13
replaceitem block ~-5 ~1 ~2 slot.container 2 spider_eye 8
replaceitem block ~-5 ~1 ~2 slot.container 3 echo_shard 9
replaceitem block ~-5 ~1 ~2 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~2 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~2 slot.container 9 sculk_catalyst 2
replaceitem block ~-5 ~1 ~2 slot.container 10 sculk_sensor 3
replaceitem block ~-5 ~1 ~2 slot.container 11 recovery_compass 1
replaceitem block ~-5 ~1 ~2 slot.container 12 diamond_leggings 1
replaceitem block ~-5 ~1 ~2 slot.container 13 soul_lantern 10
replaceitem block ~-5 ~1 ~2 slot.container 14 enchanted_golden_apple 6
loot insert ~-5 ~1 ~2 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~2 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3391/4224 | 主题内编号: b063/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·方尖碑镇压古墓穴 (deep_dark_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_deepslate []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 soul_lantern []
setblock ~3 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 gunpowder 12
replaceitem block ~0 ~-3 ~2 slot.container 1 string 15
replaceitem block ~0 ~-3 ~2 slot.container 2 spider_eye 10
replaceitem block ~0 ~-3 ~2 slot.container 3 echo_shard 11
replaceitem block ~0 ~-3 ~2 slot.container 4 ender_pearl 10
replaceitem block ~0 ~-3 ~2 slot.container 5 bone 19
replaceitem block ~0 ~-3 ~2 slot.container 9 sculk_catalyst 4
replaceitem block ~0 ~-3 ~2 slot.container 10 sculk_sensor 5
replaceitem block ~0 ~-3 ~2 slot.container 11 recovery_compass 1
replaceitem block ~0 ~-3 ~2 slot.container 12 diamond_leggings 1
replaceitem block ~0 ~-3 ~2 slot.container 13 soul_lantern 12
replaceitem block ~0 ~-3 ~2 slot.container 14 enchanted_golden_apple 1
loot insert ~0 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~2 loot "chests/ancient_city"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 gunpowder 10
replaceitem block ~0 ~-3 ~-2 slot.container 1 string 13
replaceitem block ~0 ~-3 ~-2 slot.container 2 spider_eye 8
replaceitem block ~0 ~-3 ~-2 slot.container 3 echo_shard 9
replaceitem block ~0 ~-3 ~-2 slot.container 4 ender_pearl 8
replaceitem block ~0 ~-3 ~-2 slot.container 5 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 9 sculk_catalyst 3
replaceitem block ~0 ~-3 ~-2 slot.container 10 sculk_sensor 4
replaceitem block ~0 ~-3 ~-2 slot.container 11 recovery_compass 1
replaceitem block ~0 ~-3 ~-2 slot.container 12 diamond_leggings 1
replaceitem block ~0 ~-3 ~-2 slot.container 13 soul_lantern 11
replaceitem block ~0 ~-3 ~-2 slot.container 14 enchanted_golden_apple 7
loot insert ~0 ~-3 ~-2 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 chiseled_deepslate []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 chiseled_deepslate []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 chiseled_deepslate []
fill ~4 ~1 ~3 ~4 ~8 ~3 chiseled_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 deepslate_tiles []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 deepslate_bricks []
fill ~0 ~14 ~0 ~0 ~17 ~0 sculk_catalyst []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~7 ~-2 chiseled_deepslate []
fill ~-6 ~0 ~2 ~-6 ~7 ~2 chiseled_deepslate []
fill ~6 ~0 ~-2 ~6 ~7 ~-2 chiseled_deepslate []
fill ~6 ~0 ~2 ~6 ~7 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~1 ~0 ~5 ~3 ~4 ~5 chiseled_deepslate []
setblock ~2 ~1 ~5 sculk_catalyst []
setblock ~2 ~5 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~4 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 spider_eye 13
replaceitem block ~4 ~1 ~2 slot.container 1 echo_shard 6
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 5
replaceitem block ~4 ~1 ~2 slot.container 3 bone 14
replaceitem block ~4 ~1 ~2 slot.container 4 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 5 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 9 diamond 7
replaceitem block ~4 ~1 ~2 slot.container 10 amethyst_shard 12
replaceitem block ~4 ~1 ~2 slot.container 11 sculk_catalyst 7
replaceitem block ~4 ~1 ~2 slot.container 12 sculk_sensor 8
replaceitem block ~4 ~1 ~2 slot.container 13 recovery_compass 1
replaceitem block ~4 ~1 ~2 slot.container 14 diamond_leggings 1
loot insert ~4 ~1 ~2 loot "rsf/deep_dark"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 8
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 2 rotten_flesh 18
replaceitem block ~-4 ~1 ~3 slot.container 3 phantom_membrane 11
replaceitem block ~-4 ~1 ~3 slot.container 4 gunpowder 10
replaceitem block ~-4 ~1 ~3 slot.container 5 string 13
replaceitem block ~-4 ~1 ~3 slot.container 9 diamond 5
replaceitem block ~-4 ~1 ~3 slot.container 10 amethyst_shard 10
replaceitem block ~-4 ~1 ~3 slot.container 11 sculk_catalyst 5
replaceitem block ~-4 ~1 ~3 slot.container 12 sculk_sensor 6
replaceitem block ~-4 ~1 ~3 slot.container 13 recovery_compass 1
replaceitem block ~-4 ~1 ~3 slot.container 14 diamond_leggings 1
loot insert ~-4 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~3 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

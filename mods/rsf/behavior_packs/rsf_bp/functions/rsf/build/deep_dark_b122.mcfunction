# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3450/4224 | 主题内编号: b122/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·十字穹顶宏伟圣堂与墓窟 (deep_dark_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 5格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobbled_deepslate [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 cobbled_deepslate [] replace water
fill ~-8 ~1 ~-7 ~8 ~10 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 deepslate_tiles []
setblock ~0 ~-7 ~0 sculk_catalyst []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_lantern []
setblock ~2 ~-6 ~0 soul_lantern []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 phantom_membrane 5
replaceitem block ~0 ~-4 ~-4 slot.container 1 gunpowder 12
replaceitem block ~0 ~-4 ~-4 slot.container 2 string 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 spider_eye 10
replaceitem block ~0 ~-4 ~-4 slot.container 4 echo_shard 11
replaceitem block ~0 ~-4 ~-4 slot.container 5 ender_pearl 10
replaceitem block ~0 ~-4 ~-4 slot.container 9 sculk_sensor 4
replaceitem block ~0 ~-4 ~-4 slot.container 10 recovery_compass 1
replaceitem block ~0 ~-4 ~-4 slot.container 11 diamond_leggings 1
replaceitem block ~0 ~-4 ~-4 slot.container 12 soul_lantern 11
replaceitem block ~0 ~-4 ~-4 slot.container 13 enchanted_golden_apple 7
replaceitem block ~0 ~-4 ~-4 slot.container 14 golden_apple 3
loot insert ~0 ~-4 ~-4 loot "rsf/deep_dark"
loot insert ~0 ~-4 ~-4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~8 ~6 cobbled_deepslate []
fill ~-7 ~1 ~-2 ~7 ~8 ~2 cobbled_deepslate []
fill ~-1 ~1 ~-5 ~1 ~7 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~7 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 deepslate_brick_wall []
setblock ~7 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 deepslate_tiles []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 cobbled_deepslate []
fill ~0 ~14 ~0 ~0 ~17 ~0 sculk_sensor []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 chiseled_deepslate []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 chiseled_deepslate []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 chiseled_deepslate []
fill ~8 ~0 ~2 ~8 ~7 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x9x6) ---
fill ~-4 ~0 ~9 ~-2 ~8 ~9 chiseled_deepslate []
setblock ~-3 ~1 ~9 sculk_catalyst []
setblock ~-3 ~9 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 bone 14
replaceitem block ~-6 ~1 ~4 slot.container 1 rotten_flesh 15
replaceitem block ~-6 ~1 ~4 slot.container 2 phantom_membrane 8
replaceitem block ~-6 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-6 ~1 ~4 slot.container 4 string 18
replaceitem block ~-6 ~1 ~4 slot.container 5 spider_eye 13
replaceitem block ~-6 ~1 ~4 slot.container 9 enchanted_golden_apple 7
replaceitem block ~-6 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~-6 ~1 ~4 slot.container 11 experience_bottle 13
replaceitem block ~-6 ~1 ~4 slot.container 12 diamond 6
replaceitem block ~-6 ~1 ~4 slot.container 13 amethyst_shard 11
replaceitem block ~-6 ~1 ~4 slot.container 14 sculk_catalyst 6
loot insert ~-6 ~1 ~4 loot "rsf/deep_dark"
summon skeleton ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3385/4224 | 主题内编号: b057/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·中央石棺帝王地下陵寝 (deep_dark_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 15x15 | 地上高度 4格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 polished_deepslate [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 polished_deepslate [] replace water
fill ~-7 ~1 ~-7 ~7 ~6 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sculk []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 cobbled_deepslate []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 deepslate_bricks []
setblock ~0 ~-6 ~0 sculk_sensor []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 rotten_flesh 12
replaceitem block ~0 ~-3 ~-4 slot.container 1 phantom_membrane 5
replaceitem block ~0 ~-3 ~-4 slot.container 2 gunpowder 12
replaceitem block ~0 ~-3 ~-4 slot.container 3 string 15
replaceitem block ~0 ~-3 ~-4 slot.container 4 spider_eye 10
replaceitem block ~0 ~-3 ~-4 slot.container 5 echo_shard 11
replaceitem block ~0 ~-3 ~-4 slot.container 9 golden_apple 3
replaceitem block ~0 ~-3 ~-4 slot.container 10 experience_bottle 13
replaceitem block ~0 ~-3 ~-4 slot.container 11 diamond 6
replaceitem block ~0 ~-3 ~-4 slot.container 12 amethyst_shard 11
replaceitem block ~0 ~-3 ~-4 slot.container 13 sculk_catalyst 6
replaceitem block ~0 ~-3 ~-4 slot.container 14 sculk_sensor 7
loot insert ~0 ~-3 ~-4 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 polished_deepslate []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 deepslate_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~6 deepslate_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~5 ~-6 ~6 ~5 ~6 deepslate_bricks []
fill ~-5 ~6 ~-5 ~5 ~6 ~5 cobbled_deepslate []
fill ~-1 ~7 ~-1 ~1 ~7 ~1 diamond_block []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 deepslate_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_deepslate []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_deepslate []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 polished_deepslate_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-4 ~0 ~7 ~-2 ~8 ~7 chiseled_deepslate []
setblock ~-3 ~1 ~7 sculk_catalyst []
setblock ~-3 ~9 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~4 slot.container 1 bone 14
replaceitem block ~5 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~4 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~4 slot.container 5 string 18
replaceitem block ~5 ~1 ~4 slot.container 9 sculk_catalyst 6
replaceitem block ~5 ~1 ~4 slot.container 10 sculk_sensor 7
replaceitem block ~5 ~1 ~4 slot.container 11 recovery_compass 1
replaceitem block ~5 ~1 ~4 slot.container 12 diamond_leggings 1
replaceitem block ~5 ~1 ~4 slot.container 13 soul_lantern 7
replaceitem block ~5 ~1 ~4 slot.container 14 enchanted_golden_apple 3
loot insert ~5 ~1 ~4 loot "rsf/deep_dark"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 rotten_flesh 18
replaceitem block ~-5 ~1 ~5 slot.container 1 phantom_membrane 11
replaceitem block ~-5 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~5 slot.container 3 string 13
replaceitem block ~-5 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~-5 ~1 ~5 slot.container 5 echo_shard 9
replaceitem block ~-5 ~1 ~5 slot.container 9 sculk_catalyst 4
replaceitem block ~-5 ~1 ~5 slot.container 10 sculk_sensor 5
replaceitem block ~-5 ~1 ~5 slot.container 11 recovery_compass 1
replaceitem block ~-5 ~1 ~5 slot.container 12 diamond_leggings 1
replaceitem block ~-5 ~1 ~5 slot.container 13 soul_lantern 12
replaceitem block ~-5 ~1 ~5 slot.container 14 enchanted_golden_apple 1
loot insert ~-5 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~5 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

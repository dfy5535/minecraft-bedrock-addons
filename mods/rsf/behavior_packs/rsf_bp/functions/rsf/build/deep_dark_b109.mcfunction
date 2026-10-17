# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3437/4224 | 主题内编号: b109/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·环柱能量矩阵奥术厅 (deep_dark_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sculk []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cobbled_deepslate []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ender_pearl 10
replaceitem block ~4 ~-2 ~3 slot.container 1 bone 19
replaceitem block ~4 ~-2 ~3 slot.container 2 rotten_flesh 12
replaceitem block ~4 ~-2 ~3 slot.container 3 phantom_membrane 5
replaceitem block ~4 ~-2 ~3 slot.container 4 gunpowder 12
replaceitem block ~4 ~-2 ~3 slot.container 5 string 15
replaceitem block ~4 ~-2 ~3 slot.container 9 sculk_catalyst 5
replaceitem block ~4 ~-2 ~3 slot.container 10 sculk_sensor 6
replaceitem block ~4 ~-2 ~3 slot.container 11 recovery_compass 1
replaceitem block ~4 ~-2 ~3 slot.container 12 diamond_leggings 1
replaceitem block ~4 ~-2 ~3 slot.container 13 soul_lantern 6
replaceitem block ~4 ~-2 ~3 slot.container 14 enchanted_golden_apple 2
loot insert ~4 ~-2 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 deepslate_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 chiseled_deepslate []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 chiseled_deepslate []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 chiseled_deepslate []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 chiseled_deepslate []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 chiseled_deepslate []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 chiseled_deepslate []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 chiseled_deepslate []
fill ~0 ~1 ~5 ~0 ~6 ~5 chiseled_deepslate []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 chiseled_deepslate []
fill ~2 ~1 ~5 ~2 ~6 ~5 chiseled_deepslate []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 chiseled_deepslate []
fill ~4 ~1 ~5 ~4 ~6 ~5 chiseled_deepslate []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 chiseled_deepslate []
fill ~6 ~1 ~5 ~6 ~6 ~5 chiseled_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 chiseled_deepslate []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 chiseled_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 chiseled_deepslate []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 chiseled_deepslate []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 chiseled_deepslate []
fill ~6 ~1 ~1 ~6 ~6 ~1 chiseled_deepslate []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 chiseled_deepslate []
fill ~6 ~1 ~3 ~6 ~6 ~3 chiseled_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 deepslate_bricks []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 polished_deepslate []
fill ~0 ~13 ~0 ~0 ~16 ~0 diamond_block []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_deepslate []
setblock ~0 ~4 ~-7 sculk_sensor []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_deepslate []
setblock ~0 ~4 ~7 sculk_sensor []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_deepslate []
setblock ~-8 ~4 ~0 sculk_sensor []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_deepslate []
setblock ~8 ~4 ~0 sculk_sensor []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x7x3) ---
fill ~0 ~0 ~7 ~2 ~5 ~7 chiseled_deepslate []
setblock ~1 ~1 ~7 sculk_catalyst []
setblock ~1 ~6 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 1 string 18
replaceitem block ~5 ~1 ~3 slot.container 2 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 3 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 5
replaceitem block ~5 ~1 ~3 slot.container 5 bone 14
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 3
replaceitem block ~5 ~1 ~3 slot.container 10 experience_bottle 13
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 6
replaceitem block ~5 ~1 ~3 slot.container 12 amethyst_shard 11
replaceitem block ~5 ~1 ~3 slot.container 13 sculk_catalyst 6
replaceitem block ~5 ~1 ~3 slot.container 14 sculk_sensor 7
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 1 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 18
replaceitem block ~-5 ~1 ~4 slot.container 5 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 10 experience_bottle 18
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 4
replaceitem block ~-5 ~1 ~4 slot.container 12 amethyst_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 13 sculk_catalyst 4
replaceitem block ~-5 ~1 ~4 slot.container 14 sculk_sensor 5
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3331/4224 | 主题内编号: b003/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·环柱巨石方尖祭坛 (deep_dark_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_deepslate []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 deepslate_tiles []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 deepslate_tiles []
setblock ~0 ~-5 ~0 amethyst_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 gunpowder 12
replaceitem block ~0 ~-2 ~-3 slot.container 1 string 15
replaceitem block ~0 ~-2 ~-3 slot.container 2 spider_eye 10
replaceitem block ~0 ~-2 ~-3 slot.container 3 echo_shard 11
replaceitem block ~0 ~-2 ~-3 slot.container 4 ender_pearl 10
replaceitem block ~0 ~-2 ~-3 slot.container 5 bone 19
replaceitem block ~0 ~-2 ~-3 slot.container 9 soul_lantern 8
replaceitem block ~0 ~-2 ~-3 slot.container 10 enchanted_golden_apple 4
replaceitem block ~0 ~-2 ~-3 slot.container 11 golden_apple 7
replaceitem block ~0 ~-2 ~-3 slot.container 12 experience_bottle 17
replaceitem block ~0 ~-2 ~-3 slot.container 13 diamond 10
replaceitem block ~0 ~-2 ~-3 slot.container 14 amethyst_shard 8
loot insert ~0 ~-2 ~-3 loot "rsf/deep_dark"
loot insert ~0 ~-2 ~-3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 deepslate_tiles []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 chiseled_deepslate []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 chiseled_deepslate []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 chiseled_deepslate []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 chiseled_deepslate []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 chiseled_deepslate []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 chiseled_deepslate []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 chiseled_deepslate []
fill ~0 ~1 ~5 ~0 ~7 ~5 chiseled_deepslate []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 chiseled_deepslate []
fill ~2 ~1 ~5 ~2 ~7 ~5 chiseled_deepslate []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 chiseled_deepslate []
fill ~4 ~1 ~5 ~4 ~7 ~5 chiseled_deepslate []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 chiseled_deepslate []
fill ~6 ~1 ~5 ~6 ~7 ~5 chiseled_deepslate []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 chiseled_deepslate []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 chiseled_deepslate []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 chiseled_deepslate []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 chiseled_deepslate []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 chiseled_deepslate []
fill ~6 ~1 ~1 ~6 ~7 ~1 chiseled_deepslate []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 chiseled_deepslate []
fill ~6 ~1 ~3 ~6 ~7 ~3 chiseled_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 deepslate_tiles []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 deepslate_bricks []
fill ~0 ~14 ~0 ~0 ~17 ~0 sculk_catalyst []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_deepslate []
setblock ~0 ~4 ~-7 amethyst_block []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_deepslate []
setblock ~0 ~4 ~7 amethyst_block []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_deepslate []
setblock ~-8 ~4 ~0 amethyst_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_deepslate []
setblock ~8 ~4 ~0 amethyst_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-4 ~0 ~6 ~-2 ~4 ~6 chiseled_deepslate []
setblock ~-3 ~1 ~6 sculk_catalyst []
setblock ~-3 ~5 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 3 string 18
replaceitem block ~5 ~1 ~3 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~3 slot.container 5 echo_shard 6
replaceitem block ~5 ~1 ~3 slot.container 9 diamond 10
replaceitem block ~5 ~1 ~3 slot.container 10 amethyst_shard 8
replaceitem block ~5 ~1 ~3 slot.container 11 sculk_catalyst 3
replaceitem block ~5 ~1 ~3 slot.container 12 sculk_sensor 4
replaceitem block ~5 ~1 ~3 slot.container 13 recovery_compass 1
replaceitem block ~5 ~1 ~3 slot.container 14 diamond_leggings 1
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 1 string 13
replaceitem block ~-5 ~1 ~4 slot.container 2 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 3 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 10 amethyst_shard 13
replaceitem block ~-5 ~1 ~4 slot.container 11 sculk_catalyst 8
replaceitem block ~-5 ~1 ~4 slot.container 12 sculk_sensor 2
replaceitem block ~-5 ~1 ~4 slot.container 13 recovery_compass 1
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond_leggings 1
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

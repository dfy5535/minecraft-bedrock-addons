# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3367/4224 | 主题内编号: b039/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·永恒圣火图腾方尖塔 (deep_dark_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 11x9 | 地上高度 9格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 deepslate_bricks [] replace water
fill ~-5 ~1 ~-4 ~5 ~11 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_deepslate []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-3 ~-3 ~-2 ~3 ~-1 ~2 deepslate_bricks []
fill ~-2 ~-4 ~-1 ~2 ~-1 ~1 air []
setblock ~-2 ~-4 ~0 blast_furnace []
setblock ~2 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~1 anvil []
fill ~0 ~-4 ~-1 ~0 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~2 ~-2 ~1 barrel ["facing_direction"=1]
replaceitem block ~2 ~-2 ~1 slot.container 0 rotten_flesh 12
replaceitem block ~2 ~-2 ~1 slot.container 1 phantom_membrane 5
replaceitem block ~2 ~-2 ~1 slot.container 2 gunpowder 12
replaceitem block ~2 ~-2 ~1 slot.container 3 string 15
replaceitem block ~2 ~-2 ~1 slot.container 4 spider_eye 10
replaceitem block ~2 ~-2 ~1 slot.container 5 echo_shard 11
replaceitem block ~2 ~-2 ~1 slot.container 9 recovery_compass 1
replaceitem block ~2 ~-2 ~1 slot.container 10 diamond_leggings 1
replaceitem block ~2 ~-2 ~1 slot.container 11 soul_lantern 7
replaceitem block ~2 ~-2 ~1 slot.container 12 enchanted_golden_apple 3
replaceitem block ~2 ~-2 ~1 slot.container 13 golden_apple 6
replaceitem block ~2 ~-2 ~1 slot.container 14 experience_bottle 16
loot insert ~2 ~-2 ~1 loot "rsf/deep_dark"
loot insert ~2 ~-2 ~1 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~9 ~3 deepslate_bricks []
fill ~-3 ~1 ~-2 ~3 ~8 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 chiseled_deepslate []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 chiseled_deepslate []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 chiseled_deepslate []
fill ~4 ~1 ~3 ~4 ~9 ~3 chiseled_deepslate []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 deepslate_brick_wall []
setblock ~4 ~2 ~0 deepslate_brick_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 deepslate_tiles []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 deepslate_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 sculk_catalyst []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 chiseled_deepslate []
setblock ~0 ~4 ~-5 amethyst_block []
setblock ~0 ~5 ~-5 soul_lantern []
fill ~0 ~0 ~5 ~0 ~3 ~5 chiseled_deepslate []
setblock ~0 ~4 ~5 amethyst_block []
setblock ~0 ~5 ~5 soul_lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 chiseled_deepslate []
setblock ~-6 ~4 ~0 amethyst_block []
setblock ~-6 ~5 ~0 soul_lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 chiseled_deepslate []
setblock ~6 ~4 ~0 amethyst_block []
setblock ~6 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 5x4x3) ---
fill ~-3 ~0 ~4 ~-1 ~5 ~4 chiseled_deepslate []
setblock ~-2 ~1 ~4 sculk_catalyst []
setblock ~-2 ~6 ~4 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 spider_eye 13
replaceitem block ~3 ~1 ~1 slot.container 1 echo_shard 6
replaceitem block ~3 ~1 ~1 slot.container 2 ender_pearl 5
replaceitem block ~3 ~1 ~1 slot.container 3 bone 14
replaceitem block ~3 ~1 ~1 slot.container 4 rotten_flesh 15
replaceitem block ~3 ~1 ~1 slot.container 5 phantom_membrane 8
replaceitem block ~3 ~1 ~1 slot.container 9 golden_apple 3
replaceitem block ~3 ~1 ~1 slot.container 10 experience_bottle 13
replaceitem block ~3 ~1 ~1 slot.container 11 diamond 6
replaceitem block ~3 ~1 ~1 slot.container 12 amethyst_shard 11
replaceitem block ~3 ~1 ~1 slot.container 13 sculk_catalyst 6
replaceitem block ~3 ~1 ~1 slot.container 14 sculk_sensor 7
loot insert ~3 ~1 ~1 loot "rsf/deep_dark"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 ender_pearl 8
replaceitem block ~-3 ~1 ~2 slot.container 1 bone 17
replaceitem block ~-3 ~1 ~2 slot.container 2 rotten_flesh 18
replaceitem block ~-3 ~1 ~2 slot.container 3 phantom_membrane 11
replaceitem block ~-3 ~1 ~2 slot.container 4 gunpowder 10
replaceitem block ~-3 ~1 ~2 slot.container 5 string 13
replaceitem block ~-3 ~1 ~2 slot.container 9 golden_apple 8
replaceitem block ~-3 ~1 ~2 slot.container 10 experience_bottle 18
replaceitem block ~-3 ~1 ~2 slot.container 11 diamond 4
replaceitem block ~-3 ~1 ~2 slot.container 12 amethyst_shard 9
replaceitem block ~-3 ~1 ~2 slot.container 13 sculk_catalyst 4
replaceitem block ~-3 ~1 ~2 slot.container 14 sculk_sensor 5
loot insert ~-3 ~1 ~2 loot "rsf/deep_dark"
loot insert ~-3 ~1 ~2 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

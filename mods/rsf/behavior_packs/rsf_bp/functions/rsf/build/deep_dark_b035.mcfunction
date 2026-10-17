# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3363/4224 | 主题内编号: b035/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·巨石垒砌古战石冢 (deep_dark_obelisk_cairn_mound)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 deepslate_bricks [] replace water
fill ~-6 ~1 ~-5 ~6 ~8 ~5 air []
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
replaceitem block ~0 ~-3 ~2 slot.container 0 ender_pearl 10
replaceitem block ~0 ~-3 ~2 slot.container 1 bone 19
replaceitem block ~0 ~-3 ~2 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-3 ~2 slot.container 3 phantom_membrane 5
replaceitem block ~0 ~-3 ~2 slot.container 4 gunpowder 12
replaceitem block ~0 ~-3 ~2 slot.container 5 string 15
replaceitem block ~0 ~-3 ~2 slot.container 9 golden_apple 5
replaceitem block ~0 ~-3 ~2 slot.container 10 experience_bottle 15
replaceitem block ~0 ~-3 ~2 slot.container 11 diamond 8
replaceitem block ~0 ~-3 ~2 slot.container 12 amethyst_shard 13
replaceitem block ~0 ~-3 ~2 slot.container 13 sculk_catalyst 8
replaceitem block ~0 ~-3 ~2 slot.container 14 sculk_sensor 2
loot insert ~0 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~2 loot "chests/ancient_city"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 8
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 17
replaceitem block ~0 ~-3 ~-2 slot.container 2 rotten_flesh 18
replaceitem block ~0 ~-3 ~-2 slot.container 3 phantom_membrane 11
replaceitem block ~0 ~-3 ~-2 slot.container 4 gunpowder 10
replaceitem block ~0 ~-3 ~-2 slot.container 5 string 13
replaceitem block ~0 ~-3 ~-2 slot.container 9 golden_apple 4
replaceitem block ~0 ~-3 ~-2 slot.container 10 experience_bottle 14
replaceitem block ~0 ~-3 ~-2 slot.container 11 diamond 7
replaceitem block ~0 ~-3 ~-2 slot.container 12 amethyst_shard 12
replaceitem block ~0 ~-3 ~-2 slot.container 13 sculk_catalyst 7
replaceitem block ~0 ~-3 ~-2 slot.container 14 sculk_sensor 8
loot insert ~0 ~-3 ~-2 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 deepslate_bricks []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 air []
fill ~5 ~1 ~4 ~5 ~7 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 chiseled_deepslate []
fill ~4 ~1 ~-3 ~4 ~6 ~-3 chiseled_deepslate []
fill ~-4 ~1 ~3 ~-4 ~6 ~3 chiseled_deepslate []
fill ~4 ~1 ~3 ~4 ~6 ~3 chiseled_deepslate []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 deepslate_tiles []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 deepslate_tiles []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 sculk_catalyst []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_deepslate []
setblock ~0 ~4 ~-6 amethyst_block []
setblock ~0 ~5 ~-6 soul_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_deepslate []
setblock ~0 ~4 ~6 amethyst_block []
setblock ~0 ~5 ~6 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_deepslate []
setblock ~-7 ~4 ~0 amethyst_block []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_deepslate []
setblock ~7 ~4 ~0 amethyst_block []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 6x7x4) ---
fill ~-2 ~0 ~7 ~0 ~6 ~7 chiseled_deepslate []
setblock ~-1 ~1 ~7 sculk_catalyst []
setblock ~-1 ~7 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~4 ~1 ~2 slot.container 1 phantom_membrane 8
replaceitem block ~4 ~1 ~2 slot.container 2 gunpowder 15
replaceitem block ~4 ~1 ~2 slot.container 3 string 18
replaceitem block ~4 ~1 ~2 slot.container 4 spider_eye 13
replaceitem block ~4 ~1 ~2 slot.container 5 echo_shard 6
replaceitem block ~4 ~1 ~2 slot.container 9 soul_lantern 9
replaceitem block ~4 ~1 ~2 slot.container 10 enchanted_golden_apple 5
replaceitem block ~4 ~1 ~2 slot.container 11 golden_apple 8
replaceitem block ~4 ~1 ~2 slot.container 12 experience_bottle 18
replaceitem block ~4 ~1 ~2 slot.container 13 diamond 4
replaceitem block ~4 ~1 ~2 slot.container 14 amethyst_shard 9
loot insert ~4 ~1 ~2 loot "rsf/deep_dark"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-4 ~1 ~3 slot.container 1 string 13
replaceitem block ~-4 ~1 ~3 slot.container 2 spider_eye 8
replaceitem block ~-4 ~1 ~3 slot.container 3 echo_shard 9
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-4 ~1 ~3 slot.container 9 soul_lantern 7
replaceitem block ~-4 ~1 ~3 slot.container 10 enchanted_golden_apple 3
replaceitem block ~-4 ~1 ~3 slot.container 11 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 12 experience_bottle 16
replaceitem block ~-4 ~1 ~3 slot.container 13 diamond 9
replaceitem block ~-4 ~1 ~3 slot.container 14 amethyst_shard 14
loot insert ~-4 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-4 ~1 ~3 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

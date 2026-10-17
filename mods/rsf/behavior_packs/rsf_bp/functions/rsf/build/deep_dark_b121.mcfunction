# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3449/4224 | 主题内编号: b121/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·卫城廊柱王座大殿与地宫 (deep_dark_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 polished_deepslate [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 polished_deepslate [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_deepslate_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sculk []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_deepslate []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 soul_lantern []
setblock ~5 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 spider_eye 10
replaceitem block ~0 ~-3 ~4 slot.container 1 echo_shard 11
replaceitem block ~0 ~-3 ~4 slot.container 2 ender_pearl 10
replaceitem block ~0 ~-3 ~4 slot.container 3 bone 19
replaceitem block ~0 ~-3 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~0 ~-3 ~4 slot.container 5 phantom_membrane 5
replaceitem block ~0 ~-3 ~4 slot.container 9 soul_lantern 10
replaceitem block ~0 ~-3 ~4 slot.container 10 enchanted_golden_apple 6
replaceitem block ~0 ~-3 ~4 slot.container 11 golden_apple 9
replaceitem block ~0 ~-3 ~4 slot.container 12 experience_bottle 12
replaceitem block ~0 ~-3 ~4 slot.container 13 diamond 5
replaceitem block ~0 ~-3 ~4 slot.container 14 amethyst_shard 10
loot insert ~0 ~-3 ~4 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~4 loot "chests/ancient_city"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 spider_eye 8
replaceitem block ~0 ~-3 ~-4 slot.container 1 echo_shard 9
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 8
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 17
replaceitem block ~0 ~-3 ~-4 slot.container 4 rotten_flesh 18
replaceitem block ~0 ~-3 ~-4 slot.container 5 phantom_membrane 11
replaceitem block ~0 ~-3 ~-4 slot.container 9 soul_lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 10 enchanted_golden_apple 5
replaceitem block ~0 ~-3 ~-4 slot.container 11 golden_apple 8
replaceitem block ~0 ~-3 ~-4 slot.container 12 experience_bottle 18
replaceitem block ~0 ~-3 ~-4 slot.container 13 diamond 4
replaceitem block ~0 ~-3 ~-4 slot.container 14 amethyst_shard 9
loot insert ~0 ~-3 ~-4 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~-4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~7 ~6 polished_deepslate []
fill ~-6 ~1 ~0 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~7 ~-6 chiseled_deepslate []
fill ~-5 ~1 ~-6 ~-5 ~7 ~-6 chiseled_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~7 ~-6 chiseled_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~7 ~-6 chiseled_deepslate []
fill ~1 ~1 ~-6 ~1 ~7 ~-6 chiseled_deepslate []
fill ~3 ~1 ~-6 ~3 ~7 ~-6 chiseled_deepslate []
fill ~5 ~1 ~-6 ~5 ~7 ~-6 chiseled_deepslate []
fill ~7 ~1 ~-6 ~7 ~7 ~-6 chiseled_deepslate []
fill ~-7 ~7 ~-6 ~7 ~7 ~-1 deepslate_bricks []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-7 ~-8 ~8 ~7 polished_deepslate_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-7 ~8 ~8 ~7 polished_deepslate_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-6 ~-7 ~9 ~6 polished_deepslate_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-6 ~7 ~9 ~6 polished_deepslate_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-6 ~6 ~9 ~6 polished_deepslate_slab []
fill ~0 ~10 ~-7 ~0 ~10 ~7 deepslate_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 chiseled_deepslate []
setblock ~-9 ~4 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 chiseled_deepslate []
setblock ~-9 ~4 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 chiseled_deepslate []
setblock ~9 ~4 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 chiseled_deepslate []
setblock ~9 ~4 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~2 ~0 ~8 ~4 ~7 ~8 chiseled_deepslate []
setblock ~3 ~1 ~8 sculk_catalyst []
setblock ~3 ~8 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-6 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~6 ~1 ~4 slot.container 1 bone 14
replaceitem block ~6 ~1 ~4 slot.container 2 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 3 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 4 gunpowder 15
replaceitem block ~6 ~1 ~4 slot.container 5 string 18
replaceitem block ~6 ~1 ~4 slot.container 9 recovery_compass 1
replaceitem block ~6 ~1 ~4 slot.container 10 diamond_leggings 1
replaceitem block ~6 ~1 ~4 slot.container 11 soul_lantern 6
replaceitem block ~6 ~1 ~4 slot.container 12 enchanted_golden_apple 2
replaceitem block ~6 ~1 ~4 slot.container 13 golden_apple 5
replaceitem block ~6 ~1 ~4 slot.container 14 experience_bottle 15
loot insert ~6 ~1 ~4 loot "rsf/deep_dark"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 rotten_flesh 18
replaceitem block ~-6 ~1 ~5 slot.container 1 phantom_membrane 11
replaceitem block ~-6 ~1 ~5 slot.container 2 gunpowder 10
replaceitem block ~-6 ~1 ~5 slot.container 3 string 13
replaceitem block ~-6 ~1 ~5 slot.container 4 spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 5 echo_shard 9
replaceitem block ~-6 ~1 ~5 slot.container 9 recovery_compass 1
replaceitem block ~-6 ~1 ~5 slot.container 10 diamond_leggings 1
replaceitem block ~-6 ~1 ~5 slot.container 11 soul_lantern 11
replaceitem block ~-6 ~1 ~5 slot.container 12 enchanted_golden_apple 7
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_apple 3
replaceitem block ~-6 ~1 ~5 slot.container 14 experience_bottle 13
loot insert ~-6 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~5 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

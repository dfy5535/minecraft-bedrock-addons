# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3369/4224 | 主题内编号: b041/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·八角看台古罗马斗技场 (deep_dark_arena_colosseum_ring)
# 建筑构造: 主体[octagonal_keep] + 屋顶[open_colonnade] + 地宫[trial_pit] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 5格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 polished_deepslate [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 polished_deepslate [] replace water
fill ~-8 ~1 ~-7 ~8 ~7 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_deepslate_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sculk []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 polished_deepslate []
fill ~-6 ~-4 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-4 ~0 diamond_block []
setblock ~-5 ~-4 ~-4 soul_lantern []
setblock ~5 ~-4 ~4 soul_lantern []
setblock ~0 ~-2 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-2 ~4 slot.container 0 ender_pearl 10
replaceitem block ~0 ~-2 ~4 slot.container 1 bone 19
replaceitem block ~0 ~-2 ~4 slot.container 2 rotten_flesh 12
replaceitem block ~0 ~-2 ~4 slot.container 3 phantom_membrane 5
replaceitem block ~0 ~-2 ~4 slot.container 4 gunpowder 12
replaceitem block ~0 ~-2 ~4 slot.container 5 string 15
replaceitem block ~0 ~-2 ~4 slot.container 9 soul_lantern 12
replaceitem block ~0 ~-2 ~4 slot.container 10 enchanted_golden_apple 1
replaceitem block ~0 ~-2 ~4 slot.container 11 golden_apple 4
replaceitem block ~0 ~-2 ~4 slot.container 12 experience_bottle 14
replaceitem block ~0 ~-2 ~4 slot.container 13 diamond 7
replaceitem block ~0 ~-2 ~4 slot.container 14 amethyst_shard 12
loot insert ~0 ~-2 ~4 loot "rsf/deep_dark"
loot insert ~0 ~-2 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-7 ~1 ~-6 ~7 ~5 ~6 polished_deepslate []
fill ~-6 ~1 ~-5 ~6 ~4 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 air []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 air []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 air []
fill ~7 ~1 ~6 ~7 ~6 ~6 air []
fill ~-6 ~1 ~-5 ~-6 ~5 ~-5 chiseled_deepslate []
fill ~6 ~1 ~-5 ~6 ~5 ~-5 chiseled_deepslate []
fill ~-6 ~1 ~5 ~-6 ~5 ~5 chiseled_deepslate []
fill ~6 ~1 ~5 ~6 ~5 ~5 chiseled_deepslate []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~5 ~-6 ~-7 ~7 ~-6 chiseled_deepslate []
setblock ~-7 ~8 ~-6 soul_lantern []
fill ~-7 ~5 ~6 ~-7 ~7 ~6 chiseled_deepslate []
setblock ~-7 ~8 ~6 soul_lantern []
fill ~7 ~5 ~-6 ~7 ~7 ~-6 chiseled_deepslate []
setblock ~7 ~8 ~-6 soul_lantern []
fill ~7 ~5 ~6 ~7 ~7 ~6 chiseled_deepslate []
setblock ~7 ~8 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~3 ~-8 chiseled_deepslate []
setblock ~-9 ~4 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~3 ~8 chiseled_deepslate []
setblock ~-9 ~4 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~3 ~-8 chiseled_deepslate []
setblock ~9 ~4 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~3 ~8 chiseled_deepslate []
setblock ~9 ~4 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-1 ~0 ~9 ~1 ~7 ~9 chiseled_deepslate []
setblock ~0 ~1 ~9 sculk_catalyst []
setblock ~0 ~8 ~9 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

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
replaceitem block ~6 ~1 ~4 slot.container 11 soul_lantern 10
replaceitem block ~6 ~1 ~4 slot.container 12 enchanted_golden_apple 6
replaceitem block ~6 ~1 ~4 slot.container 13 golden_apple 9
replaceitem block ~6 ~1 ~4 slot.container 14 experience_bottle 12
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
replaceitem block ~-6 ~1 ~5 slot.container 11 soul_lantern 8
replaceitem block ~-6 ~1 ~5 slot.container 12 enchanted_golden_apple 4
replaceitem block ~-6 ~1 ~5 slot.container 13 golden_apple 7
replaceitem block ~-6 ~1 ~5 slot.container 14 experience_bottle 17
loot insert ~-6 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~5 loot "chests/ancient_city"
summon witch ~0 ~1 ~-1
summon cave_spider ~-1 ~1 ~1

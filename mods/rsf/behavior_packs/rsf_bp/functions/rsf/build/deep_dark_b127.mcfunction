# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3455/4224 | 主题内编号: b127/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·万神殿巨型穹顶与试炼宫 (deep_dark_grand_rotunda_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 deepslate_bricks [] replace water
fill ~-8 ~1 ~-7 ~8 ~9 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-5 ~-5 ~6 ~0 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 sculk_catalyst []
setblock ~-5 ~-5 ~-4 soul_lantern []
setblock ~5 ~-5 ~4 soul_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 spider_eye 10
replaceitem block ~0 ~-3 ~4 slot.container 1 echo_shard 11
replaceitem block ~0 ~-3 ~4 slot.container 2 ender_pearl 10
replaceitem block ~0 ~-3 ~4 slot.container 3 bone 19
replaceitem block ~0 ~-3 ~4 slot.container 4 rotten_flesh 12
replaceitem block ~0 ~-3 ~4 slot.container 5 phantom_membrane 5
replaceitem block ~0 ~-3 ~4 slot.container 9 recovery_compass 1
replaceitem block ~0 ~-3 ~4 slot.container 10 diamond_leggings 1
replaceitem block ~0 ~-3 ~4 slot.container 11 soul_lantern 9
replaceitem block ~0 ~-3 ~4 slot.container 12 enchanted_golden_apple 5
replaceitem block ~0 ~-3 ~4 slot.container 13 golden_apple 8
replaceitem block ~0 ~-3 ~4 slot.container 14 experience_bottle 18
loot insert ~0 ~-3 ~4 loot "rsf/deep_dark"
loot insert ~0 ~-3 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 deepslate_tiles []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 chiseled_deepslate []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 chiseled_deepslate []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 chiseled_deepslate []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 chiseled_deepslate []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 chiseled_deepslate []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 chiseled_deepslate []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 chiseled_deepslate []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 chiseled_deepslate []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 chiseled_deepslate []
fill ~1 ~1 ~6 ~1 ~6 ~6 chiseled_deepslate []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 chiseled_deepslate []
fill ~3 ~1 ~6 ~3 ~6 ~6 chiseled_deepslate []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 chiseled_deepslate []
fill ~5 ~1 ~6 ~5 ~6 ~6 chiseled_deepslate []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 chiseled_deepslate []
fill ~7 ~1 ~6 ~7 ~6 ~6 chiseled_deepslate []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 chiseled_deepslate []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 chiseled_deepslate []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 chiseled_deepslate []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 chiseled_deepslate []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 chiseled_deepslate []
fill ~7 ~1 ~0 ~7 ~6 ~0 chiseled_deepslate []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 chiseled_deepslate []
fill ~7 ~1 ~2 ~7 ~6 ~2 chiseled_deepslate []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 chiseled_deepslate []
fill ~7 ~1 ~4 ~7 ~6 ~4 chiseled_deepslate []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 deepslate_tiles []
fill ~-6 ~8 ~-5 ~6 ~9 ~5 glass []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 chiseled_deepslate []
setblock ~0 ~4 ~-8 amethyst_block []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 chiseled_deepslate []
setblock ~0 ~4 ~8 amethyst_block []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 chiseled_deepslate []
setblock ~-9 ~4 ~0 amethyst_block []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 chiseled_deepslate []
setblock ~9 ~4 ~0 amethyst_block []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~1 ~0 ~8 ~3 ~8 ~8 chiseled_deepslate []
setblock ~2 ~1 ~8 sculk_catalyst []
setblock ~2 ~9 ~8 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 spider_eye 13
replaceitem block ~6 ~1 ~4 slot.container 1 echo_shard 6
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 5
replaceitem block ~6 ~1 ~4 slot.container 3 bone 14
replaceitem block ~6 ~1 ~4 slot.container 4 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 5 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 9 sculk_catalyst 6
replaceitem block ~6 ~1 ~4 slot.container 10 sculk_sensor 7
replaceitem block ~6 ~1 ~4 slot.container 11 recovery_compass 1
replaceitem block ~6 ~1 ~4 slot.container 12 diamond_leggings 1
replaceitem block ~6 ~1 ~4 slot.container 13 soul_lantern 7
replaceitem block ~6 ~1 ~4 slot.container 14 enchanted_golden_apple 3
loot insert ~6 ~1 ~4 loot "rsf/deep_dark"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 8
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 2 rotten_flesh 18
replaceitem block ~-6 ~1 ~5 slot.container 3 phantom_membrane 11
replaceitem block ~-6 ~1 ~5 slot.container 4 gunpowder 10
replaceitem block ~-6 ~1 ~5 slot.container 5 string 13
replaceitem block ~-6 ~1 ~5 slot.container 9 sculk_catalyst 4
replaceitem block ~-6 ~1 ~5 slot.container 10 sculk_sensor 5
replaceitem block ~-6 ~1 ~5 slot.container 11 recovery_compass 1
replaceitem block ~-6 ~1 ~5 slot.container 12 diamond_leggings 1
replaceitem block ~-6 ~1 ~5 slot.container 13 soul_lantern 12
replaceitem block ~-6 ~1 ~5 slot.container 14 enchanted_golden_apple 1
loot insert ~-6 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~5 loot "chests/ancient_city"
summon phantom ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

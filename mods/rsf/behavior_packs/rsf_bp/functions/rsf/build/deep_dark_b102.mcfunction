# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3430/4224 | 主题内编号: b102/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·双子箭塔联防碉楼 (deep_dark_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobbled_deepslate [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 cobbled_deepslate [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 deepslate_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_deepslate []
setblock ~0 ~0 ~0 sculk_sensor []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 cobbled_deepslate []
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~2 soul_lantern []
setblock ~5 ~-5 ~-2 soul_lantern []
setblock ~5 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~2 slot.container 0 echo_shard 11
replaceitem block ~5 ~-3 ~2 slot.container 1 ender_pearl 10
replaceitem block ~5 ~-3 ~2 slot.container 2 bone 19
replaceitem block ~5 ~-3 ~2 slot.container 3 rotten_flesh 12
replaceitem block ~5 ~-3 ~2 slot.container 4 phantom_membrane 5
replaceitem block ~5 ~-3 ~2 slot.container 5 gunpowder 12
replaceitem block ~5 ~-3 ~2 slot.container 9 experience_bottle 14
replaceitem block ~5 ~-3 ~2 slot.container 10 diamond 7
replaceitem block ~5 ~-3 ~2 slot.container 11 amethyst_shard 12
replaceitem block ~5 ~-3 ~2 slot.container 12 sculk_catalyst 7
replaceitem block ~5 ~-3 ~2 slot.container 13 sculk_sensor 8
replaceitem block ~5 ~-3 ~2 slot.container 14 recovery_compass 1
loot insert ~5 ~-3 ~2 loot "rsf/deep_dark"
loot insert ~5 ~-3 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 cobbled_deepslate []
fill ~2 ~1 ~-4 ~7 ~8 ~4 cobbled_deepslate []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 deepslate_tiles []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 deepslate_tiles []
fill ~-7 ~8 ~-4 ~7 ~8 ~4 deepslate_brick_wall []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 air []
setblock ~-7 ~8 ~-4 chiseled_deepslate []
setblock ~-7 ~9 ~-4 soul_lantern []
setblock ~-7 ~8 ~4 chiseled_deepslate []
setblock ~-7 ~9 ~4 soul_lantern []
setblock ~7 ~8 ~-4 chiseled_deepslate []
setblock ~7 ~9 ~-4 soul_lantern []
setblock ~7 ~8 ~4 chiseled_deepslate []
setblock ~7 ~9 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 chiseled_deepslate []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 chiseled_deepslate []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 chiseled_deepslate []
fill ~8 ~0 ~2 ~8 ~6 ~2 chiseled_deepslate []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x5x6) ---
fill ~-3 ~0 ~5 ~-1 ~8 ~5 chiseled_deepslate []
setblock ~-2 ~1 ~5 sculk_catalyst []
setblock ~-2 ~9 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~3 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 string 18
replaceitem block ~-6 ~1 ~2 slot.container 1 spider_eye 13
replaceitem block ~-6 ~1 ~2 slot.container 2 echo_shard 6
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 5
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 14
replaceitem block ~-6 ~1 ~2 slot.container 5 rotten_flesh 15
replaceitem block ~-6 ~1 ~2 slot.container 9 enchanted_golden_apple 1
replaceitem block ~-6 ~1 ~2 slot.container 10 golden_apple 4
replaceitem block ~-6 ~1 ~2 slot.container 11 experience_bottle 14
replaceitem block ~-6 ~1 ~2 slot.container 12 diamond 7
replaceitem block ~-6 ~1 ~2 slot.container 13 amethyst_shard 12
replaceitem block ~-6 ~1 ~2 slot.container 14 sculk_catalyst 7
loot insert ~-6 ~1 ~2 loot "rsf/deep_dark"
summon cave_spider ~0 ~1 ~-1
summon phantom ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1

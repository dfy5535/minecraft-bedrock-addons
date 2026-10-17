# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3451/4224 | 主题内编号: b123/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·四角塔楼领主城堡复合体 (deep_dark_grand_citadel_fortress)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_smoker]
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

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 deepslate_bricks []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-6 ~-5 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-5 ~0 ~0 ~-5 ladder ["facing_direction"=3]
setblock ~-5 ~-5 ~4 soul_lantern []
setblock ~5 ~-5 ~-4 soul_lantern []
setblock ~5 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~-3 ~4 slot.container 0 gunpowder 12
replaceitem block ~5 ~-3 ~4 slot.container 1 string 15
replaceitem block ~5 ~-3 ~4 slot.container 2 spider_eye 10
replaceitem block ~5 ~-3 ~4 slot.container 3 echo_shard 11
replaceitem block ~5 ~-3 ~4 slot.container 4 ender_pearl 10
replaceitem block ~5 ~-3 ~4 slot.container 5 bone 19
replaceitem block ~5 ~-3 ~4 slot.container 9 sculk_catalyst 4
replaceitem block ~5 ~-3 ~4 slot.container 10 sculk_sensor 5
replaceitem block ~5 ~-3 ~4 slot.container 11 recovery_compass 1
replaceitem block ~5 ~-3 ~4 slot.container 12 diamond_leggings 1
replaceitem block ~5 ~-3 ~4 slot.container 13 soul_lantern 12
replaceitem block ~5 ~-3 ~4 slot.container 14 enchanted_golden_apple 1
loot insert ~5 ~-3 ~4 loot "rsf/deep_dark"
loot insert ~5 ~-3 ~4 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~7 ~6 deepslate_bricks []
fill ~-6 ~1 ~-5 ~6 ~6 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~9 ~-5 deepslate_tiles []
setblock ~-7 ~10 ~-6 soul_lantern []
fill ~-7 ~1 ~5 ~-6 ~9 ~6 deepslate_tiles []
setblock ~-7 ~10 ~5 soul_lantern []
fill ~6 ~1 ~-6 ~7 ~9 ~-5 deepslate_tiles []
setblock ~6 ~10 ~-6 soul_lantern []
fill ~6 ~1 ~5 ~7 ~9 ~6 deepslate_tiles []
setblock ~6 ~10 ~5 soul_lantern []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 deepslate_tiles []
fill ~-7 ~8 ~-6 ~7 ~8 ~6 deepslate_brick_wall []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 air []
setblock ~-7 ~8 ~-6 chiseled_deepslate []
setblock ~-7 ~9 ~-6 soul_lantern []
setblock ~-7 ~8 ~6 chiseled_deepslate []
setblock ~-7 ~9 ~6 soul_lantern []
setblock ~7 ~8 ~-6 chiseled_deepslate []
setblock ~7 ~9 ~-6 soul_lantern []
setblock ~7 ~8 ~6 chiseled_deepslate []
setblock ~7 ~9 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-9 ~1 ~-8 ~9 ~2 ~8 deepslate_brick_wall []
fill ~-8 ~1 ~-7 ~8 ~2 ~7 air []
fill ~-1 ~1 ~-8 ~1 ~2 ~-8 air []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 8x7x2) ---
fill ~-3 ~0 ~7 ~-1 ~4 ~7 chiseled_deepslate []
setblock ~-2 ~1 ~7 sculk_catalyst []
setblock ~-2 ~5 ~7 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 rotten_flesh 15
replaceitem block ~6 ~1 ~4 slot.container 1 phantom_membrane 8
replaceitem block ~6 ~1 ~4 slot.container 2 gunpowder 15
replaceitem block ~6 ~1 ~4 slot.container 3 string 18
replaceitem block ~6 ~1 ~4 slot.container 4 spider_eye 13
replaceitem block ~6 ~1 ~4 slot.container 5 echo_shard 6
replaceitem block ~6 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~6 ~1 ~4 slot.container 10 amethyst_shard 9
replaceitem block ~6 ~1 ~4 slot.container 11 sculk_catalyst 4
replaceitem block ~6 ~1 ~4 slot.container 12 sculk_sensor 5
replaceitem block ~6 ~1 ~4 slot.container 13 recovery_compass 1
replaceitem block ~6 ~1 ~4 slot.container 14 diamond_leggings 1
loot insert ~6 ~1 ~4 loot "rsf/deep_dark"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 gunpowder 10
replaceitem block ~-6 ~1 ~5 slot.container 1 string 13
replaceitem block ~-6 ~1 ~5 slot.container 2 spider_eye 8
replaceitem block ~-6 ~1 ~5 slot.container 3 echo_shard 9
replaceitem block ~-6 ~1 ~5 slot.container 4 ender_pearl 8
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 17
replaceitem block ~-6 ~1 ~5 slot.container 9 diamond 9
replaceitem block ~-6 ~1 ~5 slot.container 10 amethyst_shard 14
replaceitem block ~-6 ~1 ~5 slot.container 11 sculk_catalyst 2
replaceitem block ~-6 ~1 ~5 slot.container 12 sculk_sensor 3
replaceitem block ~-6 ~1 ~5 slot.container 13 recovery_compass 1
replaceitem block ~-6 ~1 ~5 slot.container 14 diamond_leggings 1
loot insert ~-6 ~1 ~5 loot "rsf/deep_dark"
loot insert ~-6 ~1 ~5 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

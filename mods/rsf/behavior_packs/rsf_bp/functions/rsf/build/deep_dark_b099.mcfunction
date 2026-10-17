# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3427/4224 | 主题内编号: b099/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·铁闸门瓮城防御堡 (deep_dark_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 deepslate_bricks [] replace water
fill ~-7 ~1 ~-5 ~7 ~8 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 deepslate_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_deepslate []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 deepslate_bricks []
setblock ~0 ~0 ~0 sculk_catalyst []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 deepslate_tiles []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 spider_eye 10
replaceitem block ~4 ~-2 ~2 slot.container 1 echo_shard 11
replaceitem block ~4 ~-2 ~2 slot.container 2 ender_pearl 10
replaceitem block ~4 ~-2 ~2 slot.container 3 bone 19
replaceitem block ~4 ~-2 ~2 slot.container 4 rotten_flesh 12
replaceitem block ~4 ~-2 ~2 slot.container 5 phantom_membrane 5
replaceitem block ~4 ~-2 ~2 slot.container 9 sculk_catalyst 2
replaceitem block ~4 ~-2 ~2 slot.container 10 sculk_sensor 3
replaceitem block ~4 ~-2 ~2 slot.container 11 recovery_compass 1
replaceitem block ~4 ~-2 ~2 slot.container 12 diamond_leggings 1
replaceitem block ~4 ~-2 ~2 slot.container 13 soul_lantern 10
replaceitem block ~4 ~-2 ~2 slot.container 14 enchanted_golden_apple 6
loot insert ~4 ~-2 ~2 loot "rsf/deep_dark"
loot insert ~4 ~-2 ~2 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~6 ~4 deepslate_bricks []
fill ~-5 ~1 ~-3 ~5 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-4 ~6 ~6 ~4 deepslate_tiles []
fill ~-6 ~7 ~-4 ~6 ~7 ~4 deepslate_brick_wall []
fill ~-5 ~7 ~-3 ~5 ~7 ~3 air []
setblock ~-6 ~7 ~-4 chiseled_deepslate []
setblock ~-6 ~8 ~-4 soul_lantern []
setblock ~-6 ~7 ~4 chiseled_deepslate []
setblock ~-6 ~8 ~4 soul_lantern []
setblock ~6 ~7 ~-4 chiseled_deepslate []
setblock ~6 ~8 ~-4 soul_lantern []
setblock ~6 ~7 ~4 chiseled_deepslate []
setblock ~6 ~8 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 deepslate_tiles []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-4 ~0 ~5 ~-2 ~5 ~5 chiseled_deepslate []
setblock ~-3 ~1 ~5 sculk_catalyst []
setblock ~-3 ~6 ~5 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 rotten_flesh 15
replaceitem block ~5 ~1 ~2 slot.container 1 phantom_membrane 8
replaceitem block ~5 ~1 ~2 slot.container 2 gunpowder 15
replaceitem block ~5 ~1 ~2 slot.container 3 string 18
replaceitem block ~5 ~1 ~2 slot.container 4 spider_eye 13
replaceitem block ~5 ~1 ~2 slot.container 5 echo_shard 6
replaceitem block ~5 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~5 ~1 ~2 slot.container 10 experience_bottle 17
replaceitem block ~5 ~1 ~2 slot.container 11 diamond 10
replaceitem block ~5 ~1 ~2 slot.container 12 amethyst_shard 8
replaceitem block ~5 ~1 ~2 slot.container 13 sculk_catalyst 3
replaceitem block ~5 ~1 ~2 slot.container 14 sculk_sensor 4
loot insert ~5 ~1 ~2 loot "rsf/deep_dark"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 10
replaceitem block ~-5 ~1 ~3 slot.container 1 string 13
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 8
replaceitem block ~-5 ~1 ~3 slot.container 3 echo_shard 9
replaceitem block ~-5 ~1 ~3 slot.container 4 ender_pearl 8
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 17
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 10 experience_bottle 15
replaceitem block ~-5 ~1 ~3 slot.container 11 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 12 amethyst_shard 13
replaceitem block ~-5 ~1 ~3 slot.container 13 sculk_catalyst 8
replaceitem block ~-5 ~1 ~3 slot.container 14 sculk_sensor 2
loot insert ~-5 ~1 ~3 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~3 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

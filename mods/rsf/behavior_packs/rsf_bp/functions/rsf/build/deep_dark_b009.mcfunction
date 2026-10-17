# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3337/4224 | 主题内编号: b009/128
# 地形主题 #27: 地下深暗之域与远古遗迹 (deep_dark) —— 带深板岩砖巨型传送框与幽匿催发祭坛
# 建筑名称: 深暗远古城系·铁栏双室地下死牢 (deep_dark_dungeon_iron_prison)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[prison_dungeon] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 15x13 | 地上高度 4格 | 地下深度 4格
# 适用群系: deep_dark
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 polished_deepslate [] replace water
fill ~-7 ~1 ~-6 ~7 ~6 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_deepslate_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sculk []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 deepslate_bricks []
setblock ~0 ~0 ~0 diamond_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_deepslate []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-5 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-5 ~3 soul_lantern []
setblock ~4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-3 ~3 slot.container 0 rotten_flesh 12
replaceitem block ~4 ~-3 ~3 slot.container 1 phantom_membrane 5
replaceitem block ~4 ~-3 ~3 slot.container 2 gunpowder 12
replaceitem block ~4 ~-3 ~3 slot.container 3 string 15
replaceitem block ~4 ~-3 ~3 slot.container 4 spider_eye 10
replaceitem block ~4 ~-3 ~3 slot.container 5 echo_shard 11
replaceitem block ~4 ~-3 ~3 slot.container 9 diamond 4
replaceitem block ~4 ~-3 ~3 slot.container 10 amethyst_shard 9
replaceitem block ~4 ~-3 ~3 slot.container 11 sculk_catalyst 4
replaceitem block ~4 ~-3 ~3 slot.container 12 sculk_sensor 5
replaceitem block ~4 ~-3 ~3 slot.container 13 recovery_compass 1
replaceitem block ~4 ~-3 ~3 slot.container 14 diamond_leggings 1
loot insert ~4 ~-3 ~3 loot "rsf/deep_dark"
loot insert ~4 ~-3 ~3 loot "chests/ancient_city"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 polished_deepslate []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 deepslate_bricks []
fill ~0 ~1 ~-5 ~0 ~2 ~5 deepslate_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~4 ~-5 ~6 ~4 ~5 deepslate_bricks []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 polished_deepslate_wall []
fill ~-5 ~5 ~-4 ~5 ~5 ~4 air []
setblock ~-6 ~5 ~-5 chiseled_deepslate []
setblock ~-6 ~6 ~-5 soul_lantern []
setblock ~-6 ~5 ~5 chiseled_deepslate []
setblock ~-6 ~6 ~5 soul_lantern []
setblock ~6 ~5 ~-5 chiseled_deepslate []
setblock ~6 ~6 ~-5 soul_lantern []
setblock ~6 ~5 ~5 chiseled_deepslate []
setblock ~6 ~6 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 deepslate_bricks []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_deepslate []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_deepslate []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 polished_deepslate_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (deep_dark 独有建筑构件 | 几何特征参数 7x6x3) ---
fill ~-4 ~0 ~6 ~-2 ~5 ~6 chiseled_deepslate []
setblock ~-3 ~1 ~6 sculk_catalyst []
setblock ~-3 ~6 ~6 soul_lantern []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-5 ~1 ~4 cartography_table []
setblock ~0 ~1 ~4 lectern []
setblock ~5 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~5 ~1 ~3 slot.container 1 bone 14
replaceitem block ~5 ~1 ~3 slot.container 2 rotten_flesh 15
replaceitem block ~5 ~1 ~3 slot.container 3 phantom_membrane 8
replaceitem block ~5 ~1 ~3 slot.container 4 gunpowder 15
replaceitem block ~5 ~1 ~3 slot.container 5 string 18
replaceitem block ~5 ~1 ~3 slot.container 9 golden_apple 8
replaceitem block ~5 ~1 ~3 slot.container 10 experience_bottle 18
replaceitem block ~5 ~1 ~3 slot.container 11 diamond 4
replaceitem block ~5 ~1 ~3 slot.container 12 amethyst_shard 9
replaceitem block ~5 ~1 ~3 slot.container 13 sculk_catalyst 4
replaceitem block ~5 ~1 ~3 slot.container 14 sculk_sensor 5
loot insert ~5 ~1 ~3 loot "rsf/deep_dark"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 rotten_flesh 18
replaceitem block ~-5 ~1 ~4 slot.container 1 phantom_membrane 11
replaceitem block ~-5 ~1 ~4 slot.container 2 gunpowder 10
replaceitem block ~-5 ~1 ~4 slot.container 3 string 13
replaceitem block ~-5 ~1 ~4 slot.container 4 spider_eye 8
replaceitem block ~-5 ~1 ~4 slot.container 5 echo_shard 9
replaceitem block ~-5 ~1 ~4 slot.container 9 golden_apple 6
replaceitem block ~-5 ~1 ~4 slot.container 10 experience_bottle 16
replaceitem block ~-5 ~1 ~4 slot.container 11 diamond 9
replaceitem block ~-5 ~1 ~4 slot.container 12 amethyst_shard 14
replaceitem block ~-5 ~1 ~4 slot.container 13 sculk_catalyst 2
replaceitem block ~-5 ~1 ~4 slot.container 14 sculk_sensor 3
loot insert ~-5 ~1 ~4 loot "rsf/deep_dark"
loot insert ~-5 ~1 ~4 loot "chests/ancient_city"
summon zombie ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon witch ~1 ~1 ~1

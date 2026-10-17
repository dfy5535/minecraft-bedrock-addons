# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1317/4224 | 主题内编号: b037/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·环廊聖柱纪念碑 (desert_obelisk_rotunda_pillar)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~11 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 lapis_block []
setblock ~0 ~-5 ~0 torch []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 arrow 18
replaceitem block ~4 ~-2 ~0 slot.container 1 gold_nugget 15
replaceitem block ~4 ~-2 ~0 slot.container 2 ender_pearl 7
replaceitem block ~4 ~-2 ~0 slot.container 3 rotten_flesh 19
replaceitem block ~4 ~-2 ~0 slot.container 4 bone 18
replaceitem block ~4 ~-2 ~0 slot.container 5 gunpowder 17
replaceitem block ~4 ~-2 ~0 slot.container 9 tnt 10
replaceitem block ~4 ~-2 ~0 slot.container 10 saddle 1
replaceitem block ~4 ~-2 ~0 slot.container 11 water_bucket 1
replaceitem block ~4 ~-2 ~0 slot.container 12 golden_apple 4
replaceitem block ~4 ~-2 ~0 slot.container 13 enchanted_golden_apple 4
replaceitem block ~4 ~-2 ~0 slot.container 14 bread 14
loot insert ~4 ~-2 ~0 loot "rsf/desert"
loot insert ~4 ~-2 ~0 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 orange_terracotta []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 sandstone []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 sandstone []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 sandstone []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 sandstone []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 sandstone []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 sandstone []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 sandstone []
fill ~0 ~1 ~5 ~0 ~8 ~5 sandstone []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 sandstone []
fill ~2 ~1 ~5 ~2 ~8 ~5 sandstone []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 sandstone []
fill ~4 ~1 ~5 ~4 ~8 ~5 sandstone []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 sandstone []
fill ~6 ~1 ~5 ~6 ~8 ~5 sandstone []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 sandstone []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 sandstone []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 sandstone []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 sandstone []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 sandstone []
fill ~6 ~1 ~1 ~6 ~8 ~1 sandstone []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 sandstone []
fill ~6 ~1 ~3 ~6 ~8 ~3 sandstone []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~9 ~-5 ~-6 ~11 ~-5 sandstone []
setblock ~-6 ~12 ~-5 torch []
fill ~-6 ~9 ~5 ~-6 ~11 ~5 sandstone []
setblock ~-6 ~12 ~5 torch []
fill ~6 ~9 ~-5 ~6 ~11 ~-5 sandstone []
setblock ~6 ~12 ~-5 torch []
fill ~6 ~9 ~5 ~6 ~11 ~5 sandstone []
setblock ~6 ~12 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 sandstone []
setblock ~-8 ~6 ~-7 torch []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 sandstone []
setblock ~-8 ~6 ~7 torch []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 sandstone []
setblock ~8 ~6 ~-7 torch []
fill ~8 ~0 ~7 ~8 ~5 ~7 sandstone []
setblock ~8 ~6 ~7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~-6 ~-10 ~7 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~7 ~-7 chiseled_sandstone []
setblock ~-9 ~8 ~-6 gold_block []
setblock ~9 ~8 ~-6 gold_block []
setblock ~1 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 emerald_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 1 gold_nugget 18
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 4 bone 13
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 enchanted_golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 10 bread 12
replaceitem block ~5 ~1 ~3 slot.container 11 gold_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 9
replaceitem block ~5 ~1 ~3 slot.container 14 diamond 8
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 9 enchanted_golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 10 bread 10
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 7
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond 6
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

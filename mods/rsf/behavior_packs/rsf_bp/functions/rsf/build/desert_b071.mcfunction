# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1351/4224 | 主题内编号: b071/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·残破双子哨所遗迹 (desert_ruin_twin_watch_remnant)
# 建筑构造: 主体[twin_towers] + 屋顶[ruined_skylight] + 地宫[none] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 2格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 sandstone [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 sandstone [] replace water
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 sandstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 smooth_sandstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 cut_sandstone []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 sandstone []
fill ~2 ~1 ~-4 ~6 ~9 ~4 sandstone []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 cut_sandstone []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 sandstone_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-6 ~7 ~-1 ~-6 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 sandstone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~-6 ~-10 ~6 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~6 ~-7 chiseled_sandstone []
setblock ~-9 ~7 ~-6 gold_block []
setblock ~9 ~7 ~-6 gold_block []
setblock ~-1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 10
replaceitem block ~5 ~1 ~2 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~2 slot.container 2 bone 13
replaceitem block ~5 ~1 ~2 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 4 string 11
replaceitem block ~5 ~1 ~2 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~2 slot.container 9 gold_ingot 6
replaceitem block ~5 ~1 ~2 slot.container 10 iron_ingot 7
replaceitem block ~5 ~1 ~2 slot.container 11 emerald 6
replaceitem block ~5 ~1 ~2 slot.container 12 diamond 5
replaceitem block ~5 ~1 ~2 slot.container 13 tnt 8
replaceitem block ~5 ~1 ~2 slot.container 14 saddle 1
loot insert ~5 ~1 ~2 loot "rsf/desert"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 2 string 14
replaceitem block ~-5 ~1 ~3 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 16
replaceitem block ~-5 ~1 ~3 slot.container 5 gold_nugget 13
replaceitem block ~-5 ~1 ~3 slot.container 9 gold_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 11 emerald 4
replaceitem block ~-5 ~1 ~3 slot.container 12 diamond 3
replaceitem block ~-5 ~1 ~3 slot.container 13 tnt 6
replaceitem block ~-5 ~1 ~3 slot.container 14 saddle 1
loot insert ~-5 ~1 ~3 loot "rsf/desert"
loot insert ~-5 ~1 ~3 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

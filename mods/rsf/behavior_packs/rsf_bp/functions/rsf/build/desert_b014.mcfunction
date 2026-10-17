# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1294/4224 | 主题内编号: b014/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·暗渠蓄水池秘境地牢 (desert_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 6格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 yellow_terracotta []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 water []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 rotten_flesh 19
replaceitem block ~-4 ~-5 ~3 slot.container 1 bone 18
replaceitem block ~-4 ~-5 ~3 slot.container 2 gunpowder 17
replaceitem block ~-4 ~-5 ~3 slot.container 3 string 8
replaceitem block ~-4 ~-5 ~3 slot.container 4 spider_eye 7
replaceitem block ~-4 ~-5 ~3 slot.container 5 arrow 18
replaceitem block ~-4 ~-5 ~3 slot.container 9 saddle 1
replaceitem block ~-4 ~-5 ~3 slot.container 10 water_bucket 1
replaceitem block ~-4 ~-5 ~3 slot.container 11 golden_apple 4
replaceitem block ~-4 ~-5 ~3 slot.container 12 enchanted_golden_apple 4
replaceitem block ~-4 ~-5 ~3 slot.container 13 bread 14
replaceitem block ~-4 ~-5 ~3 slot.container 14 gold_ingot 11
loot insert ~-4 ~-5 ~3 loot "rsf/desert"
loot insert ~-4 ~-5 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 sandstone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 smooth_sandstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 sandstone_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 yellow_terracotta []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~-7 ~-10 ~4 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~4 ~-8 chiseled_sandstone []
setblock ~-9 ~5 ~-7 gold_block []
setblock ~9 ~5 ~-7 gold_block []
setblock ~2 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gold_nugget 18
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 10
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 5 string 11
replaceitem block ~-5 ~1 ~3 slot.container 9 bread 16
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 7
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 6
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 5
replaceitem block ~-5 ~1 ~3 slot.container 14 tnt 8
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1

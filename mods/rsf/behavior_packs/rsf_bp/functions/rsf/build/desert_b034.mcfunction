# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1314/4224 | 主题内编号: b034/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子对称铭文方尖碑 (desert_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 sandstone [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 sandstone [] replace water
fill ~-7 ~1 ~-4 ~7 ~13 ~4 air []
fill ~-7 ~0 ~-4 ~7 ~0 ~4 sandstone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 smooth_sandstone []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-2 ~5 ~-1 ~2 sandstone []
fill ~-4 ~-5 ~-1 ~4 ~-1 ~1 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~1 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~1 slot.container 0 gold_nugget 15
replaceitem block ~4 ~-3 ~1 slot.container 1 ender_pearl 7
replaceitem block ~4 ~-3 ~1 slot.container 2 rotten_flesh 19
replaceitem block ~4 ~-3 ~1 slot.container 3 bone 18
replaceitem block ~4 ~-3 ~1 slot.container 4 gunpowder 17
replaceitem block ~4 ~-3 ~1 slot.container 5 string 8
replaceitem block ~4 ~-3 ~1 slot.container 9 diamond 3
replaceitem block ~4 ~-3 ~1 slot.container 10 tnt 6
replaceitem block ~4 ~-3 ~1 slot.container 11 saddle 1
replaceitem block ~4 ~-3 ~1 slot.container 12 water_bucket 1
replaceitem block ~4 ~-3 ~1 slot.container 13 golden_apple 7
replaceitem block ~4 ~-3 ~1 slot.container 14 enchanted_golden_apple 7
loot insert ~4 ~-3 ~1 loot "rsf/desert"
loot insert ~4 ~-3 ~1 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~12 ~3 sandstone []
fill ~2 ~1 ~-3 ~6 ~12 ~3 sandstone []
fill ~-5 ~1 ~-2 ~-3 ~11 ~2 air []
fill ~3 ~1 ~-2 ~5 ~11 ~2 air []
fill ~-2 ~9 ~-1 ~2 ~11 ~1 yellow_terracotta []
fill ~-3 ~10 ~0 ~3 ~10 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 yellow_terracotta []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 sandstone []
fill ~0 ~17 ~0 ~0 ~20 ~0 emerald_block []
setblock ~0 ~21 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 yellow_terracotta []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 campfire []
setblock ~2 ~4 ~-6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x4x2) ---
fill ~-9 ~0 ~-4 ~-10 ~4 ~-5 chiseled_sandstone []
fill ~8 ~0 ~-4 ~9 ~4 ~-5 chiseled_sandstone []
setblock ~-9 ~5 ~-4 gold_block []
setblock ~9 ~5 ~-4 gold_block []
setblock ~-2 ~0 ~-4 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~1 slot.container 1 string 11
replaceitem block ~-5 ~1 ~1 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~1 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~1 slot.container 4 gold_nugget 18
replaceitem block ~-5 ~1 ~1 slot.container 5 ender_pearl 10
replaceitem block ~-5 ~1 ~1 slot.container 9 bread 15
replaceitem block ~-5 ~1 ~1 slot.container 10 gold_ingot 12
replaceitem block ~-5 ~1 ~1 slot.container 11 iron_ingot 6
replaceitem block ~-5 ~1 ~1 slot.container 12 emerald 5
replaceitem block ~-5 ~1 ~1 slot.container 13 diamond 4
replaceitem block ~-5 ~1 ~1 slot.container 14 tnt 7
loot insert ~-5 ~1 ~1 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

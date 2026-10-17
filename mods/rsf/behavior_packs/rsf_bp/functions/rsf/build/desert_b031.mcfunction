# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1311/4224 | 主题内编号: b031/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·阶梯圣火烽火台 (desert_tower_ziggurat_fire)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 15x13 | 地上高度 10格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~12 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 cut_sandstone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 string 8
replaceitem block ~4 ~-2 ~3 slot.container 1 spider_eye 7
replaceitem block ~4 ~-2 ~3 slot.container 2 arrow 18
replaceitem block ~4 ~-2 ~3 slot.container 3 gold_nugget 15
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 7
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~4 ~-2 ~3 slot.container 9 tnt 9
replaceitem block ~4 ~-2 ~3 slot.container 10 saddle 1
replaceitem block ~4 ~-2 ~3 slot.container 11 water_bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 13 enchanted_golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 14 bread 13
loot insert ~4 ~-2 ~3 loot "rsf/desert"
loot insert ~4 ~-2 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 sandstone []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 cut_sandstone []
fill ~-4 ~5 ~-3 ~4 ~10 ~3 cut_sandstone []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~10 ~-5 ~-6 ~12 ~-5 chiseled_sandstone []
setblock ~-6 ~13 ~-5 torch []
fill ~-6 ~10 ~5 ~-6 ~12 ~5 chiseled_sandstone []
setblock ~-6 ~13 ~5 torch []
fill ~6 ~10 ~-5 ~6 ~12 ~-5 chiseled_sandstone []
setblock ~6 ~13 ~-5 torch []
fill ~6 ~10 ~5 ~6 ~12 ~5 chiseled_sandstone []
setblock ~6 ~13 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 smooth_sandstone []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 cut_sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x6x4) ---
fill ~-9 ~0 ~-6 ~-10 ~6 ~-7 chiseled_sandstone []
fill ~8 ~0 ~-6 ~9 ~6 ~-7 chiseled_sandstone []
setblock ~-9 ~7 ~-6 gold_block []
setblock ~9 ~7 ~-6 gold_block []
setblock ~1 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-5 ~1 ~4 smoker []
setblock ~5 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 2 bone 13
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~3 slot.container 9 gold_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~3 slot.container 12 diamond 7
replaceitem block ~5 ~1 ~3 slot.container 13 tnt 10
replaceitem block ~5 ~1 ~3 slot.container 14 saddle 1
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_nugget 13
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 13 tnt 8
replaceitem block ~-5 ~1 ~4 slot.container 14 saddle 1
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

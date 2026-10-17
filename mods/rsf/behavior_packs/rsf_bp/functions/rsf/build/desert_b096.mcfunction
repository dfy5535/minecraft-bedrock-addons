# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1376/4224 | 主题内编号: b096/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·高台三阶献祭神祠 (desert_shrine_stepped_offering)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 smooth_sandstone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 spider_eye 7
replaceitem block ~3 ~-3 ~2 slot.container 1 arrow 18
replaceitem block ~3 ~-3 ~2 slot.container 2 gold_nugget 15
replaceitem block ~3 ~-3 ~2 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-3 ~2 slot.container 4 rotten_flesh 19
replaceitem block ~3 ~-3 ~2 slot.container 5 bone 18
replaceitem block ~3 ~-3 ~2 slot.container 9 bread 10
replaceitem block ~3 ~-3 ~2 slot.container 10 gold_ingot 7
replaceitem block ~3 ~-3 ~2 slot.container 11 iron_ingot 8
replaceitem block ~3 ~-3 ~2 slot.container 12 emerald 7
replaceitem block ~3 ~-3 ~2 slot.container 13 diamond 6
replaceitem block ~3 ~-3 ~2 slot.container 14 tnt 9
loot insert ~3 ~-3 ~2 loot "rsf/desert"
loot insert ~3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cut_sandstone []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 smooth_sandstone []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 smooth_sandstone []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 smooth_sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 smooth_sandstone []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 smooth_sandstone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 orange_terracotta []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 smooth_sandstone []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 cut_sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-9 ~6 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~6 ~-8 chiseled_sandstone []
setblock ~-8 ~7 ~-7 gold_block []
setblock ~8 ~7 ~-7 gold_block []
setblock ~2 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-4 ~1 ~2 slot.container 1 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 3 string 11
replaceitem block ~-4 ~1 ~2 slot.container 4 spider_eye 10
replaceitem block ~-4 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 9 saddle 1
replaceitem block ~-4 ~1 ~2 slot.container 10 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 8
replaceitem block ~-4 ~1 ~2 slot.container 12 enchanted_golden_apple 1
replaceitem block ~-4 ~1 ~2 slot.container 13 bread 11
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 8
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-3 ~0

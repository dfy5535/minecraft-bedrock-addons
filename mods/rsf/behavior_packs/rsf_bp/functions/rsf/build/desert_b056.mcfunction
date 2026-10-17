# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1336/4224 | 主题内编号: b056/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·隐士半地下避难山居 (desert_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~9 ~5 air []
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
replaceitem block ~3 ~-3 ~2 slot.container 9 bread 12
replaceitem block ~3 ~-3 ~2 slot.container 10 gold_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 11 iron_ingot 10
replaceitem block ~3 ~-3 ~2 slot.container 12 emerald 9
replaceitem block ~3 ~-3 ~2 slot.container 13 diamond 8
replaceitem block ~3 ~-3 ~2 slot.container 14 tnt 4
loot insert ~3 ~-3 ~2 loot "rsf/desert"
loot insert ~3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cut_sandstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 smooth_sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~4 smooth_sandstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-4 ~-5 ~9 ~4 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-4 ~5 ~9 ~4 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-4 ~4 ~9 ~4 cut_sandstone_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 smooth_sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 cut_sandstone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-6 ~-9 ~6 ~-7 chiseled_sandstone []
fill ~7 ~0 ~-6 ~8 ~6 ~-7 chiseled_sandstone []
setblock ~-8 ~7 ~-6 gold_block []
setblock ~8 ~7 ~-6 gold_block []
setblock ~2 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~5 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
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
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 12 enchanted_golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 13 bread 13
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 10
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1

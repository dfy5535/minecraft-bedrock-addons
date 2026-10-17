# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1334/4224 | 主题内编号: b054/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·切石与伐木工匠棚屋 (desert_outpost_lumber_mill)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[none] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 sandstone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 sandstone [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 sandstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 smooth_sandstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-3 ~-4 ~6 ~-1 ~4 yellow_terracotta []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~8 ~4 sandstone []
fill ~2 ~1 ~-4 ~6 ~8 ~4 sandstone []
fill ~-5 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 yellow_terracotta []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~8 ~-5 ~-7 ~8 ~5 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~7 ~8 ~-5 ~7 ~8 ~5 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-4 ~-6 ~9 ~4 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~9 ~-4 ~6 ~9 ~4 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-4 ~5 ~9 ~4 sandstone_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 yellow_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 smooth_sandstone []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 cut_sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~-7 ~-10 ~4 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~4 ~-8 chiseled_sandstone []
setblock ~-9 ~5 ~-7 gold_block []
setblock ~9 ~5 ~-7 gold_block []
setblock ~0 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 gold_nugget 18
replaceitem block ~-5 ~1 ~2 slot.container 1 ender_pearl 10
replaceitem block ~-5 ~1 ~2 slot.container 2 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-5 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 5 string 11
replaceitem block ~-5 ~1 ~2 slot.container 9 bread 14
replaceitem block ~-5 ~1 ~2 slot.container 10 gold_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 11 iron_ingot 12
replaceitem block ~-5 ~1 ~2 slot.container 12 emerald 4
replaceitem block ~-5 ~1 ~2 slot.container 13 diamond 3
replaceitem block ~-5 ~1 ~2 slot.container 14 tnt 6
loot insert ~-5 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~2 ~0

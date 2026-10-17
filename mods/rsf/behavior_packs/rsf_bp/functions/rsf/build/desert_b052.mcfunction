# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1332/4224 | 主题内编号: b052/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·重檐行商旅店客栈 (desert_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cut_sandstone [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 cut_sandstone [] replace water
fill ~-7 ~1 ~-7 ~7 ~10 ~7 air []
fill ~-7 ~0 ~-7 ~7 ~0 ~7 cut_sandstone_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 smooth_sandstone []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 rotten_flesh 19
replaceitem block ~4 ~-3 ~4 slot.container 1 bone 18
replaceitem block ~4 ~-3 ~4 slot.container 2 gunpowder 17
replaceitem block ~4 ~-3 ~4 slot.container 3 string 8
replaceitem block ~4 ~-3 ~4 slot.container 4 spider_eye 7
replaceitem block ~4 ~-3 ~4 slot.container 5 arrow 18
replaceitem block ~4 ~-3 ~4 slot.container 9 golden_apple 7
replaceitem block ~4 ~-3 ~4 slot.container 10 enchanted_golden_apple 7
replaceitem block ~4 ~-3 ~4 slot.container 11 bread 10
replaceitem block ~4 ~-3 ~4 slot.container 12 gold_ingot 7
replaceitem block ~4 ~-3 ~4 slot.container 13 iron_ingot 8
replaceitem block ~4 ~-3 ~4 slot.container 14 emerald 7
loot insert ~4 ~-3 ~4 loot "rsf/desert"
loot insert ~4 ~-3 ~4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~4 ~6 cut_sandstone []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-7 ~4 ~-7 ~7 ~4 ~7 cut_sandstone_slab []
fill ~-5 ~5 ~-5 ~5 ~8 ~5 smooth_sandstone []
fill ~-4 ~5 ~-4 ~4 ~7 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~5 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~8 ~-7 ~7 ~8 ~7 cut_sandstone_slab []
fill ~-5 ~9 ~-5 ~5 ~10 ~5 smooth_sandstone []
fill ~-6 ~11 ~-6 ~6 ~11 ~6 sandstone_slab []
setblock ~0 ~12 ~0 orange_terracotta []
setblock ~0 ~13 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 smooth_sandstone []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_sandstone []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_sandstone []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 cut_sandstone_slab []
setblock ~0 ~3 ~-8 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x5) ---
fill ~-9 ~0 ~-7 ~-10 ~7 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~7 ~-8 chiseled_sandstone []
setblock ~-9 ~8 ~-7 gold_block []
setblock ~9 ~8 ~-7 gold_block []
setblock ~-2 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~4 slot.container 2 gold_nugget 18
replaceitem block ~-5 ~1 ~4 slot.container 3 ender_pearl 10
replaceitem block ~-5 ~1 ~4 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-5 ~1 ~4 slot.container 10 tnt 7
replaceitem block ~-5 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~4 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~-5 ~1 ~4 slot.container 14 enchanted_golden_apple 1
loot insert ~-5 ~1 ~4 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

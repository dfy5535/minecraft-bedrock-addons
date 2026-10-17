# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1352/4224 | 主题内编号: b072/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·L型古商会废墟暗窖 (desert_ruin_l_guildhall)
# 建筑构造: 主体[l_compound] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cut_sandstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 cut_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cut_sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 smooth_sandstone []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 spider_eye 7
replaceitem block ~4 ~-3 ~3 slot.container 1 arrow 18
replaceitem block ~4 ~-3 ~3 slot.container 2 gold_nugget 15
replaceitem block ~4 ~-3 ~3 slot.container 3 ender_pearl 7
replaceitem block ~4 ~-3 ~3 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~-3 ~3 slot.container 5 bone 18
replaceitem block ~4 ~-3 ~3 slot.container 9 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 10 enchanted_golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 11 bread 16
replaceitem block ~4 ~-3 ~3 slot.container 12 gold_ingot 6
replaceitem block ~4 ~-3 ~3 slot.container 13 iron_ingot 7
replaceitem block ~4 ~-3 ~3 slot.container 14 emerald 6
loot insert ~4 ~-3 ~3 loot "rsf/desert"
loot insert ~4 ~-3 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~7 ~5 cut_sandstone []
fill ~-6 ~1 ~0 ~6 ~6 ~5 smooth_sandstone []
fill ~-5 ~1 ~-4 ~-1 ~6 ~4 air []
fill ~-1 ~1 ~1 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cut_sandstone_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-6 ~6 ~-1 ~-6 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 smooth_sandstone []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 chiseled_sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 chiseled_sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 cut_sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-8 ~-10 ~7 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~7 ~-9 chiseled_sandstone []
setblock ~-9 ~8 ~-8 gold_block []
setblock ~9 ~8 ~-8 gold_block []
setblock ~0 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 3 string 11
replaceitem block ~-5 ~1 ~3 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond 3
replaceitem block ~-5 ~1 ~3 slot.container 10 tnt 6
replaceitem block ~-5 ~1 ~3 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 7
replaceitem block ~-5 ~1 ~3 slot.container 14 enchanted_golden_apple 7
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-3 ~0

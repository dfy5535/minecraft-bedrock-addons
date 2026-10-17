# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1361/4224 | 主题内编号: b081/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双高炉重工冶炼密室 (desert_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 smooth_sandstone [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 smooth_sandstone [] replace water
fill ~-6 ~1 ~-6 ~6 ~9 ~6 air []
fill ~-6 ~0 ~-6 ~6 ~0 ~6 sandstone_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 cut_sandstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-4 ~-4 ~4 ~-1 ~4 smooth_sandstone []
fill ~-3 ~-5 ~-3 ~3 ~-1 ~3 air []
setblock ~-3 ~-5 ~0 blast_furnace []
setblock ~3 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~3 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~3 slot.container 0 arrow 18
replaceitem block ~3 ~-3 ~3 slot.container 1 gold_nugget 15
replaceitem block ~3 ~-3 ~3 slot.container 2 ender_pearl 7
replaceitem block ~3 ~-3 ~3 slot.container 3 rotten_flesh 19
replaceitem block ~3 ~-3 ~3 slot.container 4 bone 18
replaceitem block ~3 ~-3 ~3 slot.container 5 gunpowder 17
replaceitem block ~3 ~-3 ~3 slot.container 9 water_bucket 1
replaceitem block ~3 ~-3 ~3 slot.container 10 golden_apple 5
replaceitem block ~3 ~-3 ~3 slot.container 11 enchanted_golden_apple 5
replaceitem block ~3 ~-3 ~3 slot.container 12 bread 15
replaceitem block ~3 ~-3 ~3 slot.container 13 gold_ingot 12
replaceitem block ~3 ~-3 ~3 slot.container 14 iron_ingot 6
loot insert ~3 ~-3 ~3 loot "rsf/desert"
loot insert ~3 ~-3 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~7 ~5 smooth_sandstone []
fill ~-4 ~1 ~-4 ~4 ~6 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~10 ~5 orange_terracotta []
setblock ~-5 ~11 ~5 torch []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~8 ~-6 ~-6 ~8 ~6 sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-6 ~6 ~8 ~6 sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~9 ~-5 ~-5 ~9 ~5 sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~9 ~-5 ~5 ~9 ~5 sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~9 ~-5 ~4 ~9 ~5 sandstone_slab []
fill ~0 ~10 ~-6 ~0 ~10 ~6 orange_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 orange_terracotta []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 sandstone []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 sandstone []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 sandstone_slab []
setblock ~0 ~3 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x8x4) ---
fill ~-8 ~0 ~-8 ~-9 ~6 ~-9 chiseled_sandstone []
fill ~7 ~0 ~-8 ~8 ~6 ~-9 chiseled_sandstone []
setblock ~-8 ~7 ~-8 gold_block []
setblock ~8 ~7 ~-8 gold_block []
setblock ~2 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 bone 13
replaceitem block ~4 ~1 ~3 slot.container 1 gunpowder 12
replaceitem block ~4 ~1 ~3 slot.container 2 string 11
replaceitem block ~4 ~1 ~3 slot.container 3 spider_eye 10
replaceitem block ~4 ~1 ~3 slot.container 4 arrow 21
replaceitem block ~4 ~1 ~3 slot.container 5 gold_nugget 18
replaceitem block ~4 ~1 ~3 slot.container 9 gold_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 10 iron_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 11 emerald 9
replaceitem block ~4 ~1 ~3 slot.container 12 diamond 8
replaceitem block ~4 ~1 ~3 slot.container 13 tnt 4
replaceitem block ~4 ~1 ~3 slot.container 14 saddle 1
loot insert ~4 ~1 ~3 loot "rsf/desert"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 string 14
replaceitem block ~-4 ~1 ~4 slot.container 1 spider_eye 13
replaceitem block ~-4 ~1 ~4 slot.container 2 arrow 16
replaceitem block ~-4 ~1 ~4 slot.container 3 gold_nugget 13
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 5
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 17
replaceitem block ~-4 ~1 ~4 slot.container 9 gold_ingot 7
replaceitem block ~-4 ~1 ~4 slot.container 10 iron_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 11 emerald 7
replaceitem block ~-4 ~1 ~4 slot.container 12 diamond 6
replaceitem block ~-4 ~1 ~4 slot.container 13 tnt 9
replaceitem block ~-4 ~1 ~4 slot.container 14 saddle 1
loot insert ~-4 ~1 ~4 loot "rsf/desert"
loot insert ~-4 ~1 ~4 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1387/4224 | 主题内编号: b107/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·观星高塔与秘术地宫 (desert_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 cut_sandstone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gold_block []
setblock ~0 ~-6 ~0 torch []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~3 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~3 ~-3 ~0 slot.container 0 string 8
replaceitem block ~3 ~-3 ~0 slot.container 1 spider_eye 7
replaceitem block ~3 ~-3 ~0 slot.container 2 arrow 18
replaceitem block ~3 ~-3 ~0 slot.container 3 gold_nugget 15
replaceitem block ~3 ~-3 ~0 slot.container 4 ender_pearl 7
replaceitem block ~3 ~-3 ~0 slot.container 5 rotten_flesh 19
replaceitem block ~3 ~-3 ~0 slot.container 9 tnt 10
replaceitem block ~3 ~-3 ~0 slot.container 10 saddle 1
replaceitem block ~3 ~-3 ~0 slot.container 11 water_bucket 1
replaceitem block ~3 ~-3 ~0 slot.container 12 golden_apple 4
replaceitem block ~3 ~-3 ~0 slot.container 13 enchanted_golden_apple 4
replaceitem block ~3 ~-3 ~0 slot.container 14 bread 14
loot insert ~3 ~-3 ~0 loot "rsf/desert"
loot insert ~3 ~-3 ~0 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 sandstone []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cut_sandstone_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~10 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 cut_sandstone []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 glass []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~0 ~12 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~9 ~-2 chiseled_sandstone []
fill ~-6 ~0 ~2 ~-6 ~9 ~2 chiseled_sandstone []
fill ~6 ~0 ~-2 ~6 ~9 ~-2 chiseled_sandstone []
fill ~6 ~0 ~2 ~6 ~9 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x6x5) ---
fill ~-8 ~0 ~-6 ~-9 ~7 ~-7 chiseled_sandstone []
fill ~7 ~0 ~-6 ~8 ~7 ~-7 chiseled_sandstone []
setblock ~-8 ~8 ~-6 gold_block []
setblock ~8 ~8 ~-6 gold_block []
setblock ~-2 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 string 11
replaceitem block ~4 ~1 ~2 slot.container 1 spider_eye 10
replaceitem block ~4 ~1 ~2 slot.container 2 arrow 21
replaceitem block ~4 ~1 ~2 slot.container 3 gold_nugget 18
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 10
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 14
replaceitem block ~4 ~1 ~2 slot.container 9 enchanted_golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 10 bread 12
replaceitem block ~4 ~1 ~2 slot.container 11 gold_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 12 iron_ingot 10
replaceitem block ~4 ~1 ~2 slot.container 13 emerald 9
replaceitem block ~4 ~1 ~2 slot.container 14 diamond 8
loot insert ~4 ~1 ~2 loot "rsf/desert"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 arrow 16
replaceitem block ~-4 ~1 ~3 slot.container 1 gold_nugget 13
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-4 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 9 enchanted_golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 10 bread 10
replaceitem block ~-4 ~1 ~3 slot.container 11 gold_ingot 7
replaceitem block ~-4 ~1 ~3 slot.container 12 iron_ingot 8
replaceitem block ~-4 ~1 ~3 slot.container 13 emerald 7
replaceitem block ~-4 ~1 ~3 slot.container 14 diamond 6
loot insert ~-4 ~1 ~3 loot "rsf/desert"
loot insert ~-4 ~1 ~3 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

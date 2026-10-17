# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1391/4224 | 主题内编号: b111/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·地下禁忌书库与炼药室 (desert_arcane_sunken_archive)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[catacomb_crypt] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~9 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-5 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-5 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-5 ~0 torch []
setblock ~4 ~-5 ~0 torch []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 arrow 18
replaceitem block ~0 ~-3 ~3 slot.container 1 gold_nugget 15
replaceitem block ~0 ~-3 ~3 slot.container 2 ender_pearl 7
replaceitem block ~0 ~-3 ~3 slot.container 3 rotten_flesh 19
replaceitem block ~0 ~-3 ~3 slot.container 4 bone 18
replaceitem block ~0 ~-3 ~3 slot.container 5 gunpowder 17
replaceitem block ~0 ~-3 ~3 slot.container 9 emerald 8
replaceitem block ~0 ~-3 ~3 slot.container 10 diamond 7
replaceitem block ~0 ~-3 ~3 slot.container 11 tnt 10
replaceitem block ~0 ~-3 ~3 slot.container 12 saddle 1
replaceitem block ~0 ~-3 ~3 slot.container 13 water_bucket 1
replaceitem block ~0 ~-3 ~3 slot.container 14 golden_apple 4
loot insert ~0 ~-3 ~3 loot "rsf/desert"
loot insert ~0 ~-3 ~3 loot "chests/desert_pyramid"
setblock ~0 ~-3 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-3 slot.container 0 arrow 16
replaceitem block ~0 ~-3 ~-3 slot.container 1 gold_nugget 13
replaceitem block ~0 ~-3 ~-3 slot.container 2 ender_pearl 5
replaceitem block ~0 ~-3 ~-3 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-3 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-3 slot.container 5 gunpowder 15
replaceitem block ~0 ~-3 ~-3 slot.container 9 emerald 7
replaceitem block ~0 ~-3 ~-3 slot.container 10 diamond 6
replaceitem block ~0 ~-3 ~-3 slot.container 11 tnt 9
replaceitem block ~0 ~-3 ~-3 slot.container 12 saddle 1
replaceitem block ~0 ~-3 ~-3 slot.container 13 water_bucket 1
replaceitem block ~0 ~-3 ~-3 slot.container 14 golden_apple 3
loot insert ~0 ~-3 ~-3 loot "rsf/desert"
loot insert ~0 ~-3 ~-3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 sandstone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 cut_sandstone []
fill ~0 ~1 ~-5 ~0 ~2 ~5 cut_sandstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 cut_sandstone []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 cut_sandstone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gold_block []
setblock ~0 ~11 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 cobblestone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x4) ---
fill ~-9 ~0 ~-8 ~-10 ~6 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~6 ~-9 chiseled_sandstone []
setblock ~-9 ~7 ~-8 gold_block []
setblock ~9 ~7 ~-8 gold_block []
setblock ~-3 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 2 bone 13
replaceitem block ~5 ~1 ~3 slot.container 3 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 4 string 11
replaceitem block ~5 ~1 ~3 slot.container 5 spider_eye 10
replaceitem block ~5 ~1 ~3 slot.container 9 gold_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 4
replaceitem block ~5 ~1 ~3 slot.container 12 diamond 3
replaceitem block ~5 ~1 ~3 slot.container 13 tnt 6
replaceitem block ~5 ~1 ~3 slot.container 14 saddle 1
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_nugget 13
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 9
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 8
replaceitem block ~-5 ~1 ~4 slot.container 13 tnt 4
replaceitem block ~-5 ~1 ~4 slot.container 14 saddle 1
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0

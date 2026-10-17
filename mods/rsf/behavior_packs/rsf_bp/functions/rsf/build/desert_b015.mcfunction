# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1295/4224 | 主题内编号: b015/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·竖井阶梯深渊地牢 (desert_dungeon_spiral_abyss)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 torch []
setblock ~3 ~-6 ~-2 torch []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 bone 18
replaceitem block ~3 ~-4 ~2 slot.container 1 gunpowder 17
replaceitem block ~3 ~-4 ~2 slot.container 2 string 8
replaceitem block ~3 ~-4 ~2 slot.container 3 spider_eye 7
replaceitem block ~3 ~-4 ~2 slot.container 4 arrow 18
replaceitem block ~3 ~-4 ~2 slot.container 5 gold_nugget 15
replaceitem block ~3 ~-4 ~2 slot.container 9 tnt 6
replaceitem block ~3 ~-4 ~2 slot.container 10 saddle 1
replaceitem block ~3 ~-4 ~2 slot.container 11 water_bucket 1
replaceitem block ~3 ~-4 ~2 slot.container 12 golden_apple 7
replaceitem block ~3 ~-4 ~2 slot.container 13 enchanted_golden_apple 7
replaceitem block ~3 ~-4 ~2 slot.container 14 bread 10
loot insert ~3 ~-4 ~2 loot "rsf/desert"
loot insert ~3 ~-4 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 sandstone []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 cut_sandstone []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 cut_sandstone []
fill ~-3 ~1 ~-2 ~3 ~7 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 sandstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 cut_sandstone []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 sandstone []
fill ~0 ~14 ~0 ~0 ~17 ~0 gold_block []
setblock ~0 ~18 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 chiseled_sandstone []
setblock ~-7 ~6 ~-6 torch []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 chiseled_sandstone []
setblock ~-7 ~6 ~6 torch []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 chiseled_sandstone []
setblock ~7 ~6 ~-6 torch []
fill ~7 ~0 ~6 ~7 ~5 ~6 chiseled_sandstone []
setblock ~7 ~6 ~6 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-7 ~-9 ~5 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~5 ~-8 chiseled_sandstone []
setblock ~-8 ~6 ~-7 gold_block []
setblock ~8 ~6 ~-7 gold_block []
setblock ~1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 10
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 14
replaceitem block ~4 ~1 ~2 slot.container 2 bone 13
replaceitem block ~4 ~1 ~2 slot.container 3 gunpowder 12
replaceitem block ~4 ~1 ~2 slot.container 4 string 11
replaceitem block ~4 ~1 ~2 slot.container 5 spider_eye 10
replaceitem block ~4 ~1 ~2 slot.container 9 emerald 4
replaceitem block ~4 ~1 ~2 slot.container 10 diamond 3
replaceitem block ~4 ~1 ~2 slot.container 11 tnt 6
replaceitem block ~4 ~1 ~2 slot.container 12 saddle 1
replaceitem block ~4 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~4 ~1 ~2 loot "rsf/desert"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 spider_eye 13
replaceitem block ~-4 ~1 ~3 slot.container 4 arrow 16
replaceitem block ~-4 ~1 ~3 slot.container 5 gold_nugget 13
replaceitem block ~-4 ~1 ~3 slot.container 9 emerald 9
replaceitem block ~-4 ~1 ~3 slot.container 10 diamond 8
replaceitem block ~-4 ~1 ~3 slot.container 11 tnt 4
replaceitem block ~-4 ~1 ~3 slot.container 12 saddle 1
replaceitem block ~-4 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~-4 ~1 ~3 loot "rsf/desert"
loot insert ~-4 ~1 ~3 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-4 ~0

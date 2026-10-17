# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1316/4224 | 主题内编号: b036/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·下沉碑林地宫方尖碑 (desert_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 cut_sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 cut_sandstone []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-6 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-6 ~2 lantern []
setblock ~3 ~-6 ~-2 lantern []
setblock ~3 ~-4 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-4 ~2 slot.container 0 gold_nugget 15
replaceitem block ~3 ~-4 ~2 slot.container 1 ender_pearl 7
replaceitem block ~3 ~-4 ~2 slot.container 2 rotten_flesh 19
replaceitem block ~3 ~-4 ~2 slot.container 3 bone 18
replaceitem block ~3 ~-4 ~2 slot.container 4 gunpowder 17
replaceitem block ~3 ~-4 ~2 slot.container 5 string 8
replaceitem block ~3 ~-4 ~2 slot.container 9 golden_apple 4
replaceitem block ~3 ~-4 ~2 slot.container 10 enchanted_golden_apple 4
replaceitem block ~3 ~-4 ~2 slot.container 11 bread 14
replaceitem block ~3 ~-4 ~2 slot.container 12 gold_ingot 11
replaceitem block ~3 ~-4 ~2 slot.container 13 iron_ingot 12
replaceitem block ~3 ~-4 ~2 slot.container 14 emerald 4
loot insert ~3 ~-4 ~2 loot "rsf/desert"
loot insert ~3 ~-4 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 cut_sandstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 smooth_sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~4 smooth_sandstone []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 smooth_sandstone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 cut_sandstone []
fill ~0 ~16 ~0 ~0 ~19 ~0 orange_terracotta []
setblock ~0 ~20 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 birch_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x4) ---
fill ~-8 ~0 ~-7 ~-9 ~6 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~6 ~-8 chiseled_sandstone []
setblock ~-8 ~7 ~-7 gold_block []
setblock ~8 ~7 ~-7 gold_block []
setblock ~2 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 spider_eye 10
replaceitem block ~-4 ~1 ~2 slot.container 1 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 2 gold_nugget 18
replaceitem block ~-4 ~1 ~2 slot.container 3 ender_pearl 10
replaceitem block ~-4 ~1 ~2 slot.container 4 rotten_flesh 14
replaceitem block ~-4 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 9 saddle 1
replaceitem block ~-4 ~1 ~2 slot.container 10 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 12 enchanted_golden_apple 4
replaceitem block ~-4 ~1 ~2 slot.container 13 bread 14
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 11
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-4 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1322/4224 | 主题内编号: b042/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·地底铁栏死斗深坑 (desert_arena_sunken_pit)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[prison_dungeon] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-5 ~-6 ~0 ~5 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-4 ~-6 ~3 campfire []
setblock ~4 ~-6 ~-3 campfire []
setblock ~4 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~-4 ~3 slot.container 0 spider_eye 7
replaceitem block ~4 ~-4 ~3 slot.container 1 arrow 18
replaceitem block ~4 ~-4 ~3 slot.container 2 gold_nugget 15
replaceitem block ~4 ~-4 ~3 slot.container 3 ender_pearl 7
replaceitem block ~4 ~-4 ~3 slot.container 4 rotten_flesh 19
replaceitem block ~4 ~-4 ~3 slot.container 5 bone 18
replaceitem block ~4 ~-4 ~3 slot.container 9 saddle 1
replaceitem block ~4 ~-4 ~3 slot.container 10 water_bucket 1
replaceitem block ~4 ~-4 ~3 slot.container 11 golden_apple 5
replaceitem block ~4 ~-4 ~3 slot.container 12 enchanted_golden_apple 5
replaceitem block ~4 ~-4 ~3 slot.container 13 bread 15
replaceitem block ~4 ~-4 ~3 slot.container 14 gold_ingot 12
loot insert ~4 ~-4 ~3 loot "rsf/desert"
loot insert ~4 ~-4 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 sandstone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 yellow_terracotta []
fill ~0 ~1 ~-5 ~0 ~2 ~5 yellow_terracotta []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 chiseled_sandstone []
setblock ~-6 ~9 ~-5 campfire []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 chiseled_sandstone []
setblock ~-6 ~9 ~5 campfire []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 chiseled_sandstone []
setblock ~6 ~9 ~-5 campfire []
fill ~6 ~6 ~5 ~6 ~8 ~5 chiseled_sandstone []
setblock ~6 ~9 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 birch_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

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
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 gold_nugget 18
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~-5 ~1 ~3 slot.container 9 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 10 tnt 4
replaceitem block ~-5 ~1 ~3 slot.container 11 saddle 1
replaceitem block ~-5 ~1 ~3 slot.container 12 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 14 enchanted_golden_apple 5
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-4 ~0

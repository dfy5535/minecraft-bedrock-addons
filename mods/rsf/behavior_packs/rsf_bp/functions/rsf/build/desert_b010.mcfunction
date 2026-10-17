# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1290/4224 | 主题内编号: b010/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·十字交叉深层地牢 (desert_dungeon_cross_catacomb)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[ruined_skylight] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 6格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 sandstone [] replace air
fill ~-8 ~-7 ~-7 ~8 ~-1 ~7 sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~8 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 smooth_sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 sandstone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 campfire []
setblock ~5 ~-7 ~0 campfire []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 rotten_flesh 19
replaceitem block ~0 ~-5 ~4 slot.container 1 bone 18
replaceitem block ~0 ~-5 ~4 slot.container 2 gunpowder 17
replaceitem block ~0 ~-5 ~4 slot.container 3 string 8
replaceitem block ~0 ~-5 ~4 slot.container 4 spider_eye 7
replaceitem block ~0 ~-5 ~4 slot.container 5 arrow 18
replaceitem block ~0 ~-5 ~4 slot.container 9 bread 11
replaceitem block ~0 ~-5 ~4 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-5 ~4 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-5 ~4 slot.container 12 emerald 8
replaceitem block ~0 ~-5 ~4 slot.container 13 diamond 7
replaceitem block ~0 ~-5 ~4 slot.container 14 tnt 10
loot insert ~0 ~-5 ~4 loot "rsf/desert"
loot insert ~0 ~-5 ~4 loot "chests/desert_pyramid"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 rotten_flesh 17
replaceitem block ~0 ~-5 ~-4 slot.container 1 bone 16
replaceitem block ~0 ~-5 ~-4 slot.container 2 gunpowder 15
replaceitem block ~0 ~-5 ~-4 slot.container 3 string 14
replaceitem block ~0 ~-5 ~-4 slot.container 4 spider_eye 13
replaceitem block ~0 ~-5 ~-4 slot.container 5 arrow 16
replaceitem block ~0 ~-5 ~-4 slot.container 9 bread 10
replaceitem block ~0 ~-5 ~-4 slot.container 10 gold_ingot 7
replaceitem block ~0 ~-5 ~-4 slot.container 11 iron_ingot 8
replaceitem block ~0 ~-5 ~-4 slot.container 12 emerald 7
replaceitem block ~0 ~-5 ~-4 slot.container 13 diamond 6
replaceitem block ~0 ~-5 ~-4 slot.container 14 tnt 9
loot insert ~0 ~-5 ~-4 loot "rsf/desert"
loot insert ~0 ~-5 ~-4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 sandstone []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 sandstone []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 birch_fence []
setblock ~7 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 sandstone_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-7 ~5 ~-1 ~-7 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~5 ~-8 chiseled_sandstone []
setblock ~-9 ~6 ~-8 campfire []
fill ~-9 ~0 ~8 ~-9 ~5 ~8 chiseled_sandstone []
setblock ~-9 ~6 ~8 campfire []
fill ~9 ~0 ~-8 ~9 ~5 ~-8 chiseled_sandstone []
setblock ~9 ~6 ~-8 campfire []
fill ~9 ~0 ~8 ~9 ~5 ~8 chiseled_sandstone []
setblock ~9 ~6 ~8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x7x3) ---
fill ~-10 ~0 ~-7 ~-11 ~5 ~-8 chiseled_sandstone []
fill ~9 ~0 ~-7 ~10 ~5 ~-8 chiseled_sandstone []
setblock ~-10 ~6 ~-7 gold_block []
setblock ~10 ~6 ~-7 gold_block []
setblock ~-2 ~0 ~-7 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 gunpowder 12
replaceitem block ~-6 ~1 ~4 slot.container 1 string 11
replaceitem block ~-6 ~1 ~4 slot.container 2 spider_eye 10
replaceitem block ~-6 ~1 ~4 slot.container 3 arrow 21
replaceitem block ~-6 ~1 ~4 slot.container 4 gold_nugget 18
replaceitem block ~-6 ~1 ~4 slot.container 5 ender_pearl 10
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 10 enchanted_golden_apple 4
replaceitem block ~-6 ~1 ~4 slot.container 11 bread 14
replaceitem block ~-6 ~1 ~4 slot.container 12 gold_ingot 11
replaceitem block ~-6 ~1 ~4 slot.container 13 iron_ingot 12
replaceitem block ~-6 ~1 ~4 slot.container 14 emerald 4
loot insert ~-6 ~1 ~4 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1292/4224 | 主题内编号: b012/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子暗门地底宝库 (desert_dungeon_twin_vault)
# 建筑构造: 主体[twin_towers] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 cut_sandstone [] replace air
fill ~-8 ~-6 ~-5 ~8 ~-1 ~5 cut_sandstone [] replace water
fill ~-8 ~1 ~-5 ~8 ~9 ~5 air []
fill ~-8 ~0 ~-5 ~8 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 sandstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-5 ~-3 ~6 ~-1 ~3 smooth_sandstone []
fill ~-5 ~-6 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~5 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-4 ~2 slot.container 0 rotten_flesh 19
replaceitem block ~5 ~-4 ~2 slot.container 1 bone 18
replaceitem block ~5 ~-4 ~2 slot.container 2 gunpowder 17
replaceitem block ~5 ~-4 ~2 slot.container 3 string 8
replaceitem block ~5 ~-4 ~2 slot.container 4 spider_eye 7
replaceitem block ~5 ~-4 ~2 slot.container 5 arrow 18
replaceitem block ~5 ~-4 ~2 slot.container 9 golden_apple 2
replaceitem block ~5 ~-4 ~2 slot.container 10 enchanted_golden_apple 2
replaceitem block ~5 ~-4 ~2 slot.container 11 bread 12
replaceitem block ~5 ~-4 ~2 slot.container 12 gold_ingot 9
replaceitem block ~5 ~-4 ~2 slot.container 13 iron_ingot 10
replaceitem block ~5 ~-4 ~2 slot.container 14 emerald 9
loot insert ~5 ~-4 ~2 loot "rsf/desert"
loot insert ~5 ~-4 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 cut_sandstone []
fill ~2 ~1 ~-4 ~7 ~8 ~4 cut_sandstone []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 smooth_sandstone []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-8 ~8 ~-5 ~-8 ~8 ~5 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~8 ~8 ~-5 ~8 ~8 ~5 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-7 ~9 ~-4 ~-7 ~9 ~4 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~7 ~9 ~-4 ~7 ~9 ~4 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-6 ~9 ~-4 ~6 ~9 ~4 cut_sandstone_slab []
fill ~0 ~10 ~-5 ~0 ~10 ~5 smooth_sandstone []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~6 ~-2 chiseled_sandstone []
fill ~-8 ~0 ~2 ~-8 ~6 ~2 chiseled_sandstone []
fill ~8 ~0 ~-2 ~8 ~6 ~-2 chiseled_sandstone []
fill ~8 ~0 ~2 ~8 ~6 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x7x5) ---
fill ~-10 ~0 ~-7 ~-11 ~7 ~-8 chiseled_sandstone []
fill ~9 ~0 ~-7 ~10 ~7 ~-8 chiseled_sandstone []
setblock ~-10 ~8 ~-7 gold_block []
setblock ~10 ~8 ~-7 gold_block []
setblock ~0 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 spider_eye 10
replaceitem block ~-6 ~1 ~2 slot.container 1 arrow 21
replaceitem block ~-6 ~1 ~2 slot.container 2 gold_nugget 18
replaceitem block ~-6 ~1 ~2 slot.container 3 ender_pearl 10
replaceitem block ~-6 ~1 ~2 slot.container 4 rotten_flesh 14
replaceitem block ~-6 ~1 ~2 slot.container 5 bone 13
replaceitem block ~-6 ~1 ~2 slot.container 9 diamond 6
replaceitem block ~-6 ~1 ~2 slot.container 10 tnt 9
replaceitem block ~-6 ~1 ~2 slot.container 11 saddle 1
replaceitem block ~-6 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_apple 3
replaceitem block ~-6 ~1 ~2 slot.container 14 enchanted_golden_apple 3
loot insert ~-6 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-4 ~0

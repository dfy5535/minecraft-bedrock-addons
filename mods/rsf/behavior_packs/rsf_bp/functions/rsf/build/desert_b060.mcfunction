# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1340/4224 | 主题内编号: b060/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·圆形穹顶万骨祠堂 (desert_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cut_sandstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 cut_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 cut_sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 cut_sandstone []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 lantern []
setblock ~4 ~-6 ~0 lantern []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 gunpowder 17
replaceitem block ~0 ~-4 ~3 slot.container 1 string 8
replaceitem block ~0 ~-4 ~3 slot.container 2 spider_eye 7
replaceitem block ~0 ~-4 ~3 slot.container 3 arrow 18
replaceitem block ~0 ~-4 ~3 slot.container 4 gold_nugget 15
replaceitem block ~0 ~-4 ~3 slot.container 5 ender_pearl 7
replaceitem block ~0 ~-4 ~3 slot.container 9 bread 12
replaceitem block ~0 ~-4 ~3 slot.container 10 gold_ingot 9
replaceitem block ~0 ~-4 ~3 slot.container 11 iron_ingot 10
replaceitem block ~0 ~-4 ~3 slot.container 12 emerald 9
replaceitem block ~0 ~-4 ~3 slot.container 13 diamond 8
replaceitem block ~0 ~-4 ~3 slot.container 14 tnt 4
loot insert ~0 ~-4 ~3 loot "rsf/desert"
loot insert ~0 ~-4 ~3 loot "chests/desert_pyramid"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 gunpowder 15
replaceitem block ~0 ~-4 ~-3 slot.container 1 string 14
replaceitem block ~0 ~-4 ~-3 slot.container 2 spider_eye 13
replaceitem block ~0 ~-4 ~-3 slot.container 3 arrow 16
replaceitem block ~0 ~-4 ~-3 slot.container 4 gold_nugget 13
replaceitem block ~0 ~-4 ~-3 slot.container 5 ender_pearl 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 bread 11
replaceitem block ~0 ~-4 ~-3 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 iron_ingot 9
replaceitem block ~0 ~-4 ~-3 slot.container 12 emerald 8
replaceitem block ~0 ~-4 ~-3 slot.container 13 diamond 7
replaceitem block ~0 ~-4 ~-3 slot.container 14 tnt 10
loot insert ~0 ~-4 ~-3 loot "rsf/desert"
loot insert ~0 ~-4 ~-3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 smooth_sandstone []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 chiseled_sandstone []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 chiseled_sandstone []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 chiseled_sandstone []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 chiseled_sandstone []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 chiseled_sandstone []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 chiseled_sandstone []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 chiseled_sandstone []
fill ~0 ~1 ~5 ~0 ~7 ~5 chiseled_sandstone []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 chiseled_sandstone []
fill ~2 ~1 ~5 ~2 ~7 ~5 chiseled_sandstone []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 chiseled_sandstone []
fill ~4 ~1 ~5 ~4 ~7 ~5 chiseled_sandstone []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 chiseled_sandstone []
fill ~6 ~1 ~5 ~6 ~7 ~5 chiseled_sandstone []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 chiseled_sandstone []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 chiseled_sandstone []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 chiseled_sandstone []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 chiseled_sandstone []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 chiseled_sandstone []
fill ~6 ~1 ~1 ~6 ~7 ~1 chiseled_sandstone []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 chiseled_sandstone []
fill ~6 ~1 ~3 ~6 ~7 ~3 chiseled_sandstone []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 smooth_sandstone []
fill ~-5 ~9 ~-4 ~5 ~10 ~4 glass []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 air []
setblock ~0 ~10 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_sandstone []
setblock ~0 ~4 ~-7 lapis_block []
setblock ~0 ~5 ~-7 lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_sandstone []
setblock ~0 ~4 ~7 lapis_block []
setblock ~0 ~5 ~7 lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_sandstone []
setblock ~-8 ~4 ~0 lapis_block []
setblock ~-8 ~5 ~0 lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_sandstone []
setblock ~8 ~4 ~0 lapis_block []
setblock ~8 ~5 ~0 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-8 ~-10 ~5 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~5 ~-9 chiseled_sandstone []
setblock ~-9 ~6 ~-8 gold_block []
setblock ~9 ~6 ~-8 gold_block []
setblock ~0 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~5 ~2 ~2 ~5 bookshelf []
setblock ~-6 ~1 ~0 lectern []
setblock ~6 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 spider_eye 10
replaceitem block ~-5 ~1 ~3 slot.container 1 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 2 gold_nugget 18
replaceitem block ~-5 ~1 ~3 slot.container 3 ender_pearl 10
replaceitem block ~-5 ~1 ~3 slot.container 4 rotten_flesh 14
replaceitem block ~-5 ~1 ~3 slot.container 5 bone 13
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 10 enchanted_golden_apple 5
replaceitem block ~-5 ~1 ~3 slot.container 11 bread 15
replaceitem block ~-5 ~1 ~3 slot.container 12 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 13 iron_ingot 6
replaceitem block ~-5 ~1 ~3 slot.container 14 emerald 5
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-4 ~0

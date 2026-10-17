# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1343/4224 | 主题内编号: b063/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·方尖碑镇压古墓穴 (desert_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
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

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 torch []
setblock ~3 ~-5 ~0 torch []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 arrow 18
replaceitem block ~0 ~-3 ~2 slot.container 1 gold_nugget 15
replaceitem block ~0 ~-3 ~2 slot.container 2 ender_pearl 7
replaceitem block ~0 ~-3 ~2 slot.container 3 rotten_flesh 19
replaceitem block ~0 ~-3 ~2 slot.container 4 bone 18
replaceitem block ~0 ~-3 ~2 slot.container 5 gunpowder 17
replaceitem block ~0 ~-3 ~2 slot.container 9 enchanted_golden_apple 6
replaceitem block ~0 ~-3 ~2 slot.container 10 bread 16
replaceitem block ~0 ~-3 ~2 slot.container 11 gold_ingot 6
replaceitem block ~0 ~-3 ~2 slot.container 12 iron_ingot 7
replaceitem block ~0 ~-3 ~2 slot.container 13 emerald 6
replaceitem block ~0 ~-3 ~2 slot.container 14 diamond 5
loot insert ~0 ~-3 ~2 loot "rsf/desert"
loot insert ~0 ~-3 ~2 loot "chests/desert_pyramid"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 arrow 16
replaceitem block ~0 ~-3 ~-2 slot.container 1 gold_nugget 13
replaceitem block ~0 ~-3 ~-2 slot.container 2 ender_pearl 5
replaceitem block ~0 ~-3 ~-2 slot.container 3 rotten_flesh 17
replaceitem block ~0 ~-3 ~-2 slot.container 4 bone 16
replaceitem block ~0 ~-3 ~-2 slot.container 5 gunpowder 15
replaceitem block ~0 ~-3 ~-2 slot.container 9 enchanted_golden_apple 5
replaceitem block ~0 ~-3 ~-2 slot.container 10 bread 15
replaceitem block ~0 ~-3 ~-2 slot.container 11 gold_ingot 12
replaceitem block ~0 ~-3 ~-2 slot.container 12 iron_ingot 6
replaceitem block ~0 ~-3 ~-2 slot.container 13 emerald 5
replaceitem block ~0 ~-3 ~-2 slot.container 14 diamond 4
loot insert ~0 ~-3 ~-2 loot "rsf/desert"
loot insert ~0 ~-3 ~-2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 sandstone []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~11 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~11 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~11 ~4 air []
fill ~5 ~1 ~4 ~5 ~11 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 chiseled_sandstone []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 chiseled_sandstone []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 chiseled_sandstone []
fill ~4 ~1 ~3 ~4 ~10 ~3 chiseled_sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 cut_sandstone []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 sandstone []
fill ~0 ~16 ~0 ~0 ~19 ~0 gold_block []
setblock ~0 ~20 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~9 ~-2 chiseled_sandstone []
fill ~-6 ~0 ~2 ~-6 ~9 ~2 chiseled_sandstone []
fill ~6 ~0 ~-2 ~6 ~9 ~-2 chiseled_sandstone []
fill ~6 ~0 ~2 ~6 ~9 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~-7 ~-9 ~8 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~8 ~-8 chiseled_sandstone []
setblock ~-8 ~9 ~-7 gold_block []
setblock ~8 ~9 ~-7 gold_block []
setblock ~-1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~7 ~0 lantern []
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
replaceitem block ~4 ~1 ~2 slot.container 9 water_bucket 1
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 11 enchanted_golden_apple 2
replaceitem block ~4 ~1 ~2 slot.container 12 bread 12
replaceitem block ~4 ~1 ~2 slot.container 13 gold_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 14 iron_ingot 10
loot insert ~4 ~1 ~2 loot "rsf/desert"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~3 slot.container 1 gunpowder 15
replaceitem block ~-4 ~1 ~3 slot.container 2 string 14
replaceitem block ~-4 ~1 ~3 slot.container 3 spider_eye 13
replaceitem block ~-4 ~1 ~3 slot.container 4 arrow 16
replaceitem block ~-4 ~1 ~3 slot.container 5 gold_nugget 13
replaceitem block ~-4 ~1 ~3 slot.container 9 water_bucket 1
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 11 enchanted_golden_apple 7
replaceitem block ~-4 ~1 ~3 slot.container 12 bread 10
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 7
replaceitem block ~-4 ~1 ~3 slot.container 14 iron_ingot 8
loot insert ~-4 ~1 ~3 loot "rsf/desert"
loot insert ~-4 ~1 ~3 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0

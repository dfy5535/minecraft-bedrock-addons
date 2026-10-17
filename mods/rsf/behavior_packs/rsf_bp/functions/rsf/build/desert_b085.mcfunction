# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1365/4224 | 主题内编号: b085/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子烟囱砖石窑厂 (desert_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[underground_forge] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x11 | 地上高度 9格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 smooth_sandstone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 smooth_sandstone [] replace water
fill ~-7 ~1 ~-5 ~7 ~11 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 sandstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 cut_sandstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 smooth_sandstone []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
setblock ~-4 ~-4 ~0 blast_furnace []
setblock ~4 ~-4 ~0 smithing_table []
setblock ~0 ~-4 ~2 anvil []
fill ~0 ~-4 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 bone 18
replaceitem block ~4 ~-2 ~2 slot.container 1 gunpowder 17
replaceitem block ~4 ~-2 ~2 slot.container 2 string 8
replaceitem block ~4 ~-2 ~2 slot.container 3 spider_eye 7
replaceitem block ~4 ~-2 ~2 slot.container 4 arrow 18
replaceitem block ~4 ~-2 ~2 slot.container 5 gold_nugget 15
replaceitem block ~4 ~-2 ~2 slot.container 9 enchanted_golden_apple 7
replaceitem block ~4 ~-2 ~2 slot.container 10 bread 10
replaceitem block ~4 ~-2 ~2 slot.container 11 gold_ingot 7
replaceitem block ~4 ~-2 ~2 slot.container 12 iron_ingot 8
replaceitem block ~4 ~-2 ~2 slot.container 13 emerald 7
replaceitem block ~4 ~-2 ~2 slot.container 14 diamond 6
loot insert ~4 ~-2 ~2 loot "rsf/desert"
loot insert ~4 ~-2 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~10 ~4 smooth_sandstone []
fill ~2 ~1 ~-4 ~6 ~10 ~4 smooth_sandstone []
fill ~-5 ~1 ~-3 ~-3 ~9 ~3 air []
fill ~3 ~1 ~-3 ~5 ~9 ~3 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 orange_terracotta []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 orange_terracotta []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 smooth_sandstone []
fill ~0 ~15 ~0 ~0 ~18 ~0 lapis_block []
setblock ~0 ~19 ~0 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 orange_terracotta []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x5x3) ---
fill ~-9 ~0 ~-5 ~-10 ~5 ~-6 chiseled_sandstone []
fill ~8 ~0 ~-5 ~9 ~5 ~-6 chiseled_sandstone []
setblock ~-9 ~6 ~-5 gold_block []
setblock ~9 ~6 ~-5 gold_block []
setblock ~1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~2 slot.container 1 gold_nugget 18
replaceitem block ~5 ~1 ~2 slot.container 2 ender_pearl 10
replaceitem block ~5 ~1 ~2 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~2 slot.container 4 bone 13
replaceitem block ~5 ~1 ~2 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~2 slot.container 9 emerald 4
replaceitem block ~5 ~1 ~2 slot.container 10 diamond 3
replaceitem block ~5 ~1 ~2 slot.container 11 tnt 6
replaceitem block ~5 ~1 ~2 slot.container 12 saddle 1
replaceitem block ~5 ~1 ~2 slot.container 13 water_bucket 1
replaceitem block ~5 ~1 ~2 slot.container 14 golden_apple 7
loot insert ~5 ~1 ~2 loot "rsf/desert"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 4 string 14
replaceitem block ~-5 ~1 ~3 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~3 slot.container 9 emerald 9
replaceitem block ~-5 ~1 ~3 slot.container 10 diamond 8
replaceitem block ~-5 ~1 ~3 slot.container 11 tnt 4
replaceitem block ~-5 ~1 ~3 slot.container 12 saddle 1
replaceitem block ~-5 ~1 ~3 slot.container 13 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 14 golden_apple 5
loot insert ~-5 ~1 ~3 loot "rsf/desert"
loot insert ~-5 ~1 ~3 loot "chests/desert_pyramid"
summon pillager ~0 ~1 ~-1
summon zombie ~-1 ~1 ~1

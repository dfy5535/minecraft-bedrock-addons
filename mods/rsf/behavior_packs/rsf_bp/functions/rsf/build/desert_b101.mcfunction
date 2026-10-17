# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1381/4224 | 主题内编号: b101/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·L型驻军兵营军械所 (desert_bunker_l_garrison)
# 建筑构造: 主体[l_compound] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 smooth_sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 cut_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 lapis_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 bone 18
replaceitem block ~4 ~-2 ~3 slot.container 1 gunpowder 17
replaceitem block ~4 ~-2 ~3 slot.container 2 string 8
replaceitem block ~4 ~-2 ~3 slot.container 3 spider_eye 7
replaceitem block ~4 ~-2 ~3 slot.container 4 arrow 18
replaceitem block ~4 ~-2 ~3 slot.container 5 gold_nugget 15
replaceitem block ~4 ~-2 ~3 slot.container 9 tnt 9
replaceitem block ~4 ~-2 ~3 slot.container 10 saddle 1
replaceitem block ~4 ~-2 ~3 slot.container 11 water_bucket 1
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 13 enchanted_golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 14 bread 13
loot insert ~4 ~-2 ~3 loot "rsf/desert"
loot insert ~4 ~-2 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-6 ~1 ~-5 ~0 ~8 ~5 smooth_sandstone []
fill ~-6 ~1 ~0 ~6 ~7 ~5 sandstone []
fill ~-5 ~1 ~-4 ~-1 ~7 ~4 air []
fill ~-1 ~1 ~1 ~5 ~6 ~4 air []
fill ~-2 ~1 ~-5 ~-2 ~2 ~-5 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 orange_terracotta []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 cobblestone_wall []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 air []
setblock ~-6 ~9 ~-5 sandstone []
setblock ~-6 ~10 ~-5 torch []
setblock ~-6 ~9 ~5 sandstone []
setblock ~-6 ~10 ~5 torch []
setblock ~6 ~9 ~-5 sandstone []
setblock ~6 ~10 ~-5 torch []
setblock ~6 ~9 ~5 sandstone []
setblock ~6 ~10 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~10 ~2 sandstone []
fill ~7 ~1 ~-1 ~8 ~9 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~11 ~0 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-9 ~0 ~-7 ~-10 ~6 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~6 ~-8 chiseled_sandstone []
setblock ~-9 ~7 ~-7 gold_block []
setblock ~9 ~7 ~-7 gold_block []
setblock ~-1 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~4 stonecutter_block []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 arrow 21
replaceitem block ~5 ~1 ~3 slot.container 1 gold_nugget 18
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 10
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 14
replaceitem block ~5 ~1 ~3 slot.container 4 bone 13
replaceitem block ~5 ~1 ~3 slot.container 5 gunpowder 12
replaceitem block ~5 ~1 ~3 slot.container 9 gold_ingot 8
replaceitem block ~5 ~1 ~3 slot.container 10 iron_ingot 9
replaceitem block ~5 ~1 ~3 slot.container 11 emerald 8
replaceitem block ~5 ~1 ~3 slot.container 12 diamond 7
replaceitem block ~5 ~1 ~3 slot.container 13 tnt 10
replaceitem block ~5 ~1 ~3 slot.container 14 saddle 1
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 5
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 17
replaceitem block ~-5 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 3 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 4 string 14
replaceitem block ~-5 ~1 ~4 slot.container 5 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 9 gold_ingot 6
replaceitem block ~-5 ~1 ~4 slot.container 10 iron_ingot 7
replaceitem block ~-5 ~1 ~4 slot.container 11 emerald 6
replaceitem block ~-5 ~1 ~4 slot.container 12 diamond 5
replaceitem block ~-5 ~1 ~4 slot.container 13 tnt 8
replaceitem block ~-5 ~1 ~4 slot.container 14 saddle 1
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon skeleton ~0 ~1 ~-1
summon spider ~-1 ~1 ~1
summon pillager ~1 ~1 ~1

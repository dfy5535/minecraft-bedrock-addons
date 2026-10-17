# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1367/4224 | 主题内编号: b087/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·十字矿道枢纽补给室 (desert_mine_cross_tunnel_hub)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~8 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~3 anvil []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 lantern []
setblock ~4 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~3 slot.container 0 string 8
replaceitem block ~4 ~-3 ~3 slot.container 1 spider_eye 7
replaceitem block ~4 ~-3 ~3 slot.container 2 arrow 18
replaceitem block ~4 ~-3 ~3 slot.container 3 gold_nugget 15
replaceitem block ~4 ~-3 ~3 slot.container 4 ender_pearl 7
replaceitem block ~4 ~-3 ~3 slot.container 5 rotten_flesh 19
replaceitem block ~4 ~-3 ~3 slot.container 9 tnt 5
replaceitem block ~4 ~-3 ~3 slot.container 10 saddle 1
replaceitem block ~4 ~-3 ~3 slot.container 11 water_bucket 1
replaceitem block ~4 ~-3 ~3 slot.container 12 golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 13 enchanted_golden_apple 6
replaceitem block ~4 ~-3 ~3 slot.container 14 bread 16
loot insert ~4 ~-3 ~3 loot "rsf/desert"
loot insert ~4 ~-3 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~6 ~5 sandstone []
fill ~-6 ~1 ~-2 ~6 ~6 ~2 sandstone []
fill ~-1 ~1 ~-4 ~1 ~5 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~5 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 cobblestone_wall []
setblock ~6 ~2 ~0 cobblestone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 cut_sandstone []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 cobblestone_wall []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 chiseled_sandstone []
setblock ~-6 ~8 ~-5 torch []
setblock ~-6 ~7 ~5 chiseled_sandstone []
setblock ~-6 ~8 ~5 torch []
setblock ~6 ~7 ~-5 chiseled_sandstone []
setblock ~6 ~8 ~-5 torch []
setblock ~6 ~7 ~5 chiseled_sandstone []
setblock ~6 ~8 ~5 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 cut_sandstone []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 torch []
setblock ~2 ~4 ~-8 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x8x5) ---
fill ~-9 ~0 ~-8 ~-10 ~7 ~-9 chiseled_sandstone []
fill ~8 ~0 ~-8 ~9 ~7 ~-9 chiseled_sandstone []
setblock ~-9 ~8 ~-8 gold_block []
setblock ~9 ~8 ~-8 gold_block []
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
replaceitem block ~5 ~1 ~3 slot.container 9 enchanted_golden_apple 3
replaceitem block ~5 ~1 ~3 slot.container 10 bread 13
replaceitem block ~5 ~1 ~3 slot.container 11 gold_ingot 10
replaceitem block ~5 ~1 ~3 slot.container 12 iron_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 13 emerald 10
replaceitem block ~5 ~1 ~3 slot.container 14 diamond 2
loot insert ~5 ~1 ~3 loot "rsf/desert"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 1 gunpowder 15
replaceitem block ~-5 ~1 ~4 slot.container 2 string 14
replaceitem block ~-5 ~1 ~4 slot.container 3 spider_eye 13
replaceitem block ~-5 ~1 ~4 slot.container 4 arrow 16
replaceitem block ~-5 ~1 ~4 slot.container 5 gold_nugget 13
replaceitem block ~-5 ~1 ~4 slot.container 9 enchanted_golden_apple 1
replaceitem block ~-5 ~1 ~4 slot.container 10 bread 11
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~-5 ~1 ~4 slot.container 12 iron_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 13 emerald 8
replaceitem block ~-5 ~1 ~4 slot.container 14 diamond 7
loot insert ~-5 ~1 ~4 loot "rsf/desert"
loot insert ~-5 ~1 ~4 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-3 ~0

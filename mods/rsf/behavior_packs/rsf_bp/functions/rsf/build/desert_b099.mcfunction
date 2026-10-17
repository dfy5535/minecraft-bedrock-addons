# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1379/4224 | 主题内编号: b099/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·铁闸门瓮城防御堡 (desert_bunker_gatehouse_keep)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[battlement_flat] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 sandstone [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 sandstone [] replace water
fill ~-7 ~1 ~-5 ~7 ~10 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 sandstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 smooth_sandstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 sandstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-3 ~5 ~-1 ~3 cut_sandstone []
fill ~-4 ~-4 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 lantern []
setblock ~4 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~2 slot.container 0 ender_pearl 7
replaceitem block ~4 ~-2 ~2 slot.container 1 rotten_flesh 19
replaceitem block ~4 ~-2 ~2 slot.container 2 bone 18
replaceitem block ~4 ~-2 ~2 slot.container 3 gunpowder 17
replaceitem block ~4 ~-2 ~2 slot.container 4 string 8
replaceitem block ~4 ~-2 ~2 slot.container 5 spider_eye 7
replaceitem block ~4 ~-2 ~2 slot.container 9 enchanted_golden_apple 4
replaceitem block ~4 ~-2 ~2 slot.container 10 bread 14
replaceitem block ~4 ~-2 ~2 slot.container 11 gold_ingot 11
replaceitem block ~4 ~-2 ~2 slot.container 12 iron_ingot 12
replaceitem block ~4 ~-2 ~2 slot.container 13 emerald 4
replaceitem block ~4 ~-2 ~2 slot.container 14 diamond 3
loot insert ~4 ~-2 ~2 loot "rsf/desert"
loot insert ~4 ~-2 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~8 ~4 sandstone []
fill ~-5 ~1 ~-3 ~5 ~7 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~8 ~-4 ~6 ~8 ~4 cut_sandstone []
fill ~-6 ~9 ~-4 ~6 ~9 ~4 cobblestone_wall []
fill ~-5 ~9 ~-3 ~5 ~9 ~3 air []
setblock ~-6 ~9 ~-4 chiseled_sandstone []
setblock ~-6 ~10 ~-4 torch []
setblock ~-6 ~9 ~4 chiseled_sandstone []
setblock ~-6 ~10 ~4 torch []
setblock ~6 ~9 ~-4 chiseled_sandstone []
setblock ~6 ~10 ~-4 torch []
setblock ~6 ~9 ~4 chiseled_sandstone []
setblock ~6 ~10 ~4 torch []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 cut_sandstone []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 torch []
setblock ~2 ~4 ~-7 torch []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~-7 ~-10 ~4 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~4 ~-8 chiseled_sandstone []
setblock ~-9 ~5 ~-7 gold_block []
setblock ~9 ~5 ~-7 gold_block []
setblock ~-3 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 string 11
replaceitem block ~5 ~1 ~2 slot.container 1 spider_eye 10
replaceitem block ~5 ~1 ~2 slot.container 2 arrow 21
replaceitem block ~5 ~1 ~2 slot.container 3 gold_nugget 18
replaceitem block ~5 ~1 ~2 slot.container 4 ender_pearl 10
replaceitem block ~5 ~1 ~2 slot.container 5 rotten_flesh 14
replaceitem block ~5 ~1 ~2 slot.container 9 tnt 4
replaceitem block ~5 ~1 ~2 slot.container 10 saddle 1
replaceitem block ~5 ~1 ~2 slot.container 11 water_bucket 1
replaceitem block ~5 ~1 ~2 slot.container 12 golden_apple 5
replaceitem block ~5 ~1 ~2 slot.container 13 enchanted_golden_apple 5
replaceitem block ~5 ~1 ~2 slot.container 14 bread 15
loot insert ~5 ~1 ~2 loot "rsf/desert"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 16
replaceitem block ~-5 ~1 ~3 slot.container 1 gold_nugget 13
replaceitem block ~-5 ~1 ~3 slot.container 2 ender_pearl 5
replaceitem block ~-5 ~1 ~3 slot.container 3 rotten_flesh 17
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 gunpowder 15
replaceitem block ~-5 ~1 ~3 slot.container 9 tnt 9
replaceitem block ~-5 ~1 ~3 slot.container 10 saddle 1
replaceitem block ~-5 ~1 ~3 slot.container 11 water_bucket 1
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 13 enchanted_golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 14 bread 13
loot insert ~-5 ~1 ~3 loot "rsf/desert"
loot insert ~-5 ~1 ~3 loot "chests/desert_pyramid"
summon camel ~0 ~1 ~-1
summon husk ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon spider ~0 ~-2 ~0

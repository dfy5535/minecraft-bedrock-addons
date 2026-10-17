# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1354/4224 | 主题内编号: b074/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·十字四象图腾柱阵 (desert_totem_cross_monoliths)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[open_colonnade] + 地宫[portal_chamber] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_stonecutter]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone [] replace water
fill ~-7 ~1 ~-6 ~7 ~10 ~6 air []
fill ~-7 ~0 ~-6 ~7 ~0 ~6 sandstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 emerald_block []
setblock ~0 ~-6 ~0 campfire []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-3 ~0 slot.container 0 gunpowder 17
replaceitem block ~4 ~-3 ~0 slot.container 1 string 8
replaceitem block ~4 ~-3 ~0 slot.container 2 spider_eye 7
replaceitem block ~4 ~-3 ~0 slot.container 3 arrow 18
replaceitem block ~4 ~-3 ~0 slot.container 4 gold_nugget 15
replaceitem block ~4 ~-3 ~0 slot.container 5 ender_pearl 7
replaceitem block ~4 ~-3 ~0 slot.container 9 saddle 1
replaceitem block ~4 ~-3 ~0 slot.container 10 water_bucket 1
replaceitem block ~4 ~-3 ~0 slot.container 11 golden_apple 5
replaceitem block ~4 ~-3 ~0 slot.container 12 enchanted_golden_apple 5
replaceitem block ~4 ~-3 ~0 slot.container 13 bread 15
replaceitem block ~4 ~-3 ~0 slot.container 14 gold_ingot 12
loot insert ~4 ~-3 ~0 loot "rsf/desert"
loot insert ~4 ~-3 ~0 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~8 ~5 sandstone []
fill ~-6 ~1 ~-2 ~6 ~8 ~2 sandstone []
fill ~-1 ~1 ~-4 ~1 ~7 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~7 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 birch_fence []
setblock ~6 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~8 ~-5 ~-6 ~10 ~-5 chiseled_sandstone []
setblock ~-6 ~11 ~-5 campfire []
fill ~-6 ~8 ~5 ~-6 ~10 ~5 chiseled_sandstone []
setblock ~-6 ~11 ~5 campfire []
fill ~6 ~8 ~-5 ~6 ~10 ~-5 chiseled_sandstone []
setblock ~6 ~11 ~-5 campfire []
fill ~6 ~8 ~5 ~6 ~10 ~5 chiseled_sandstone []
setblock ~6 ~11 ~5 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~5 ~-7 chiseled_sandstone []
setblock ~-8 ~6 ~-7 campfire []
fill ~-8 ~0 ~7 ~-8 ~5 ~7 chiseled_sandstone []
setblock ~-8 ~6 ~7 campfire []
fill ~8 ~0 ~-7 ~8 ~5 ~-7 chiseled_sandstone []
setblock ~8 ~6 ~-7 campfire []
fill ~8 ~0 ~7 ~8 ~5 ~7 chiseled_sandstone []
setblock ~8 ~6 ~7 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~-7 ~-10 ~4 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~4 ~-8 chiseled_sandstone []
setblock ~-9 ~5 ~-7 gold_block []
setblock ~9 ~5 ~-7 gold_block []
setblock ~2 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_stonecutter) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-5 ~1 ~3 stonecutter_block []
setblock ~0 ~1 ~3 crafting_table []
setblock ~5 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 gunpowder 12
replaceitem block ~-5 ~1 ~3 slot.container 1 string 11
replaceitem block ~-5 ~1 ~3 slot.container 2 spider_eye 10
replaceitem block ~-5 ~1 ~3 slot.container 3 arrow 21
replaceitem block ~-5 ~1 ~3 slot.container 4 gold_nugget 18
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 10
replaceitem block ~-5 ~1 ~3 slot.container 9 bread 13
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 10
replaceitem block ~-5 ~1 ~3 slot.container 11 iron_ingot 11
replaceitem block ~-5 ~1 ~3 slot.container 12 emerald 10
replaceitem block ~-5 ~1 ~3 slot.container 13 diamond 2
replaceitem block ~-5 ~1 ~3 slot.container 14 tnt 5
loot insert ~-5 ~1 ~3 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1

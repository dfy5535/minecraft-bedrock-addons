# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1318/4224 | 主题内编号: b038/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·四方凯旋衣冠冢 (desert_obelisk_arch_cenotaph)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 yellow_terracotta []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~3 ~0 ~0 ~3 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 campfire []
setblock ~2 ~-5 ~0 campfire []
setblock ~0 ~-3 ~-2 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-2 slot.container 0 rotten_flesh 19
replaceitem block ~0 ~-3 ~-2 slot.container 1 bone 18
replaceitem block ~0 ~-3 ~-2 slot.container 2 gunpowder 17
replaceitem block ~0 ~-3 ~-2 slot.container 3 string 8
replaceitem block ~0 ~-3 ~-2 slot.container 4 spider_eye 7
replaceitem block ~0 ~-3 ~-2 slot.container 5 arrow 18
replaceitem block ~0 ~-3 ~-2 slot.container 9 golden_apple 7
replaceitem block ~0 ~-3 ~-2 slot.container 10 enchanted_golden_apple 7
replaceitem block ~0 ~-3 ~-2 slot.container 11 bread 10
replaceitem block ~0 ~-3 ~-2 slot.container 12 gold_ingot 7
replaceitem block ~0 ~-3 ~-2 slot.container 13 iron_ingot 8
replaceitem block ~0 ~-3 ~-2 slot.container 14 emerald 7
loot insert ~0 ~-3 ~-2 loot "rsf/desert"
loot insert ~0 ~-3 ~-2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-4 ~2 ~9 ~4 sandstone []
fill ~-5 ~1 ~-2 ~5 ~9 ~2 sandstone []
fill ~-1 ~1 ~-3 ~1 ~8 ~3 air []
fill ~-4 ~1 ~-1 ~4 ~8 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~4 ~0 ~2 ~4 air []
setblock ~-5 ~2 ~0 birch_fence []
setblock ~5 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 yellow_terracotta []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 sandstone []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 emerald_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 yellow_terracotta []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 chiseled_sandstone []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 chiseled_sandstone []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 sandstone_slab []
setblock ~0 ~3 ~-6 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x6x6) ---
fill ~-8 ~0 ~-6 ~-9 ~8 ~-7 chiseled_sandstone []
fill ~7 ~0 ~-6 ~8 ~8 ~-7 chiseled_sandstone []
setblock ~-8 ~9 ~-6 gold_block []
setblock ~8 ~9 ~-6 gold_block []
setblock ~-1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 lantern []
setblock ~-4 ~1 ~4 smoker []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gold_nugget 18
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 10
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 14
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 10 emerald 7
replaceitem block ~-4 ~1 ~2 slot.container 11 diamond 6
replaceitem block ~-4 ~1 ~2 slot.container 12 tnt 9
replaceitem block ~-4 ~1 ~2 slot.container 13 saddle 1
replaceitem block ~-4 ~1 ~2 slot.container 14 water_bucket 1
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1

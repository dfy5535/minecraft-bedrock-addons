# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1402/4224 | 主题内编号: b122/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·十字穹顶宏伟圣堂与墓窟 (desert_grand_cross_cathedral)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[spire_obelisk] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 sandstone [] replace air
fill ~-8 ~-6 ~-7 ~8 ~-1 ~7 sandstone [] replace water
fill ~-8 ~1 ~-7 ~8 ~12 ~7 air []
fill ~-8 ~0 ~-7 ~8 ~0 ~7 sandstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 smooth_sandstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 sandstone []
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 yellow_terracotta []
setblock ~0 ~-7 ~0 gold_block []
fill ~0 ~-6 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 campfire []
setblock ~2 ~-6 ~0 campfire []
setblock ~0 ~-4 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-4 slot.container 0 spider_eye 7
replaceitem block ~0 ~-4 ~-4 slot.container 1 arrow 18
replaceitem block ~0 ~-4 ~-4 slot.container 2 gold_nugget 15
replaceitem block ~0 ~-4 ~-4 slot.container 3 ender_pearl 7
replaceitem block ~0 ~-4 ~-4 slot.container 4 rotten_flesh 19
replaceitem block ~0 ~-4 ~-4 slot.container 5 bone 18
replaceitem block ~0 ~-4 ~-4 slot.container 9 bread 15
replaceitem block ~0 ~-4 ~-4 slot.container 10 gold_ingot 12
replaceitem block ~0 ~-4 ~-4 slot.container 11 iron_ingot 6
replaceitem block ~0 ~-4 ~-4 slot.container 12 emerald 5
replaceitem block ~0 ~-4 ~-4 slot.container 13 diamond 4
replaceitem block ~0 ~-4 ~-4 slot.container 14 tnt 7
loot insert ~0 ~-4 ~-4 loot "rsf/desert"
loot insert ~0 ~-4 ~-4 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~10 ~6 sandstone []
fill ~-7 ~1 ~-2 ~7 ~10 ~2 sandstone []
fill ~-1 ~1 ~-5 ~1 ~9 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~9 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 birch_fence []
setblock ~7 ~2 ~0 birch_fence []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 yellow_terracotta []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 sandstone []
fill ~0 ~16 ~0 ~0 ~19 ~0 emerald_block []
setblock ~0 ~20 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~9 ~-2 chiseled_sandstone []
fill ~-8 ~0 ~2 ~-8 ~9 ~2 chiseled_sandstone []
fill ~8 ~0 ~-2 ~8 ~9 ~-2 chiseled_sandstone []
fill ~8 ~0 ~2 ~8 ~9 ~2 chiseled_sandstone []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x8x5) ---
fill ~-10 ~0 ~-8 ~-11 ~7 ~-9 chiseled_sandstone []
fill ~9 ~0 ~-8 ~10 ~7 ~-9 chiseled_sandstone []
setblock ~-10 ~8 ~-8 gold_block []
setblock ~10 ~8 ~-8 gold_block []
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
replaceitem block ~-6 ~1 ~4 slot.container 9 diamond 4
replaceitem block ~-6 ~1 ~4 slot.container 10 tnt 7
replaceitem block ~-6 ~1 ~4 slot.container 11 saddle 1
replaceitem block ~-6 ~1 ~4 slot.container 12 water_bucket 1
replaceitem block ~-6 ~1 ~4 slot.container 13 golden_apple 8
replaceitem block ~-6 ~1 ~4 slot.container 14 enchanted_golden_apple 1
loot insert ~-6 ~1 ~4 loot "rsf/desert"
summon zombie ~0 ~1 ~-1
summon camel ~-1 ~1 ~1
summon husk ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1362/4224 | 主题内编号: b082/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·竖井井架矿工物资站 (desert_mine_shaft_headframe)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pyramid_stepped] + 地宫[prison_dungeon] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 6格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-7 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~11 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-7 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-7 ~0 ~0 ~-8 ~0 air []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-7 ~2 campfire []
setblock ~3 ~-7 ~-2 campfire []
setblock ~3 ~-5 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-5 ~2 slot.container 0 spider_eye 7
replaceitem block ~3 ~-5 ~2 slot.container 1 arrow 18
replaceitem block ~3 ~-5 ~2 slot.container 2 gold_nugget 15
replaceitem block ~3 ~-5 ~2 slot.container 3 ender_pearl 7
replaceitem block ~3 ~-5 ~2 slot.container 4 rotten_flesh 19
replaceitem block ~3 ~-5 ~2 slot.container 5 bone 18
replaceitem block ~3 ~-5 ~2 slot.container 9 saddle 1
replaceitem block ~3 ~-5 ~2 slot.container 10 water_bucket 1
replaceitem block ~3 ~-5 ~2 slot.container 11 golden_apple 3
replaceitem block ~3 ~-5 ~2 slot.container 12 enchanted_golden_apple 3
replaceitem block ~3 ~-5 ~2 slot.container 13 bread 13
replaceitem block ~3 ~-5 ~2 slot.container 14 gold_ingot 10
loot insert ~3 ~-5 ~2 loot "rsf/desert"
loot insert ~3 ~-5 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 sandstone []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 sandstone_slab []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 sandstone []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 yellow_terracotta []
fill ~-4 ~11 ~-3 ~4 ~11 ~3 sandstone []
fill ~-1 ~12 ~-1 ~1 ~12 ~1 emerald_block []
setblock ~0 ~13 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 smooth_sandstone []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~-8 ~0 ~-5 ~-9 ~7 ~-6 chiseled_sandstone []
fill ~7 ~0 ~-5 ~8 ~7 ~-6 chiseled_sandstone []
setblock ~-8 ~8 ~-5 gold_block []
setblock ~8 ~8 ~-5 gold_block []
setblock ~-2 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 1 string 11
replaceitem block ~-4 ~1 ~2 slot.container 2 spider_eye 10
replaceitem block ~-4 ~1 ~2 slot.container 3 arrow 21
replaceitem block ~-4 ~1 ~2 slot.container 4 gold_nugget 18
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 10
replaceitem block ~-4 ~1 ~2 slot.container 9 diamond 6
replaceitem block ~-4 ~1 ~2 slot.container 10 tnt 9
replaceitem block ~-4 ~1 ~2 slot.container 11 saddle 1
replaceitem block ~-4 ~1 ~2 slot.container 12 water_bucket 1
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 14 enchanted_golden_apple 3
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon husk ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

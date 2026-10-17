# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1400/4224 | 主题内编号: b120/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·引水渠跨桥水培温室 (desert_conservatory_bridge_canal)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[dome_glass] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 cut_sandstone [] replace air
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 cut_sandstone [] replace water
fill ~-7 ~1 ~-5 ~7 ~9 ~5 air []
fill ~-7 ~0 ~-5 ~7 ~0 ~5 cut_sandstone_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 sandstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 cut_sandstone []
setblock ~0 ~0 ~0 orange_terracotta []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-4 ~-3 ~5 ~-1 ~3 smooth_sandstone []
fill ~-4 ~-5 ~-2 ~4 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 water []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 lantern []
setblock ~-4 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-3 ~2 slot.container 0 gunpowder 17
replaceitem block ~-4 ~-3 ~2 slot.container 1 string 8
replaceitem block ~-4 ~-3 ~2 slot.container 2 spider_eye 7
replaceitem block ~-4 ~-3 ~2 slot.container 3 arrow 18
replaceitem block ~-4 ~-3 ~2 slot.container 4 gold_nugget 15
replaceitem block ~-4 ~-3 ~2 slot.container 5 ender_pearl 7
replaceitem block ~-4 ~-3 ~2 slot.container 9 diamond 3
replaceitem block ~-4 ~-3 ~2 slot.container 10 tnt 6
replaceitem block ~-4 ~-3 ~2 slot.container 11 saddle 1
replaceitem block ~-4 ~-3 ~2 slot.container 12 water_bucket 1
replaceitem block ~-4 ~-3 ~2 slot.container 13 golden_apple 7
replaceitem block ~-4 ~-3 ~2 slot.container 14 enchanted_golden_apple 7
loot insert ~-4 ~-3 ~2 loot "rsf/desert"
loot insert ~-4 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 cut_sandstone []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 smooth_sandstone []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 glass []
fill ~-4 ~8 ~-2 ~4 ~8 ~2 air []
setblock ~0 ~9 ~0 lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 smooth_sandstone []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 lantern []
setblock ~2 ~4 ~-7 lantern []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~-7 ~-10 ~5 ~-8 chiseled_sandstone []
fill ~8 ~0 ~-7 ~9 ~5 ~-8 chiseled_sandstone []
setblock ~-9 ~6 ~-7 gold_block []
setblock ~9 ~6 ~-7 gold_block []
setblock ~0 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~7 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 rotten_flesh 14
replaceitem block ~-5 ~1 ~2 slot.container 1 bone 13
replaceitem block ~-5 ~1 ~2 slot.container 2 gunpowder 12
replaceitem block ~-5 ~1 ~2 slot.container 3 string 11
replaceitem block ~-5 ~1 ~2 slot.container 4 spider_eye 10
replaceitem block ~-5 ~1 ~2 slot.container 5 arrow 21
replaceitem block ~-5 ~1 ~2 slot.container 9 golden_apple 2
replaceitem block ~-5 ~1 ~2 slot.container 10 enchanted_golden_apple 2
replaceitem block ~-5 ~1 ~2 slot.container 11 bread 12
replaceitem block ~-5 ~1 ~2 slot.container 12 gold_ingot 9
replaceitem block ~-5 ~1 ~2 slot.container 13 iron_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 14 emerald 9
loot insert ~-5 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-3 ~0

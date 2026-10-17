# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1370/4224 | 主题内编号: b090/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·八角攒尖悬灯神龛 (desert_shrine_octagonal_gazebo)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[secret_cellar] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~10 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 sandstone []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 gold_nugget 15
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 7
replaceitem block ~3 ~-3 ~2 slot.container 2 rotten_flesh 19
replaceitem block ~3 ~-3 ~2 slot.container 3 bone 18
replaceitem block ~3 ~-3 ~2 slot.container 4 gunpowder 17
replaceitem block ~3 ~-3 ~2 slot.container 5 string 8
replaceitem block ~3 ~-3 ~2 slot.container 9 iron_ingot 7
replaceitem block ~3 ~-3 ~2 slot.container 10 emerald 6
replaceitem block ~3 ~-3 ~2 slot.container 11 diamond 5
replaceitem block ~3 ~-3 ~2 slot.container 12 tnt 8
replaceitem block ~3 ~-3 ~2 slot.container 13 saddle 1
replaceitem block ~3 ~-3 ~2 slot.container 14 water_bucket 1
loot insert ~3 ~-3 ~2 loot "rsf/desert"
loot insert ~3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~8 ~4 sandstone []
fill ~-4 ~1 ~-3 ~4 ~7 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~9 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~9 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~9 ~4 air []
fill ~5 ~1 ~4 ~5 ~9 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~8 ~-3 chiseled_sandstone []
fill ~4 ~1 ~-3 ~4 ~8 ~-3 chiseled_sandstone []
fill ~-4 ~1 ~3 ~-4 ~8 ~3 chiseled_sandstone []
fill ~4 ~1 ~3 ~4 ~8 ~3 chiseled_sandstone []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 yellow_terracotta []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 sandstone []
fill ~-1 ~11 ~-1 ~1 ~11 ~1 emerald_block []
setblock ~0 ~12 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-7 ~0 ~-6 ~-7 ~5 ~-6 chiseled_sandstone []
setblock ~-7 ~6 ~-6 campfire []
fill ~-7 ~0 ~6 ~-7 ~5 ~6 chiseled_sandstone []
setblock ~-7 ~6 ~6 campfire []
fill ~7 ~0 ~-6 ~7 ~5 ~-6 chiseled_sandstone []
setblock ~7 ~6 ~-6 campfire []
fill ~7 ~0 ~6 ~7 ~5 ~6 chiseled_sandstone []
setblock ~7 ~6 ~6 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-7 ~-9 ~5 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~5 ~-8 chiseled_sandstone []
setblock ~-8 ~6 ~-7 gold_block []
setblock ~8 ~6 ~-7 gold_block []
setblock ~1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~7 ~0 lantern []
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
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 10 enchanted_golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 11 bread 10
replaceitem block ~-4 ~1 ~2 slot.container 12 gold_ingot 7
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 8
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 7
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-3 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1406/4224 | 主题内编号: b126/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双子主塔天桥宫殿与暗牢 (desert_grand_twin_citadel)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[prison_dungeon] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 17x13 | 地上高度 10格 | 地下深度 5格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 sandstone [] replace air
fill ~-8 ~-6 ~-6 ~8 ~-1 ~6 sandstone [] replace water
fill ~-8 ~1 ~-6 ~8 ~12 ~6 air []
fill ~-8 ~0 ~-6 ~8 ~0 ~6 sandstone_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 smooth_sandstone []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-7 ~-5 ~-5 ~7 ~-1 ~5 sandstone []
fill ~-6 ~-6 ~-4 ~6 ~-1 ~4 air []
fill ~-6 ~-6 ~0 ~6 ~-1 ~0 iron_bars []
fill ~0 ~-6 ~0 ~0 ~-7 ~0 air []
fill ~0 ~-6 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~-5 ~-6 ~3 campfire []
setblock ~5 ~-6 ~-3 campfire []
setblock ~5 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~-4 ~3 slot.container 0 rotten_flesh 19
replaceitem block ~5 ~-4 ~3 slot.container 1 bone 18
replaceitem block ~5 ~-4 ~3 slot.container 2 gunpowder 17
replaceitem block ~5 ~-4 ~3 slot.container 3 string 8
replaceitem block ~5 ~-4 ~3 slot.container 4 spider_eye 7
replaceitem block ~5 ~-4 ~3 slot.container 5 arrow 18
replaceitem block ~5 ~-4 ~3 slot.container 9 golden_apple 3
replaceitem block ~5 ~-4 ~3 slot.container 10 enchanted_golden_apple 3
replaceitem block ~5 ~-4 ~3 slot.container 11 bread 13
replaceitem block ~5 ~-4 ~3 slot.container 12 gold_ingot 10
replaceitem block ~5 ~-4 ~3 slot.container 13 iron_ingot 11
replaceitem block ~5 ~-4 ~3 slot.container 14 emerald 10
loot insert ~5 ~-4 ~3 loot "rsf/desert"
loot insert ~5 ~-4 ~3 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~11 ~5 sandstone []
fill ~2 ~1 ~-5 ~7 ~11 ~5 sandstone []
fill ~-6 ~1 ~-4 ~-3 ~10 ~4 air []
fill ~3 ~1 ~-4 ~6 ~10 ~4 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 yellow_terracotta []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 yellow_terracotta []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 sandstone []
fill ~0 ~16 ~0 ~0 ~19 ~0 emerald_block []
setblock ~0 ~20 ~0 campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 yellow_terracotta []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 campfire []
setblock ~2 ~4 ~-8 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 10x8x4) ---
fill ~-10 ~0 ~-8 ~-11 ~6 ~-9 chiseled_sandstone []
fill ~9 ~0 ~-8 ~10 ~6 ~-9 chiseled_sandstone []
setblock ~-10 ~7 ~-8 gold_block []
setblock ~10 ~7 ~-8 gold_block []
setblock ~2 ~0 ~-6 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 gold_nugget 18
replaceitem block ~-6 ~1 ~3 slot.container 1 ender_pearl 10
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 14
replaceitem block ~-6 ~1 ~3 slot.container 3 bone 13
replaceitem block ~-6 ~1 ~3 slot.container 4 gunpowder 12
replaceitem block ~-6 ~1 ~3 slot.container 5 string 11
replaceitem block ~-6 ~1 ~3 slot.container 9 saddle 1
replaceitem block ~-6 ~1 ~3 slot.container 10 water_bucket 1
replaceitem block ~-6 ~1 ~3 slot.container 11 golden_apple 3
replaceitem block ~-6 ~1 ~3 slot.container 12 enchanted_golden_apple 3
replaceitem block ~-6 ~1 ~3 slot.container 13 bread 13
replaceitem block ~-6 ~1 ~3 slot.container 14 gold_ingot 10
loot insert ~-6 ~1 ~3 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-4 ~0

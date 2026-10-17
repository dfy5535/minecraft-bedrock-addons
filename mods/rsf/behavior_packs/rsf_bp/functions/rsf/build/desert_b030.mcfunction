# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #1310/4224 | 主题内编号: b030/128
# 地形主题 #11: 沙漠与沙漠丘陵 (desert) —— 带雕纹砂岩方尖碑与地下绿洲蓄水井
# 建筑名称: 法老金字塔系·双坡顶驻军卫戍塔 (desert_tower_gabled_keep)
# 建筑构造: 主体[l_compound] + 屋顶[gabled_stairs] + 地宫[prison_dungeon] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 4格
# 适用群系: desert, desert_hills, desert_mutated
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 sandstone [] replace water
fill ~-6 ~1 ~-5 ~6 ~12 ~5 air []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 sandstone_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 smooth_sandstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 smooth_sandstone []
setblock ~0 ~0 ~0 emerald_block []

# --- [阶段 2] 地下结构 (prison_dungeon) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 sandstone []
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 air []
fill ~-4 ~-5 ~0 ~4 ~-1 ~0 iron_bars []
fill ~0 ~-5 ~0 ~0 ~-6 ~0 air []
fill ~0 ~-5 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~-3 ~-5 ~2 campfire []
setblock ~3 ~-5 ~-2 campfire []
setblock ~3 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~3 ~-3 ~2 slot.container 0 rotten_flesh 19
replaceitem block ~3 ~-3 ~2 slot.container 1 bone 18
replaceitem block ~3 ~-3 ~2 slot.container 2 gunpowder 17
replaceitem block ~3 ~-3 ~2 slot.container 3 string 8
replaceitem block ~3 ~-3 ~2 slot.container 4 spider_eye 7
replaceitem block ~3 ~-3 ~2 slot.container 5 arrow 18
replaceitem block ~3 ~-3 ~2 slot.container 9 bread 13
replaceitem block ~3 ~-3 ~2 slot.container 10 gold_ingot 10
replaceitem block ~3 ~-3 ~2 slot.container 11 iron_ingot 11
replaceitem block ~3 ~-3 ~2 slot.container 12 emerald 10
replaceitem block ~3 ~-3 ~2 slot.container 13 diamond 2
replaceitem block ~3 ~-3 ~2 slot.container 14 tnt 5
loot insert ~3 ~-3 ~2 loot "rsf/desert"
loot insert ~3 ~-3 ~2 loot "chests/desert_pyramid"

# --- [阶段 3] 主体平面与空间几何 (l_compound) ---
fill ~-5 ~1 ~-4 ~0 ~10 ~4 sandstone []
fill ~-5 ~1 ~0 ~5 ~9 ~4 sandstone []
fill ~-4 ~1 ~-3 ~-1 ~9 ~3 air []
fill ~-1 ~1 ~1 ~4 ~8 ~3 air []
fill ~-2 ~1 ~-4 ~-2 ~2 ~-4 air []
fill ~2 ~1 ~0 ~2 ~2 ~0 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~11 ~-5 ~-6 ~11 ~5 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~6 ~11 ~-5 ~6 ~11 ~5 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-5 ~12 ~-4 ~-5 ~12 ~4 smooth_sandstone_stairs ["weirdo_direction"=0]
fill ~5 ~12 ~-4 ~5 ~12 ~4 smooth_sandstone_stairs ["weirdo_direction"=1]
fill ~-4 ~12 ~-4 ~4 ~12 ~4 sandstone_slab []
fill ~0 ~13 ~-5 ~0 ~13 ~5 yellow_terracotta []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~12 ~2 sandstone []
fill ~6 ~1 ~-1 ~7 ~11 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~13 ~0 campfire []

# --- [阶段 5.5] 地形专属标志性结构 (desert 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-7 ~-9 ~5 ~-8 chiseled_sandstone []
fill ~7 ~0 ~-7 ~8 ~5 ~-8 chiseled_sandstone []
setblock ~-8 ~6 ~-7 gold_block []
setblock ~8 ~6 ~-7 gold_block []
setblock ~1 ~0 ~-5 water []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 gold_nugget 18
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 10
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 14
replaceitem block ~-4 ~1 ~2 slot.container 3 bone 13
replaceitem block ~-4 ~1 ~2 slot.container 4 gunpowder 12
replaceitem block ~-4 ~1 ~2 slot.container 5 string 11
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 10 enchanted_golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 11 bread 13
replaceitem block ~-4 ~1 ~2 slot.container 12 gold_ingot 10
replaceitem block ~-4 ~1 ~2 slot.container 13 iron_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 14 emerald 10
loot insert ~-4 ~1 ~2 loot "rsf/desert"
summon spider ~0 ~1 ~-1
summon pillager ~-1 ~1 ~1
summon zombie ~1 ~1 ~1
summon camel ~0 ~-3 ~0

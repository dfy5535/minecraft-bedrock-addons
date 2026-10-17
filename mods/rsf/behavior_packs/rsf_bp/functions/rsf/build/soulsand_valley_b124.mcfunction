# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3964/4224 | 主题内编号: b124/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·三层重檐帝王阁楼与秘库 (soulsand_valley_grand_pagoda_imperial)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x15 | 地上高度 10格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~13 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~13 ~8 air [] replace fire
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 bone_block [] replace air
fill ~-7 ~-6 ~-7 ~7 ~-1 ~7 bone_block [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 nether_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 nether_brick []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 nether_brick []
fill ~-4 ~-6 ~-4 ~4 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-4 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-4 ~4 slot.container 0 bone 21
replaceitem block ~4 ~-4 ~4 slot.container 1 ghast_tear 12
replaceitem block ~4 ~-4 ~4 slot.container 2 blaze_rod 13
replaceitem block ~4 ~-4 ~4 slot.container 3 coal 16
replaceitem block ~4 ~-4 ~4 slot.container 4 arrow 21
replaceitem block ~4 ~-4 ~4 slot.container 5 ender_pearl 6
replaceitem block ~4 ~-4 ~4 slot.container 9 crying_obsidian 11
replaceitem block ~4 ~-4 ~4 slot.container 10 netherite_scrap 7
replaceitem block ~4 ~-4 ~4 slot.container 11 golden_apple 2
replaceitem block ~4 ~-4 ~4 slot.container 12 soul_lantern 7
replaceitem block ~4 ~-4 ~4 slot.container 13 bone_block 14
replaceitem block ~4 ~-4 ~4 slot.container 14 soul_sand 19
loot insert ~4 ~-4 ~4 loot "rsf/soulsand_valley"
loot insert ~4 ~-4 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~5 ~6 bone_block []
fill ~-5 ~1 ~-5 ~5 ~4 ~5 air []
fill ~-7 ~5 ~-7 ~7 ~5 ~7 nether_brick_slab []
fill ~-5 ~6 ~-5 ~5 ~10 ~5 nether_brick []
fill ~-4 ~6 ~-4 ~4 ~9 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~6 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~10 ~-7 ~7 ~10 ~7 nether_brick_slab []
fill ~-5 ~11 ~-5 ~5 ~12 ~5 nether_brick []
fill ~-6 ~13 ~-6 ~6 ~13 ~6 nether_brick_slab []
setblock ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 nether_brick_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x9x2) ---
fill ~-8 ~0 ~0 ~-8 ~4 ~0 bone_block []
fill ~8 ~0 ~0 ~8 ~4 ~0 bone_block []
fill ~-8 ~5 ~0 ~8 ~5 ~0 bone_block []
setblock ~0 ~6 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~4 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_soil 18
replaceitem block ~-5 ~1 ~4 slot.container 10 gold_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 11 quartz 20
replaceitem block ~-5 ~1 ~4 slot.container 12 obsidian 13
replaceitem block ~-5 ~1 ~4 slot.container 13 crying_obsidian 12
replaceitem block ~-5 ~1 ~4 slot.container 14 netherite_scrap 1
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1

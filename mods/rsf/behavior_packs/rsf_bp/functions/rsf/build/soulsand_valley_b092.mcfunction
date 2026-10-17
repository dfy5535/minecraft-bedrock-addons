# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3932/4224 | 主题内编号: b092/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双层重檐供奉宝塔 (soulsand_valley_shrine_terrace_pagoda)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bone_block [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bone_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 nether_brick []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 bone 21
replaceitem block ~3 ~-3 ~2 slot.container 1 ghast_tear 12
replaceitem block ~3 ~-3 ~2 slot.container 2 blaze_rod 13
replaceitem block ~3 ~-3 ~2 slot.container 3 coal 16
replaceitem block ~3 ~-3 ~2 slot.container 4 arrow 21
replaceitem block ~3 ~-3 ~2 slot.container 5 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 9 bone_block 13
replaceitem block ~3 ~-3 ~2 slot.container 10 soul_sand 18
replaceitem block ~3 ~-3 ~2 slot.container 11 soul_soil 19
replaceitem block ~3 ~-3 ~2 slot.container 12 gold_ingot 12
replaceitem block ~3 ~-3 ~2 slot.container 13 quartz 21
replaceitem block ~3 ~-3 ~2 slot.container 14 obsidian 14
loot insert ~3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~4 ~4 bone_block []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-6 ~4 ~-5 ~6 ~4 ~5 nether_brick_slab []
fill ~-4 ~5 ~-3 ~4 ~9 ~3 nether_brick []
fill ~-3 ~5 ~-2 ~3 ~8 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~5 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 nether_brick_slab []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 nether_brick []
fill ~-5 ~12 ~-4 ~5 ~12 ~4 nether_brick_slab []
setblock ~0 ~13 ~0 gold_block []
setblock ~0 ~14 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 nether_brick_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-7 ~0 ~1 ~-7 ~7 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~7 ~1 bone_block []
fill ~-7 ~8 ~1 ~7 ~8 ~1 bone_block []
setblock ~0 ~9 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 9 crying_obsidian 11
replaceitem block ~-4 ~1 ~2 slot.container 10 netherite_scrap 7
replaceitem block ~-4 ~1 ~2 slot.container 11 golden_apple 2
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_lantern 7
replaceitem block ~-4 ~1 ~2 slot.container 13 bone_block 14
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_sand 19
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0

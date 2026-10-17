# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3868/4224 | 主题内编号: b028/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·重檐挑角古钟楼 (soulsand_valley_tower_pagoda_bell)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bone_block [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bone_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~5 ~4 bone_block []
fill ~-4 ~1 ~-3 ~4 ~4 ~3 air []
fill ~-6 ~5 ~-5 ~6 ~5 ~5 nether_brick_slab []
fill ~-4 ~6 ~-3 ~4 ~10 ~3 nether_brick []
fill ~-3 ~6 ~-2 ~3 ~9 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~6 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~10 ~-5 ~6 ~10 ~5 nether_brick_slab []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 nether_brick []
fill ~-5 ~13 ~-4 ~5 ~13 ~4 nether_brick_slab []
setblock ~0 ~14 ~0 gold_block []
setblock ~0 ~15 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 nether_brick_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x7x6) ---
fill ~-7 ~0 ~1 ~-7 ~8 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~8 ~1 bone_block []
fill ~-7 ~9 ~1 ~7 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 9 quartz 20
replaceitem block ~-4 ~1 ~2 slot.container 10 obsidian 13
replaceitem block ~-4 ~1 ~2 slot.container 11 crying_obsidian 12
replaceitem block ~-4 ~1 ~2 slot.container 12 netherite_scrap 1
replaceitem block ~-4 ~1 ~2 slot.container 13 golden_apple 3
replaceitem block ~-4 ~1 ~2 slot.container 14 soul_lantern 8
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1

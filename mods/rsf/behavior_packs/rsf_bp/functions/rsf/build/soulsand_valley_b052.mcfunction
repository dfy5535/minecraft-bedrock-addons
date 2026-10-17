# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3892/4224 | 主题内编号: b052/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·重檐行商旅店客栈 (soulsand_valley_outpost_caravan_inn)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_smoker]
# 建筑规模: 平面 15x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~10 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~10 ~8 air [] replace fire
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 bone_block [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 bone_block [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 nether_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 nether_brick []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bone_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 crying_obsidian []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 wither_skeleton_skull 5
replaceitem block ~4 ~-2 ~0 slot.container 1 bone 21
replaceitem block ~4 ~-2 ~0 slot.container 2 ghast_tear 12
replaceitem block ~4 ~-2 ~0 slot.container 3 blaze_rod 13
replaceitem block ~4 ~-2 ~0 slot.container 4 coal 16
replaceitem block ~4 ~-2 ~0 slot.container 5 arrow 21
replaceitem block ~4 ~-2 ~0 slot.container 9 netherite_scrap 3
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 5
replaceitem block ~4 ~-2 ~0 slot.container 11 soul_lantern 10
replaceitem block ~4 ~-2 ~0 slot.container 12 bone_block 17
replaceitem block ~4 ~-2 ~0 slot.container 13 soul_sand 22
replaceitem block ~4 ~-2 ~0 slot.container 14 soul_soil 16
loot insert ~4 ~-2 ~0 loot "rsf/soulsand_valley"
loot insert ~4 ~-2 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-6 ~1 ~-6 ~6 ~3 ~6 bone_block []
fill ~-5 ~1 ~-5 ~5 ~2 ~5 air []
fill ~-7 ~3 ~-7 ~7 ~3 ~7 nether_brick_slab []
fill ~-5 ~4 ~-5 ~5 ~7 ~5 nether_brick []
fill ~-4 ~4 ~-4 ~4 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~4 ~0 ~4 ~4 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-7 ~7 ~7 ~7 nether_brick_slab []
fill ~-5 ~8 ~-5 ~5 ~9 ~5 nether_brick []
fill ~-6 ~10 ~-6 ~6 ~10 ~6 nether_brick_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-8 ~2 ~0 ~-7 polished_blackstone_bricks []
fill ~-2 ~1 ~-8 ~-2 ~3 ~-8 chiseled_nether_bricks []
fill ~2 ~1 ~-8 ~2 ~3 ~-8 chiseled_nether_bricks []
fill ~-2 ~4 ~-8 ~2 ~4 ~-7 nether_brick_slab []
setblock ~0 ~3 ~-8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x9x5) ---
fill ~-8 ~0 ~0 ~-8 ~7 ~0 bone_block []
fill ~8 ~0 ~0 ~8 ~7 ~0 bone_block []
fill ~-8 ~8 ~0 ~8 ~8 ~0 bone_block []
setblock ~0 ~9 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smoker) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~5 smoker []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 crafting_table []
setblock ~5 ~1 ~0 composter []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~4 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~4 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~4 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~4 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~4 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~4 slot.container 9 crying_obsidian 6
replaceitem block ~-5 ~1 ~4 slot.container 10 netherite_scrap 2
replaceitem block ~-5 ~1 ~4 slot.container 11 golden_apple 4
replaceitem block ~-5 ~1 ~4 slot.container 12 soul_lantern 9
replaceitem block ~-5 ~1 ~4 slot.container 13 bone_block 16
replaceitem block ~-5 ~1 ~4 slot.container 14 soul_sand 21
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1

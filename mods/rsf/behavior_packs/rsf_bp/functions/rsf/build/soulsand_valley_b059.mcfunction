# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3899/4224 | 主题内编号: b059/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·阶梯金字塔法老墓室 (soulsand_valley_crypt_stepped_pyramid)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[battlement_flat] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_storage]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 soul_soil []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bone_block []
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 bone_block []
setblock ~0 ~-6 ~0 gold_block []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 2 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~-4 slot.container 3 bone 21
replaceitem block ~0 ~-3 ~-4 slot.container 4 ghast_tear 12
replaceitem block ~0 ~-3 ~-4 slot.container 5 blaze_rod 13
replaceitem block ~0 ~-3 ~-4 slot.container 9 gold_ingot 11
replaceitem block ~0 ~-3 ~-4 slot.container 10 quartz 20
replaceitem block ~0 ~-3 ~-4 slot.container 11 obsidian 13
replaceitem block ~0 ~-3 ~-4 slot.container 12 crying_obsidian 12
replaceitem block ~0 ~-3 ~-4 slot.container 13 netherite_scrap 1
replaceitem block ~0 ~-3 ~-4 slot.container 14 golden_apple 3
loot insert ~0 ~-3 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 polished_blackstone_bricks []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 bone_block []
fill ~-5 ~5 ~-4 ~5 ~7 ~4 bone_block []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 polished_blackstone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-4 ~6 ~7 ~4 polished_blackstone_bricks []
fill ~-6 ~8 ~-4 ~6 ~8 ~4 nether_brick_fence []
fill ~-5 ~8 ~-3 ~5 ~8 ~3 air []
setblock ~-6 ~8 ~-4 chiseled_nether_bricks []
setblock ~-6 ~9 ~-4 soul_campfire []
setblock ~-6 ~8 ~4 chiseled_nether_bricks []
setblock ~-6 ~9 ~4 soul_campfire []
setblock ~6 ~8 ~-4 chiseled_nether_bricks []
setblock ~6 ~9 ~-4 soul_campfire []
setblock ~6 ~8 ~4 chiseled_nether_bricks []
setblock ~6 ~9 ~4 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 basalt []
setblock ~-9 ~5 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 basalt []
setblock ~-9 ~5 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 basalt []
setblock ~9 ~5 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 basalt []
setblock ~9 ~5 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x7x2) ---
fill ~-9 ~0 ~1 ~-9 ~4 ~1 bone_block []
fill ~9 ~0 ~1 ~9 ~4 ~1 bone_block []
fill ~-9 ~5 ~1 ~9 ~5 ~1 bone_block []
setblock ~0 ~6 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-6 ~1 ~5 ~-1 ~2 ~5 barrel ["facing_direction"=2]
setblock ~0 ~1 ~5 crafting_table []
setblock ~0 ~1 ~0 crying_obsidian []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 coal 19
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 4 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~4 slot.container 5 bone 16
replaceitem block ~6 ~1 ~4 slot.container 9 netherite_scrap 1
replaceitem block ~6 ~1 ~4 slot.container 10 golden_apple 3
replaceitem block ~6 ~1 ~4 slot.container 11 soul_lantern 8
replaceitem block ~6 ~1 ~4 slot.container 12 bone_block 15
replaceitem block ~6 ~1 ~4 slot.container 13 soul_sand 20
replaceitem block ~6 ~1 ~4 slot.container 14 soul_soil 21
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 19
replaceitem block ~-6 ~1 ~5 slot.container 4 ghast_tear 10
replaceitem block ~-6 ~1 ~5 slot.container 5 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 9 netherite_scrap 6
replaceitem block ~-6 ~1 ~5 slot.container 10 golden_apple 8
replaceitem block ~-6 ~1 ~5 slot.container 11 soul_lantern 6
replaceitem block ~-6 ~1 ~5 slot.container 12 bone_block 13
replaceitem block ~-6 ~1 ~5 slot.container 13 soul_sand 18
replaceitem block ~-6 ~1 ~5 slot.container 14 soul_soil 19
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

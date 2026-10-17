# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3965/4224 | 主题内编号: b125/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·巨型阶梯金字塔神王殿 (soulsand_valley_grand_ziggurat_temple)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[ruined_skylight] + 地宫[portal_chamber] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 17x15 | 地上高度 9格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~12 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 nether_brick [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 nether_brick [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 nether_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 blackstone []
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 obsidian []
setblock ~0 ~-5 ~0 gilded_blackstone []
setblock ~0 ~-6 ~0 soul_lantern []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~5 ~-3 ~0 chest ["facing_direction"=4]
replaceitem block ~5 ~-3 ~0 slot.container 0 ender_pearl 6
replaceitem block ~5 ~-3 ~0 slot.container 1 rotten_flesh 13
replaceitem block ~5 ~-3 ~0 slot.container 2 wither_skeleton_skull 5
replaceitem block ~5 ~-3 ~0 slot.container 3 bone 21
replaceitem block ~5 ~-3 ~0 slot.container 4 ghast_tear 12
replaceitem block ~5 ~-3 ~0 slot.container 5 blaze_rod 13
replaceitem block ~5 ~-3 ~0 slot.container 9 soul_sand 17
replaceitem block ~5 ~-3 ~0 slot.container 10 soul_soil 18
replaceitem block ~5 ~-3 ~0 slot.container 11 gold_ingot 11
replaceitem block ~5 ~-3 ~0 slot.container 12 quartz 20
replaceitem block ~5 ~-3 ~0 slot.container 13 obsidian 13
replaceitem block ~5 ~-3 ~0 slot.container 14 crying_obsidian 12
loot insert ~5 ~-3 ~0 loot "rsf/soulsand_valley"
loot insert ~5 ~-3 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick []
fill ~-6 ~3 ~-5 ~6 ~4 ~5 bone_block []
fill ~-5 ~5 ~-4 ~5 ~9 ~4 blackstone []
fill ~-5 ~1 ~-4 ~5 ~8 ~4 air []
fill ~0 ~1 ~-6 ~0 ~4 ~-6 polished_blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-5 ~0 ~3 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 nether_brick_slab []
fill ~-1 ~7 ~-1 ~2 ~8 ~2 air []
fill ~-5 ~7 ~-1 ~-5 ~8 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 basalt []
setblock ~0 ~4 ~-8 ancient_debris []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 basalt []
setblock ~0 ~4 ~8 ancient_debris []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 basalt []
setblock ~-9 ~4 ~0 ancient_debris []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 basalt []
setblock ~9 ~4 ~0 ancient_debris []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x7x3) ---
fill ~-9 ~0 ~1 ~-9 ~5 ~1 bone_block []
fill ~9 ~0 ~1 ~9 ~5 ~1 bone_block []
fill ~-9 ~6 ~1 ~9 ~6 ~1 bone_block []
setblock ~0 ~7 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 2 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~4 slot.container 3 bone 16
replaceitem block ~6 ~1 ~4 slot.container 4 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 5 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 9 obsidian 11
replaceitem block ~6 ~1 ~4 slot.container 10 crying_obsidian 10
replaceitem block ~6 ~1 ~4 slot.container 11 netherite_scrap 6
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 8
replaceitem block ~6 ~1 ~4 slot.container 13 soul_lantern 6
replaceitem block ~6 ~1 ~4 slot.container 14 bone_block 13
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 19
replaceitem block ~-6 ~1 ~5 slot.container 2 ghast_tear 10
replaceitem block ~-6 ~1 ~5 slot.container 3 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 4 coal 22
replaceitem block ~-6 ~1 ~5 slot.container 5 arrow 27
replaceitem block ~-6 ~1 ~5 slot.container 9 obsidian 9
replaceitem block ~-6 ~1 ~5 slot.container 10 crying_obsidian 8
replaceitem block ~-6 ~1 ~5 slot.container 11 netherite_scrap 4
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 6
replaceitem block ~-6 ~1 ~5 slot.container 13 soul_lantern 11
replaceitem block ~-6 ~1 ~5 slot.container 14 bone_block 18
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

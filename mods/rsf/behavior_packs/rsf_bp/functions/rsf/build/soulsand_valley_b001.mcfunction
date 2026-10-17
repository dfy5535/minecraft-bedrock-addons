# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3841/4224 | 主题内编号: b001/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·三层阶梯圣火祭坛 (soulsand_valley_altar_stepped_ziggurat)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-3 ~4 ~-1 ~3 blackstone []
fill ~-3 ~-4 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~2 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-2 ~2 slot.container 1 rotten_flesh 13
replaceitem block ~3 ~-2 ~2 slot.container 2 wither_skeleton_skull 5
replaceitem block ~3 ~-2 ~2 slot.container 3 bone 21
replaceitem block ~3 ~-2 ~2 slot.container 4 ghast_tear 12
replaceitem block ~3 ~-2 ~2 slot.container 5 blaze_rod 13
replaceitem block ~3 ~-2 ~2 slot.container 9 netherite_scrap 2
replaceitem block ~3 ~-2 ~2 slot.container 10 golden_apple 4
replaceitem block ~3 ~-2 ~2 slot.container 11 soul_lantern 9
replaceitem block ~3 ~-2 ~2 slot.container 12 bone_block 16
replaceitem block ~3 ~-2 ~2 slot.container 13 soul_sand 21
replaceitem block ~3 ~-2 ~2 slot.container 14 soul_soil 22
loot insert ~3 ~-2 ~2 loot "rsf/soulsand_valley"
loot insert ~3 ~-2 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 nether_brick []
fill ~-4 ~3 ~-3 ~4 ~4 ~3 bone_block []
fill ~-3 ~5 ~-2 ~3 ~6 ~2 blackstone []
fill ~-3 ~1 ~-2 ~3 ~5 ~2 air []
fill ~0 ~1 ~-4 ~0 ~4 ~-4 polished_blackstone_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-3 ~0 ~3 ~-2 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-5 ~6 ~-4 ~-5 ~8 ~-4 basalt []
setblock ~-5 ~9 ~-4 soul_lantern []
fill ~-5 ~6 ~4 ~-5 ~8 ~4 basalt []
setblock ~-5 ~9 ~4 soul_lantern []
fill ~5 ~6 ~-4 ~5 ~8 ~-4 basalt []
setblock ~5 ~9 ~-4 soul_lantern []
fill ~5 ~6 ~4 ~5 ~8 ~4 basalt []
setblock ~5 ~9 ~4 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 soul_soil []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 bone_block []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 bone_block []
fill ~-7 ~7 ~-2 ~7 ~7 ~-2 bone_block []
setblock ~0 ~8 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ghast_tear 7
replaceitem block ~4 ~1 ~2 slot.container 1 blaze_rod 8
replaceitem block ~4 ~1 ~2 slot.container 2 coal 19
replaceitem block ~4 ~1 ~2 slot.container 3 arrow 24
replaceitem block ~4 ~1 ~2 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 9 gold_ingot 13
replaceitem block ~4 ~1 ~2 slot.container 10 quartz 22
replaceitem block ~4 ~1 ~2 slot.container 11 obsidian 8
replaceitem block ~4 ~1 ~2 slot.container 12 crying_obsidian 7
replaceitem block ~4 ~1 ~2 slot.container 13 netherite_scrap 3
replaceitem block ~4 ~1 ~2 slot.container 14 golden_apple 5
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 coal 22
replaceitem block ~-4 ~1 ~3 slot.container 1 arrow 27
replaceitem block ~-4 ~1 ~3 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~3 slot.container 5 bone 19
replaceitem block ~-4 ~1 ~3 slot.container 9 gold_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 10 quartz 20
replaceitem block ~-4 ~1 ~3 slot.container 11 obsidian 13
replaceitem block ~-4 ~1 ~3 slot.container 12 crying_obsidian 12
replaceitem block ~-4 ~1 ~3 slot.container 13 netherite_scrap 1
replaceitem block ~-4 ~1 ~3 slot.container 14 golden_apple 3
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

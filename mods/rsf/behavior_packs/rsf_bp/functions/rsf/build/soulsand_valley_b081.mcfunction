# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3921/4224 | 主题内编号: b081/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双高炉重工冶炼密室 (soulsand_valley_mine_blast_smeltery)
# 建筑构造: 主体[mine_smeltery] + 屋顶[gabled_stairs] + 地宫[catacomb_crypt] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace fire
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 nether_brick [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 nether_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 soul_campfire []
setblock ~5 ~-7 ~0 soul_campfire []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 21
replaceitem block ~0 ~-5 ~4 slot.container 1 ghast_tear 12
replaceitem block ~0 ~-5 ~4 slot.container 2 blaze_rod 13
replaceitem block ~0 ~-5 ~4 slot.container 3 coal 16
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 21
replaceitem block ~0 ~-5 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-5 ~4 slot.container 9 soul_soil 22
replaceitem block ~0 ~-5 ~4 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-5 ~4 slot.container 11 quartz 17
replaceitem block ~0 ~-5 ~4 slot.container 12 obsidian 10
replaceitem block ~0 ~-5 ~4 slot.container 13 crying_obsidian 9
replaceitem block ~0 ~-5 ~4 slot.container 14 netherite_scrap 5
loot insert ~0 ~-5 ~4 loot "rsf/soulsand_valley"
loot insert ~0 ~-5 ~4 loot "chests/nether_bridge"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 19
replaceitem block ~0 ~-5 ~-4 slot.container 1 ghast_tear 10
replaceitem block ~0 ~-5 ~-4 slot.container 2 blaze_rod 11
replaceitem block ~0 ~-5 ~-4 slot.container 3 coal 22
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 27
replaceitem block ~0 ~-5 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-5 ~-4 slot.container 9 soul_soil 21
replaceitem block ~0 ~-5 ~-4 slot.container 10 gold_ingot 14
replaceitem block ~0 ~-5 ~-4 slot.container 11 quartz 16
replaceitem block ~0 ~-5 ~-4 slot.container 12 obsidian 9
replaceitem block ~0 ~-5 ~-4 slot.container 13 crying_obsidian 8
replaceitem block ~0 ~-5 ~-4 slot.container 14 netherite_scrap 4
loot insert ~0 ~-5 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-5 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (mine_smeltery) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 nether_brick []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~5 ~-6 ~9 ~5 bone_block []
setblock ~-5 ~10 ~5 soul_lantern []
fill ~-1 ~1 ~-5 ~1 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 polished_blackstone_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 polished_blackstone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 polished_blackstone_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 polished_blackstone_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 nether_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 bone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-7 ~2 ~0 ~-6 bone_block []
fill ~-2 ~1 ~-7 ~-2 ~3 ~-7 basalt []
fill ~2 ~1 ~-7 ~2 ~3 ~-7 basalt []
fill ~-2 ~4 ~-7 ~2 ~4 ~-6 nether_brick_slab []
setblock ~0 ~3 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x7x4) ---
fill ~-7 ~0 ~-1 ~-7 ~6 ~-1 bone_block []
fill ~7 ~0 ~-1 ~7 ~6 ~-1 bone_block []
fill ~-7 ~7 ~-1 ~7 ~7 ~-1 bone_block []
setblock ~0 ~8 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~4 blast_furnace []
setblock ~-3 ~1 ~4 furnace []
setblock ~0 ~1 ~4 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ghast_tear 7
replaceitem block ~4 ~1 ~3 slot.container 1 blaze_rod 8
replaceitem block ~4 ~1 ~3 slot.container 2 coal 19
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 24
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 9 gold_ingot 9
replaceitem block ~4 ~1 ~3 slot.container 10 quartz 18
replaceitem block ~4 ~1 ~3 slot.container 11 obsidian 11
replaceitem block ~4 ~1 ~3 slot.container 12 crying_obsidian 10
replaceitem block ~4 ~1 ~3 slot.container 13 netherite_scrap 6
replaceitem block ~4 ~1 ~3 slot.container 14 golden_apple 8
loot insert ~4 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 coal 22
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 27
replaceitem block ~-4 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 19
replaceitem block ~-4 ~1 ~4 slot.container 9 gold_ingot 14
replaceitem block ~-4 ~1 ~4 slot.container 10 quartz 16
replaceitem block ~-4 ~1 ~4 slot.container 11 obsidian 9
replaceitem block ~-4 ~1 ~4 slot.container 12 crying_obsidian 8
replaceitem block ~-4 ~1 ~4 slot.container 13 netherite_scrap 4
replaceitem block ~-4 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~-4 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~4 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3896/4224 | 主题内编号: b056/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·隐士半地下避难山居 (soulsand_valley_outpost_hermit_retreat)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 13x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~9 ~6 air [] replace fire
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
replaceitem block ~3 ~-3 ~2 slot.container 0 arrow 21
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 3 wither_skeleton_skull 5
replaceitem block ~3 ~-3 ~2 slot.container 4 bone 21
replaceitem block ~3 ~-3 ~2 slot.container 5 ghast_tear 12
replaceitem block ~3 ~-3 ~2 slot.container 9 soul_soil 16
replaceitem block ~3 ~-3 ~2 slot.container 10 gold_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 11 quartz 18
replaceitem block ~3 ~-3 ~2 slot.container 12 obsidian 11
replaceitem block ~3 ~-3 ~2 slot.container 13 crying_obsidian 10
replaceitem block ~3 ~-3 ~2 slot.container 14 netherite_scrap 6
loot insert ~3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 bone_block []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-5 ~-6 ~7 ~5 nether_brick_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-5 ~6 ~7 ~5 nether_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-4 ~-5 ~8 ~4 nether_brick_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-4 ~5 ~8 ~4 nether_brick_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-4 ~4 ~8 ~4 nether_brick_slab []
fill ~0 ~9 ~-5 ~0 ~9 ~5 polished_blackstone_bricks []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~7 ~0 ~-2 ~9 ~8 ~2 blackstone []
fill ~7 ~1 ~-1 ~8 ~7 ~1 air []
fill ~6 ~1 ~0 ~7 ~2 ~0 air []
setblock ~8 ~9 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x4) ---
fill ~-7 ~0 ~1 ~-7 ~6 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~6 ~1 bone_block []
fill ~-7 ~7 ~1 ~7 ~7 ~1 bone_block []
setblock ~0 ~8 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 6
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_lantern 11
replaceitem block ~-4 ~1 ~2 slot.container 11 bone_block 18
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_sand 16
replaceitem block ~-4 ~1 ~2 slot.container 13 soul_soil 17
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 10
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0

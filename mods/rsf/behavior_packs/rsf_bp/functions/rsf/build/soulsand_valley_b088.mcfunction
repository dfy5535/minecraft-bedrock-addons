# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3928/4224 | 主题内编号: b088/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·矿车铁轨转运仓库 (soulsand_valley_mine_cart_depot)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_smithing]
# 建筑规模: 平面 13x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace lava
fill ~-7 ~0 ~-8 ~7 ~9 ~8 air [] replace fire
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 bone_block [] replace air
fill ~-6 ~-5 ~-7 ~6 ~-1 ~7 bone_block [] replace lava
fill ~-6 ~0 ~-7 ~6 ~0 ~7 nether_brick_slab [] replace air
fill ~-5 ~0 ~-6 ~5 ~0 ~6 nether_brick []
fill ~-4 ~0 ~-5 ~4 ~0 ~5 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-5 ~4 ~-1 ~5 nether_brick []
fill ~-3 ~-5 ~-4 ~3 ~-1 ~4 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~4 slot.container 0 arrow 21
replaceitem block ~3 ~-3 ~4 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-3 ~4 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-3 ~4 slot.container 3 wither_skeleton_skull 5
replaceitem block ~3 ~-3 ~4 slot.container 4 bone 21
replaceitem block ~3 ~-3 ~4 slot.container 5 ghast_tear 12
replaceitem block ~3 ~-3 ~4 slot.container 9 golden_apple 6
replaceitem block ~3 ~-3 ~4 slot.container 10 soul_lantern 11
replaceitem block ~3 ~-3 ~4 slot.container 11 bone_block 18
replaceitem block ~3 ~-3 ~4 slot.container 12 soul_sand 16
replaceitem block ~3 ~-3 ~4 slot.container 13 soul_soil 17
replaceitem block ~3 ~-3 ~4 slot.container 14 gold_ingot 10
loot insert ~3 ~-3 ~4 loot "rsf/soulsand_valley"
loot insert ~3 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-6 ~5 ~6 ~6 bone_block []
fill ~-4 ~1 ~-5 ~4 ~5 ~5 air []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 chiseled_nether_bricks []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 chiseled_nether_bricks []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 chiseled_nether_bricks []
fill ~5 ~1 ~6 ~5 ~6 ~6 chiseled_nether_bricks []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
setblock ~-5 ~2 ~0 nether_brick_fence []
setblock ~5 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~9 ~-4 ~4 ~9 ~4 nether_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-4 ~8 ~-1 ~-4 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-9 ~2 ~4 ~-7 polished_blackstone_bricks []
fill ~-1 ~1 ~-9 ~1 ~3 ~-7 air []
setblock ~-2 ~4 ~-9 soul_campfire []
setblock ~2 ~4 ~-9 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x9x6) ---
fill ~-7 ~0 ~0 ~-7 ~8 ~0 bone_block []
fill ~7 ~0 ~0 ~7 ~8 ~0 bone_block []
fill ~-7 ~9 ~0 ~7 ~9 ~0 bone_block []
setblock ~0 ~10 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_smithing) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-4 ~1 ~5 smithing_table []
setblock ~0 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~4 slot.container 1 ghast_tear 7
replaceitem block ~-4 ~1 ~4 slot.container 2 blaze_rod 8
replaceitem block ~-4 ~1 ~4 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~4 slot.container 4 arrow 24
replaceitem block ~-4 ~1 ~4 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~4 slot.container 9 quartz 17
replaceitem block ~-4 ~1 ~4 slot.container 10 obsidian 10
replaceitem block ~-4 ~1 ~4 slot.container 11 crying_obsidian 9
replaceitem block ~-4 ~1 ~4 slot.container 12 netherite_scrap 5
replaceitem block ~-4 ~1 ~4 slot.container 13 golden_apple 7
replaceitem block ~-4 ~1 ~4 slot.container 14 soul_lantern 12
loot insert ~-4 ~1 ~4 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1

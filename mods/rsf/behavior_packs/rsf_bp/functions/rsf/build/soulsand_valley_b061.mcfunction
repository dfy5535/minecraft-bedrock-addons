# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3901/4224 | 主题内编号: b061/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子封土古墓地宫 (soulsand_valley_crypt_twin_barrow)
# 建筑构造: 主体[twin_towers] + 屋顶[pyramid_stepped] + 地宫[trial_pit] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~9 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~9 ~6 air [] replace fire
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 nether_brick [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 nether_brick [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 nether_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 crying_obsidian []
setblock ~-4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-5 ~3 soul_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 coal 16
replaceitem block ~0 ~-3 ~3 slot.container 1 arrow 21
replaceitem block ~0 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 4 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 21
replaceitem block ~0 ~-3 ~3 slot.container 9 obsidian 13
replaceitem block ~0 ~-3 ~3 slot.container 10 crying_obsidian 12
replaceitem block ~0 ~-3 ~3 slot.container 11 netherite_scrap 1
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_apple 3
replaceitem block ~0 ~-3 ~3 slot.container 13 soul_lantern 8
replaceitem block ~0 ~-3 ~3 slot.container 14 bone_block 15
loot insert ~0 ~-3 ~3 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~7 ~4 nether_brick []
fill ~2 ~1 ~-4 ~7 ~7 ~4 nether_brick []
fill ~-6 ~1 ~-3 ~-3 ~6 ~3 air []
fill ~3 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 bone_block []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 bone_block []
fill ~-6 ~8 ~-3 ~6 ~8 ~3 blackstone []
fill ~-1 ~9 ~-1 ~1 ~9 ~1 gilded_blackstone []
setblock ~0 ~10 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 bone_block []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_lantern []
setblock ~2 ~4 ~-7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x7x4) ---
fill ~-9 ~0 ~-2 ~-9 ~6 ~-2 bone_block []
fill ~9 ~0 ~-2 ~9 ~6 ~-2 bone_block []
fill ~-9 ~7 ~-2 ~9 ~7 ~-2 bone_block []
setblock ~0 ~8 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~3 smithing_table []
setblock ~-5 ~1 ~3 anvil []
setblock ~5 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~6 ~1 ~2 slot.container 2 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~2 slot.container 3 bone 16
replaceitem block ~6 ~1 ~2 slot.container 4 ghast_tear 7
replaceitem block ~6 ~1 ~2 slot.container 5 blaze_rod 8
replaceitem block ~6 ~1 ~2 slot.container 9 gold_ingot 10
replaceitem block ~6 ~1 ~2 slot.container 10 quartz 19
replaceitem block ~6 ~1 ~2 slot.container 11 obsidian 12
replaceitem block ~6 ~1 ~2 slot.container 12 crying_obsidian 11
replaceitem block ~6 ~1 ~2 slot.container 13 netherite_scrap 7
replaceitem block ~6 ~1 ~2 slot.container 14 golden_apple 2
loot insert ~6 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~3 slot.container 1 bone 19
replaceitem block ~-6 ~1 ~3 slot.container 2 ghast_tear 10
replaceitem block ~-6 ~1 ~3 slot.container 3 blaze_rod 11
replaceitem block ~-6 ~1 ~3 slot.container 4 coal 22
replaceitem block ~-6 ~1 ~3 slot.container 5 arrow 27
replaceitem block ~-6 ~1 ~3 slot.container 9 gold_ingot 8
replaceitem block ~-6 ~1 ~3 slot.container 10 quartz 17
replaceitem block ~-6 ~1 ~3 slot.container 11 obsidian 10
replaceitem block ~-6 ~1 ~3 slot.container 12 crying_obsidian 9
replaceitem block ~-6 ~1 ~3 slot.container 13 netherite_scrap 5
replaceitem block ~-6 ~1 ~3 slot.container 14 golden_apple 7
loot insert ~-6 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~3 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3955/4224 | 主题内编号: b115/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·阶梯立体生态种植台 (soulsand_valley_conservatory_terrace_farm)
# 建筑构造: 主体[stepped_ziggurat] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 soul_soil []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bone_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-3 ~-1 ~1 ~-3 ~1 lava []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-2 ~3 slot.container 0 ender_pearl 6
replaceitem block ~-4 ~-2 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~-4 ~-2 ~3 slot.container 2 wither_skeleton_skull 5
replaceitem block ~-4 ~-2 ~3 slot.container 3 bone 21
replaceitem block ~-4 ~-2 ~3 slot.container 4 ghast_tear 12
replaceitem block ~-4 ~-2 ~3 slot.container 5 blaze_rod 13
replaceitem block ~-4 ~-2 ~3 slot.container 9 soul_sand 17
replaceitem block ~-4 ~-2 ~3 slot.container 10 soul_soil 18
replaceitem block ~-4 ~-2 ~3 slot.container 11 gold_ingot 11
replaceitem block ~-4 ~-2 ~3 slot.container 12 quartz 20
replaceitem block ~-4 ~-2 ~3 slot.container 13 obsidian 13
replaceitem block ~-4 ~-2 ~3 slot.container 14 crying_obsidian 12
loot insert ~-4 ~-2 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (stepped_ziggurat) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 polished_blackstone_bricks []
fill ~-5 ~3 ~-4 ~5 ~4 ~4 bone_block []
fill ~-4 ~5 ~-3 ~4 ~6 ~3 bone_block []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~0 ~1 ~-5 ~0 ~4 ~-5 polished_blackstone_brick_stairs ["weirdo_direction"=2]
fill ~0 ~1 ~-4 ~0 ~3 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~8 ~-2 ~2 ~9 ~2 bone_block []
fill ~-1 ~10 ~-1 ~1 ~12 ~1 polished_blackstone_bricks []
fill ~0 ~13 ~0 ~0 ~16 ~0 crying_obsidian []
setblock ~0 ~17 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 polished_blackstone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x3) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 bone_block []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 bone_block []
fill ~-8 ~6 ~-2 ~8 ~6 ~-2 bone_block []
setblock ~0 ~7 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 coal 19
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 4 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~3 slot.container 5 bone 16
replaceitem block ~5 ~1 ~3 slot.container 9 obsidian 8
replaceitem block ~5 ~1 ~3 slot.container 10 crying_obsidian 7
replaceitem block ~5 ~1 ~3 slot.container 11 netherite_scrap 3
replaceitem block ~5 ~1 ~3 slot.container 12 golden_apple 5
replaceitem block ~5 ~1 ~3 slot.container 13 soul_lantern 10
replaceitem block ~5 ~1 ~3 slot.container 14 bone_block 17
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 19
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 10
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 9 obsidian 13
replaceitem block ~-5 ~1 ~4 slot.container 10 crying_obsidian 12
replaceitem block ~-5 ~1 ~4 slot.container 11 netherite_scrap 1
replaceitem block ~-5 ~1 ~4 slot.container 12 golden_apple 3
replaceitem block ~-5 ~1 ~4 slot.container 13 soul_lantern 8
replaceitem block ~-5 ~1 ~4 slot.container 14 bone_block 15
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

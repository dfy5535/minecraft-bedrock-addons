# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3918/4224 | 主题内编号: b078/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·下沉祭池图腾柱群 (soulsand_valley_totem_sunken_ritual_pool)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[open_colonnade] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 bone_block []
fill ~-4 ~-6 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 lava []
fill ~0 ~-6 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-4 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-4 ~3 slot.container 0 bone 21
replaceitem block ~-4 ~-4 ~3 slot.container 1 ghast_tear 12
replaceitem block ~-4 ~-4 ~3 slot.container 2 blaze_rod 13
replaceitem block ~-4 ~-4 ~3 slot.container 3 coal 16
replaceitem block ~-4 ~-4 ~3 slot.container 4 arrow 21
replaceitem block ~-4 ~-4 ~3 slot.container 5 ender_pearl 6
replaceitem block ~-4 ~-4 ~3 slot.container 9 bone_block 18
replaceitem block ~-4 ~-4 ~3 slot.container 10 soul_sand 16
replaceitem block ~-4 ~-4 ~3 slot.container 11 soul_soil 17
replaceitem block ~-4 ~-4 ~3 slot.container 12 gold_ingot 10
replaceitem block ~-4 ~-4 ~3 slot.container 13 quartz 19
replaceitem block ~-4 ~-4 ~3 slot.container 14 obsidian 12
loot insert ~-4 ~-4 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~-4 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-5 ~6 ~2 ~5 blackstone []
fill ~-5 ~1 ~-4 ~5 ~3 ~4 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 bone_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 bone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~6 ~-5 ~-6 ~8 ~-5 chiseled_polished_blackstone []
setblock ~-6 ~9 ~-5 soul_campfire []
fill ~-6 ~6 ~5 ~-6 ~8 ~5 chiseled_polished_blackstone []
setblock ~-6 ~9 ~5 soul_campfire []
fill ~6 ~6 ~-5 ~6 ~8 ~-5 chiseled_polished_blackstone []
setblock ~6 ~9 ~-5 soul_campfire []
fill ~6 ~6 ~5 ~6 ~8 ~5 chiseled_polished_blackstone []
setblock ~6 ~9 ~5 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~8 ~1 bone_block []
fill ~-8 ~9 ~1 ~8 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~-4 ~1 ~3 blast_furnace []
setblock ~-3 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 9 quartz 21
replaceitem block ~-5 ~1 ~3 slot.container 10 obsidian 14
replaceitem block ~-5 ~1 ~3 slot.container 11 crying_obsidian 6
replaceitem block ~-5 ~1 ~3 slot.container 12 netherite_scrap 2
replaceitem block ~-5 ~1 ~3 slot.container 13 golden_apple 4
replaceitem block ~-5 ~1 ~3 slot.container 14 soul_lantern 9
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

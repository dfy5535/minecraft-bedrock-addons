# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3887/4224 | 主题内编号: b047/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·深渊跨桥决斗长台 (soulsand_valley_arena_bridge_duel)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~9 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~9 ~6 air [] replace fire
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 soul_soil []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 bone_block []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-5 ~-3 ~2 slot.container 0 ghast_tear 12
replaceitem block ~-5 ~-3 ~2 slot.container 1 blaze_rod 13
replaceitem block ~-5 ~-3 ~2 slot.container 2 coal 16
replaceitem block ~-5 ~-3 ~2 slot.container 3 arrow 21
replaceitem block ~-5 ~-3 ~2 slot.container 4 ender_pearl 6
replaceitem block ~-5 ~-3 ~2 slot.container 5 rotten_flesh 13
replaceitem block ~-5 ~-3 ~2 slot.container 9 netherite_scrap 4
replaceitem block ~-5 ~-3 ~2 slot.container 10 golden_apple 6
replaceitem block ~-5 ~-3 ~2 slot.container 11 soul_lantern 11
replaceitem block ~-5 ~-3 ~2 slot.container 12 bone_block 18
replaceitem block ~-5 ~-3 ~2 slot.container 13 soul_sand 16
replaceitem block ~-5 ~-3 ~2 slot.container 14 soul_soil 17
loot insert ~-5 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~-5 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~6 ~4 polished_blackstone_bricks []
fill ~-6 ~1 ~-3 ~6 ~5 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 bone_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 polished_blackstone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 crying_obsidian []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-6 ~-9 ~4 ~-6 basalt []
setblock ~-9 ~5 ~-6 soul_lantern []
fill ~-9 ~0 ~6 ~-9 ~4 ~6 basalt []
setblock ~-9 ~5 ~6 soul_lantern []
fill ~9 ~0 ~-6 ~9 ~4 ~-6 basalt []
setblock ~9 ~5 ~-6 soul_lantern []
fill ~9 ~0 ~6 ~9 ~4 ~6 basalt []
setblock ~9 ~5 ~6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x5x5) ---
fill ~-9 ~0 ~0 ~-9 ~7 ~0 bone_block []
fill ~9 ~0 ~0 ~9 ~7 ~0 bone_block []
fill ~-9 ~8 ~0 ~9 ~8 ~0 bone_block []
setblock ~0 ~9 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~2 slot.container 0 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~2 slot.container 1 bone 16
replaceitem block ~6 ~1 ~2 slot.container 2 ghast_tear 7
replaceitem block ~6 ~1 ~2 slot.container 3 blaze_rod 8
replaceitem block ~6 ~1 ~2 slot.container 4 coal 19
replaceitem block ~6 ~1 ~2 slot.container 5 arrow 24
replaceitem block ~6 ~1 ~2 slot.container 9 soul_sand 18
replaceitem block ~6 ~1 ~2 slot.container 10 soul_soil 19
replaceitem block ~6 ~1 ~2 slot.container 11 gold_ingot 12
replaceitem block ~6 ~1 ~2 slot.container 12 quartz 21
replaceitem block ~6 ~1 ~2 slot.container 13 obsidian 14
replaceitem block ~6 ~1 ~2 slot.container 14 crying_obsidian 6
loot insert ~6 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 ghast_tear 10
replaceitem block ~-6 ~1 ~3 slot.container 1 blaze_rod 11
replaceitem block ~-6 ~1 ~3 slot.container 2 coal 22
replaceitem block ~-6 ~1 ~3 slot.container 3 arrow 27
replaceitem block ~-6 ~1 ~3 slot.container 4 ender_pearl 4
replaceitem block ~-6 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-6 ~1 ~3 slot.container 9 soul_sand 16
replaceitem block ~-6 ~1 ~3 slot.container 10 soul_soil 17
replaceitem block ~-6 ~1 ~3 slot.container 11 gold_ingot 10
replaceitem block ~-6 ~1 ~3 slot.container 12 quartz 19
replaceitem block ~-6 ~1 ~3 slot.container 13 obsidian 12
replaceitem block ~-6 ~1 ~3 slot.container 14 crying_obsidian 11
loot insert ~-6 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~3 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

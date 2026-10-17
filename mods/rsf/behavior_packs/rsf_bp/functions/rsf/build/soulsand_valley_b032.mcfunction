# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3872/4224 | 主题内编号: b032/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·断顶残垣古哨塔 (soulsand_valley_tower_ruined_crag)
# 建筑构造: 主体[rect_hall] + 屋顶[ruined_skylight] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 11x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-6 ~6 ~12 ~6 air [] replace lava
fill ~-6 ~0 ~-6 ~6 ~12 ~6 air [] replace fire
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 bone_block [] replace air
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 bone_block [] replace lava
fill ~-5 ~0 ~-5 ~5 ~0 ~5 nether_brick_slab [] replace air
fill ~-4 ~0 ~-4 ~4 ~0 ~4 nether_brick []
fill ~-3 ~0 ~-3 ~3 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bone_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 wither_skeleton_skull 5
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 21
replaceitem block ~-3 ~-3 ~2 slot.container 2 ghast_tear 12
replaceitem block ~-3 ~-3 ~2 slot.container 3 blaze_rod 13
replaceitem block ~-3 ~-3 ~2 slot.container 4 coal 16
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 21
replaceitem block ~-3 ~-3 ~2 slot.container 9 soul_sand 19
replaceitem block ~-3 ~-3 ~2 slot.container 10 soul_soil 20
replaceitem block ~-3 ~-3 ~2 slot.container 11 gold_ingot 13
replaceitem block ~-3 ~-3 ~2 slot.container 12 quartz 22
replaceitem block ~-3 ~-3 ~2 slot.container 13 obsidian 8
replaceitem block ~-3 ~-3 ~2 slot.container 14 crying_obsidian 7
loot insert ~-3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-4 ~4 ~9 ~4 bone_block []
fill ~-3 ~1 ~-3 ~3 ~8 ~3 air []
fill ~-4 ~1 ~-4 ~-4 ~9 ~-4 chiseled_nether_bricks []
fill ~-4 ~1 ~4 ~-4 ~9 ~4 chiseled_nether_bricks []
fill ~4 ~1 ~-4 ~4 ~9 ~-4 chiseled_nether_bricks []
fill ~4 ~1 ~4 ~4 ~9 ~4 chiseled_nether_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
setblock ~-4 ~2 ~0 nether_brick_fence []
setblock ~4 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-4 ~9 ~-4 ~4 ~9 ~4 nether_brick_slab []
fill ~-1 ~8 ~-1 ~2 ~9 ~2 air []
fill ~-4 ~8 ~-1 ~-4 ~9 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~8 ~-2 chiseled_nether_bricks []
fill ~-5 ~0 ~2 ~-5 ~8 ~2 chiseled_nether_bricks []
fill ~5 ~0 ~-2 ~5 ~8 ~-2 chiseled_nether_bricks []
fill ~5 ~0 ~2 ~5 ~8 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 6x5x5) ---
fill ~-6 ~0 ~1 ~-6 ~7 ~1 bone_block []
fill ~6 ~0 ~1 ~6 ~7 ~1 bone_block []
fill ~-6 ~8 ~1 ~6 ~8 ~1 bone_block []
setblock ~0 ~9 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-3 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-3 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-3 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-3 ~1 ~2 slot.container 3 coal 19
replaceitem block ~-3 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-3 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-3 ~1 ~2 slot.container 9 crying_obsidian 7
replaceitem block ~-3 ~1 ~2 slot.container 10 netherite_scrap 3
replaceitem block ~-3 ~1 ~2 slot.container 11 golden_apple 5
replaceitem block ~-3 ~1 ~2 slot.container 12 soul_lantern 10
replaceitem block ~-3 ~1 ~2 slot.container 13 bone_block 17
replaceitem block ~-3 ~1 ~2 slot.container 14 soul_sand 22
loot insert ~-3 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0

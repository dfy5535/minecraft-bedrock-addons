# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3937/4224 | 主题内编号: b097/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·八角射击孔防御棱堡 (soulsand_valley_bunker_octagonal_bastion)
# 建筑构造: 主体[octagonal_keep] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bone_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 arrow 21
replaceitem block ~-3 ~-3 ~2 slot.container 1 ender_pearl 6
replaceitem block ~-3 ~-3 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~-3 ~-3 ~2 slot.container 3 wither_skeleton_skull 5
replaceitem block ~-3 ~-3 ~2 slot.container 4 bone 21
replaceitem block ~-3 ~-3 ~2 slot.container 5 ghast_tear 12
replaceitem block ~-3 ~-3 ~2 slot.container 9 quartz 22
replaceitem block ~-3 ~-3 ~2 slot.container 10 obsidian 8
replaceitem block ~-3 ~-3 ~2 slot.container 11 crying_obsidian 7
replaceitem block ~-3 ~-3 ~2 slot.container 12 netherite_scrap 3
replaceitem block ~-3 ~-3 ~2 slot.container 13 golden_apple 5
replaceitem block ~-3 ~-3 ~2 slot.container 14 soul_lantern 10
loot insert ~-3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 nether_brick []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 air []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 air []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 air []
fill ~6 ~1 ~5 ~6 ~8 ~5 air []
fill ~-5 ~1 ~-4 ~-5 ~7 ~-4 basalt []
fill ~5 ~1 ~-4 ~5 ~7 ~-4 basalt []
fill ~-5 ~1 ~4 ~-5 ~7 ~4 basalt []
fill ~5 ~1 ~4 ~5 ~7 ~4 basalt []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bone_block []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 nether_brick_fence []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 basalt []
setblock ~-6 ~9 ~-5 soul_lantern []
setblock ~-6 ~8 ~5 basalt []
setblock ~-6 ~9 ~5 soul_lantern []
setblock ~6 ~8 ~-5 basalt []
setblock ~6 ~9 ~-5 soul_lantern []
setblock ~6 ~8 ~5 basalt []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-7 ~0 ~-2 ~-7 ~6 ~-2 basalt []
fill ~-7 ~0 ~2 ~-7 ~6 ~2 basalt []
fill ~7 ~0 ~-2 ~7 ~6 ~-2 basalt []
fill ~7 ~0 ~2 ~7 ~6 ~2 basalt []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~0 ~-8 ~7 ~0 bone_block []
fill ~8 ~0 ~0 ~8 ~7 ~0 bone_block []
fill ~-8 ~8 ~0 ~8 ~8 ~0 bone_block []
setblock ~0 ~9 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 crying_obsidian []
setblock ~0 ~1 ~0 gold_block []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 2 coal 19
replaceitem block ~5 ~1 ~3 slot.container 3 arrow 24
replaceitem block ~5 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 9 soul_sand 19
replaceitem block ~5 ~1 ~3 slot.container 10 soul_soil 20
replaceitem block ~5 ~1 ~3 slot.container 11 gold_ingot 13
replaceitem block ~5 ~1 ~3 slot.container 12 quartz 22
replaceitem block ~5 ~1 ~3 slot.container 13 obsidian 8
replaceitem block ~5 ~1 ~3 slot.container 14 crying_obsidian 7
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 coal 22
replaceitem block ~-5 ~1 ~4 slot.container 1 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~4 slot.container 5 bone 19
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_sand 17
replaceitem block ~-5 ~1 ~4 slot.container 10 soul_soil 18
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 11
replaceitem block ~-5 ~1 ~4 slot.container 12 quartz 20
replaceitem block ~-5 ~1 ~4 slot.container 13 obsidian 13
replaceitem block ~-5 ~1 ~4 slot.container 14 crying_obsidian 12
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

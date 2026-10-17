# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3860/4224 | 主题内编号: b020/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·重甲防爆金库房间 (soulsand_valley_chamber_fortified_strongbox)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
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

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-5 ~1 ~-4 ~5 ~6 ~4 bone_block []
fill ~-4 ~1 ~-3 ~4 ~5 ~3 air []
fill ~-5 ~1 ~-4 ~-4 ~8 ~-3 polished_blackstone_bricks []
setblock ~-5 ~9 ~-4 soul_campfire []
fill ~-5 ~1 ~3 ~-4 ~8 ~4 polished_blackstone_bricks []
setblock ~-5 ~9 ~3 soul_campfire []
fill ~4 ~1 ~-4 ~5 ~8 ~-3 polished_blackstone_bricks []
setblock ~4 ~9 ~-4 soul_campfire []
fill ~4 ~1 ~3 ~5 ~8 ~4 polished_blackstone_bricks []
setblock ~4 ~9 ~3 soul_campfire []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~6 ~-4 ~5 ~6 ~4 polished_blackstone_bricks []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 nether_brick_fence []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~-5 ~7 ~-4 chiseled_nether_bricks []
setblock ~-5 ~8 ~-4 soul_campfire []
setblock ~-5 ~7 ~4 chiseled_nether_bricks []
setblock ~-5 ~8 ~4 soul_campfire []
setblock ~5 ~7 ~-4 chiseled_nether_bricks []
setblock ~5 ~8 ~-4 soul_campfire []
setblock ~5 ~7 ~4 chiseled_nether_bricks []
setblock ~5 ~8 ~4 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~5 ~-2 chiseled_nether_bricks []
fill ~-6 ~0 ~2 ~-6 ~5 ~2 chiseled_nether_bricks []
fill ~6 ~0 ~-2 ~6 ~5 ~-2 chiseled_nether_bricks []
fill ~6 ~0 ~2 ~6 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-7 ~0 ~1 ~-7 ~5 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~5 ~1 bone_block []
fill ~-7 ~6 ~1 ~7 ~6 ~1 bone_block []
setblock ~0 ~7 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 crying_obsidian []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 9 bone_block 15
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_sand 20
replaceitem block ~-4 ~1 ~2 slot.container 11 soul_soil 21
replaceitem block ~-4 ~1 ~2 slot.container 12 gold_ingot 14
replaceitem block ~-4 ~1 ~2 slot.container 13 quartz 16
replaceitem block ~-4 ~1 ~2 slot.container 14 obsidian 9
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0

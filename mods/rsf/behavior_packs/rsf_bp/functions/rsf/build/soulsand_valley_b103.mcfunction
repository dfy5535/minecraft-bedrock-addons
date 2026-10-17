# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3943/4224 | 主题内编号: b103/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·十字全向防御方堡 (soulsand_valley_bunker_cross_redoubt)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 soul_soil []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

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

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-5 ~2 ~7 ~5 polished_blackstone_bricks []
fill ~-6 ~1 ~-2 ~6 ~7 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-4 ~1 ~6 ~4 air []
fill ~-5 ~1 ~-1 ~5 ~6 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~5 ~0 ~2 ~5 air []
setblock ~-6 ~2 ~0 polished_blackstone_wall []
setblock ~6 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bone_block []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 polished_blackstone_wall []
fill ~-5 ~8 ~-4 ~5 ~8 ~4 air []
setblock ~-6 ~8 ~-5 basalt []
setblock ~-6 ~9 ~-5 soul_lantern []
setblock ~-6 ~8 ~5 basalt []
setblock ~-6 ~9 ~5 soul_lantern []
setblock ~6 ~8 ~-5 basalt []
setblock ~6 ~9 ~-5 soul_lantern []
setblock ~6 ~8 ~5 basalt []
setblock ~6 ~9 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-7 ~-8 ~4 ~-7 basalt []
setblock ~-8 ~5 ~-7 soul_lantern []
fill ~-8 ~0 ~7 ~-8 ~4 ~7 basalt []
setblock ~-8 ~5 ~7 soul_lantern []
fill ~8 ~0 ~-7 ~8 ~4 ~-7 basalt []
setblock ~8 ~5 ~-7 soul_lantern []
fill ~8 ~0 ~7 ~8 ~4 ~7 basalt []
setblock ~8 ~5 ~7 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x6) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~8 ~1 bone_block []
fill ~-8 ~9 ~1 ~8 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 crying_obsidian []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~3 slot.container 1 bone 16
replaceitem block ~5 ~1 ~3 slot.container 2 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 3 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 4 coal 19
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 24
replaceitem block ~5 ~1 ~3 slot.container 9 soul_lantern 8
replaceitem block ~5 ~1 ~3 slot.container 10 bone_block 15
replaceitem block ~5 ~1 ~3 slot.container 11 soul_sand 20
replaceitem block ~5 ~1 ~3 slot.container 12 soul_soil 21
replaceitem block ~5 ~1 ~3 slot.container 13 gold_ingot 14
replaceitem block ~5 ~1 ~3 slot.container 14 quartz 16
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 10
replaceitem block ~-5 ~1 ~4 slot.container 1 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 2 coal 22
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_lantern 6
replaceitem block ~-5 ~1 ~4 slot.container 10 bone_block 13
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_sand 18
replaceitem block ~-5 ~1 ~4 slot.container 12 soul_soil 19
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 12
replaceitem block ~-5 ~1 ~4 slot.container 14 quartz 21
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

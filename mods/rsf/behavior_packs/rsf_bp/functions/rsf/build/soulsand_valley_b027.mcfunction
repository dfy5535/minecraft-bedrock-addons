# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3867/4224 | 主题内编号: b027/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子连廊警戒塔楼 (soulsand_valley_tower_twin_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x9 | 地上高度 9格 | 地下深度 2格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-5 ~8 ~12 ~5 air [] replace lava
fill ~-8 ~0 ~-5 ~8 ~12 ~5 air [] replace fire
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 soul_soil []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 bone_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~10 ~3 polished_blackstone_bricks []
fill ~2 ~1 ~-3 ~6 ~10 ~3 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~9 ~2 air []
fill ~3 ~1 ~-2 ~5 ~9 ~2 air []
fill ~-2 ~7 ~-1 ~2 ~9 ~1 bone_block []
fill ~-3 ~8 ~0 ~3 ~8 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~9 ~-3 ~6 ~9 ~3 bone_block []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 polished_blackstone_wall []
fill ~-5 ~10 ~-2 ~5 ~10 ~2 air []
setblock ~-6 ~10 ~-3 basalt []
setblock ~-6 ~11 ~-3 soul_lantern []
setblock ~-6 ~10 ~3 basalt []
setblock ~-6 ~11 ~3 soul_lantern []
setblock ~6 ~10 ~-3 basalt []
setblock ~6 ~11 ~-3 soul_lantern []
setblock ~6 ~10 ~3 basalt []
setblock ~6 ~11 ~3 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-7 ~-9 ~4 ~-7 chiseled_nether_bricks []
setblock ~-9 ~5 ~-7 soul_campfire []
fill ~-9 ~0 ~7 ~-9 ~4 ~7 chiseled_nether_bricks []
setblock ~-9 ~5 ~7 soul_campfire []
fill ~9 ~0 ~-7 ~9 ~4 ~-7 chiseled_nether_bricks []
setblock ~9 ~5 ~-7 soul_campfire []
fill ~9 ~0 ~7 ~9 ~4 ~7 chiseled_nether_bricks []
setblock ~9 ~5 ~7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~-8 ~0 ~1 ~-8 ~7 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~7 ~1 bone_block []
fill ~-8 ~8 ~1 ~8 ~8 ~1 bone_block []
setblock ~0 ~9 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~3 brewing_stand []
setblock ~1 ~1 ~3 cauldron []
setblock ~0 ~1 ~3 ancient_debris []
setblock ~-6 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 coal 19
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~1 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~1 slot.container 4 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~1 slot.container 5 bone 16
replaceitem block ~5 ~1 ~1 slot.container 9 soul_sand 19
replaceitem block ~5 ~1 ~1 slot.container 10 soul_soil 20
replaceitem block ~5 ~1 ~1 slot.container 11 gold_ingot 13
replaceitem block ~5 ~1 ~1 slot.container 12 quartz 22
replaceitem block ~5 ~1 ~1 slot.container 13 obsidian 8
replaceitem block ~5 ~1 ~1 slot.container 14 crying_obsidian 7
loot insert ~5 ~1 ~1 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 19
replaceitem block ~-5 ~1 ~2 slot.container 4 ghast_tear 10
replaceitem block ~-5 ~1 ~2 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~2 slot.container 9 soul_sand 17
replaceitem block ~-5 ~1 ~2 slot.container 10 soul_soil 18
replaceitem block ~-5 ~1 ~2 slot.container 11 gold_ingot 11
replaceitem block ~-5 ~1 ~2 slot.container 12 quartz 20
replaceitem block ~-5 ~1 ~2 slot.container 13 obsidian 13
replaceitem block ~-5 ~1 ~2 slot.container 14 crying_obsidian 12
loot insert ~-5 ~1 ~2 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~2 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

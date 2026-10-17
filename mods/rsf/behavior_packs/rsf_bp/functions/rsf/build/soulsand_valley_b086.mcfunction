# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3926/4224 | 主题内编号: b086/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·重装矿石金库碉堡 (soulsand_valley_mine_fortified_ore_vault)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-5 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

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
fill ~-6 ~1 ~-5 ~6 ~6 ~5 blackstone []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~8 ~-4 bone_block []
setblock ~-6 ~9 ~-5 soul_campfire []
fill ~-6 ~1 ~4 ~-5 ~8 ~5 bone_block []
setblock ~-6 ~9 ~4 soul_campfire []
fill ~5 ~1 ~-5 ~6 ~8 ~-4 bone_block []
setblock ~5 ~9 ~-5 soul_campfire []
fill ~5 ~1 ~4 ~6 ~8 ~5 bone_block []
setblock ~5 ~9 ~4 soul_campfire []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 bone_block []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 polished_blackstone_wall []
fill ~-5 ~7 ~-4 ~5 ~7 ~4 air []
setblock ~-6 ~7 ~-5 chiseled_polished_blackstone []
setblock ~-6 ~8 ~-5 soul_campfire []
setblock ~-6 ~7 ~5 chiseled_polished_blackstone []
setblock ~-6 ~8 ~5 soul_campfire []
setblock ~6 ~7 ~-5 chiseled_polished_blackstone []
setblock ~6 ~8 ~-5 soul_campfire []
setblock ~6 ~7 ~5 chiseled_polished_blackstone []
setblock ~6 ~8 ~5 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 polished_blackstone_wall []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-1 ~-8 ~6 ~-1 bone_block []
fill ~8 ~0 ~-1 ~8 ~6 ~-1 bone_block []
fill ~-8 ~7 ~-1 ~8 ~7 ~-1 bone_block []
setblock ~0 ~8 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~-3 ~1 ~2 fletching_table []
setblock ~0 ~1 ~2 target []
setblock ~3 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 11 bone_block 13
replaceitem block ~-5 ~1 ~3 slot.container 12 soul_sand 18
replaceitem block ~-5 ~1 ~3 slot.container 13 soul_soil 19
replaceitem block ~-5 ~1 ~3 slot.container 14 gold_ingot 12
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0

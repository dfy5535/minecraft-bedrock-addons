# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3866/4224 | 主题内编号: b026/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·尖顶信标引航高塔 (soulsand_valley_tower_spire_beacon)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[trial_pit] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 11x9 | 地上高度 11格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~14 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~14 ~5 air [] replace fire
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 blackstone [] replace air
fill ~-5 ~-5 ~-4 ~5 ~-1 ~4 blackstone [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 blackstone_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone_bricks []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

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

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-4 ~1 ~-3 ~4 ~11 ~3 blackstone []
fill ~-3 ~1 ~-2 ~3 ~10 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~12 ~-3 air []
fill ~4 ~1 ~-3 ~4 ~12 ~-3 air []
fill ~-4 ~1 ~3 ~-4 ~12 ~3 air []
fill ~4 ~1 ~3 ~4 ~12 ~3 air []
fill ~-3 ~1 ~-2 ~-3 ~11 ~-2 chiseled_polished_blackstone []
fill ~3 ~1 ~-2 ~3 ~11 ~-2 chiseled_polished_blackstone []
fill ~-3 ~1 ~2 ~-3 ~11 ~2 chiseled_polished_blackstone []
fill ~3 ~1 ~2 ~3 ~11 ~2 chiseled_polished_blackstone []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~12 ~-2 ~2 ~13 ~2 bone_block []
fill ~-1 ~14 ~-1 ~1 ~16 ~1 blackstone []
fill ~0 ~17 ~0 ~0 ~20 ~0 ancient_debris []
setblock ~0 ~21 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-5 ~0 ~-2 ~-5 ~10 ~-2 chiseled_polished_blackstone []
fill ~-5 ~0 ~2 ~-5 ~10 ~2 chiseled_polished_blackstone []
fill ~5 ~0 ~-2 ~5 ~10 ~-2 chiseled_polished_blackstone []
fill ~5 ~0 ~2 ~5 ~10 ~2 chiseled_polished_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 6x4x4) ---
fill ~-6 ~0 ~0 ~-6 ~6 ~0 bone_block []
fill ~6 ~0 ~0 ~6 ~6 ~0 bone_block []
fill ~-6 ~7 ~0 ~6 ~7 ~0 bone_block []
setblock ~0 ~8 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~10 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 ancient_debris []
setblock ~0 ~1 ~0 crying_obsidian []
setblock ~0 ~2 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~1 slot.container 0 blaze_rod 8
replaceitem block ~-3 ~1 ~1 slot.container 1 coal 19
replaceitem block ~-3 ~1 ~1 slot.container 2 arrow 24
replaceitem block ~-3 ~1 ~1 slot.container 3 ender_pearl 9
replaceitem block ~-3 ~1 ~1 slot.container 4 rotten_flesh 16
replaceitem block ~-3 ~1 ~1 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-3 ~1 ~1 slot.container 9 golden_apple 4
replaceitem block ~-3 ~1 ~1 slot.container 10 soul_lantern 9
replaceitem block ~-3 ~1 ~1 slot.container 11 bone_block 16
replaceitem block ~-3 ~1 ~1 slot.container 12 soul_sand 21
replaceitem block ~-3 ~1 ~1 slot.container 13 soul_soil 22
replaceitem block ~-3 ~1 ~1 slot.container 14 gold_ingot 8
loot insert ~-3 ~1 ~1 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0

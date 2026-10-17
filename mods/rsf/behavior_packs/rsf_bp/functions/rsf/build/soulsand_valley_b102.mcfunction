# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3942/4224 | 主题内编号: b102/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子箭塔联防碉楼 (soulsand_valley_bunker_twin_turret)
# 建筑构造: 主体[twin_towers] + 屋顶[battlement_flat] + 地宫[portal_chamber] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_archery]
# 建筑规模: 平面 17x11 | 地上高度 8格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~11 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~11 ~6 air [] replace fire
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 blackstone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 blackstone [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 blackstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bone_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 crying_obsidian []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 wither_skeleton_skull 5
replaceitem block ~4 ~-2 ~0 slot.container 1 bone 21
replaceitem block ~4 ~-2 ~0 slot.container 2 ghast_tear 12
replaceitem block ~4 ~-2 ~0 slot.container 3 blaze_rod 13
replaceitem block ~4 ~-2 ~0 slot.container 4 coal 16
replaceitem block ~4 ~-2 ~0 slot.container 5 arrow 21
replaceitem block ~4 ~-2 ~0 slot.container 9 netherite_scrap 3
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 5
replaceitem block ~4 ~-2 ~0 slot.container 11 soul_lantern 10
replaceitem block ~4 ~-2 ~0 slot.container 12 bone_block 17
replaceitem block ~4 ~-2 ~0 slot.container 13 soul_sand 22
replaceitem block ~4 ~-2 ~0 slot.container 14 soul_soil 16
loot insert ~4 ~-2 ~0 loot "rsf/soulsand_valley"
loot insert ~4 ~-2 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~9 ~4 blackstone []
fill ~2 ~1 ~-4 ~7 ~9 ~4 blackstone []
fill ~-6 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~6 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 bone_block []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~8 ~-4 ~7 ~8 ~4 bone_block []
fill ~-7 ~9 ~-4 ~7 ~9 ~4 polished_blackstone_wall []
fill ~-6 ~9 ~-3 ~6 ~9 ~3 air []
setblock ~-7 ~9 ~-4 chiseled_polished_blackstone []
setblock ~-7 ~10 ~-4 soul_campfire []
setblock ~-7 ~9 ~4 chiseled_polished_blackstone []
setblock ~-7 ~10 ~4 soul_campfire []
setblock ~7 ~9 ~-4 chiseled_polished_blackstone []
setblock ~7 ~10 ~-4 soul_campfire []
setblock ~7 ~9 ~4 chiseled_polished_blackstone []
setblock ~7 ~10 ~4 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 chiseled_polished_blackstone []
fill ~-8 ~0 ~2 ~-8 ~7 ~2 chiseled_polished_blackstone []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 chiseled_polished_blackstone []
fill ~8 ~0 ~2 ~8 ~7 ~2 chiseled_polished_blackstone []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x6x5) ---
fill ~-9 ~0 ~-1 ~-9 ~7 ~-1 bone_block []
fill ~9 ~0 ~-1 ~9 ~7 ~-1 bone_block []
fill ~-9 ~8 ~-1 ~9 ~8 ~-1 bone_block []
setblock ~0 ~9 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_archery) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-6 ~1 ~3 fletching_table []
setblock ~0 ~1 ~3 target []
setblock ~6 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-6 ~1 ~2 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-6 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-6 ~1 ~2 slot.container 5 coal 19
replaceitem block ~-6 ~1 ~2 slot.container 9 crying_obsidian 7
replaceitem block ~-6 ~1 ~2 slot.container 10 netherite_scrap 3
replaceitem block ~-6 ~1 ~2 slot.container 11 golden_apple 5
replaceitem block ~-6 ~1 ~2 slot.container 12 soul_lantern 10
replaceitem block ~-6 ~1 ~2 slot.container 13 bone_block 17
replaceitem block ~-6 ~1 ~2 slot.container 14 soul_sand 22
loot insert ~-6 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

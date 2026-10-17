# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3947/4224 | 主题内编号: b107/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·观星高塔与秘术地宫 (soulsand_valley_arcane_star_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 soul_campfire []
setblock ~5 ~-7 ~0 soul_campfire []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 21
replaceitem block ~0 ~-5 ~4 slot.container 1 ghast_tear 12
replaceitem block ~0 ~-5 ~4 slot.container 2 blaze_rod 13
replaceitem block ~0 ~-5 ~4 slot.container 3 coal 16
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 21
replaceitem block ~0 ~-5 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-5 ~4 slot.container 9 soul_soil 22
replaceitem block ~0 ~-5 ~4 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-5 ~4 slot.container 11 quartz 17
replaceitem block ~0 ~-5 ~4 slot.container 12 obsidian 10
replaceitem block ~0 ~-5 ~4 slot.container 13 crying_obsidian 9
replaceitem block ~0 ~-5 ~4 slot.container 14 netherite_scrap 5
loot insert ~0 ~-5 ~4 loot "rsf/soulsand_valley"
loot insert ~0 ~-5 ~4 loot "chests/nether_bridge"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 19
replaceitem block ~0 ~-5 ~-4 slot.container 1 ghast_tear 10
replaceitem block ~0 ~-5 ~-4 slot.container 2 blaze_rod 11
replaceitem block ~0 ~-5 ~-4 slot.container 3 coal 22
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 27
replaceitem block ~0 ~-5 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-5 ~-4 slot.container 9 soul_soil 21
replaceitem block ~0 ~-5 ~-4 slot.container 10 gold_ingot 14
replaceitem block ~0 ~-5 ~-4 slot.container 11 quartz 16
replaceitem block ~0 ~-5 ~-4 slot.container 12 obsidian 9
replaceitem block ~0 ~-5 ~-4 slot.container 13 crying_obsidian 8
replaceitem block ~0 ~-5 ~-4 slot.container 14 netherite_scrap 4
loot insert ~0 ~-5 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-5 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-6 ~8 ~-5 ~6 ~8 ~5 nether_brick_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~9 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~9 ~-4 ~5 ~9 ~4 bone_block []
fill ~-4 ~10 ~-3 ~4 ~11 ~3 glass []
fill ~-3 ~10 ~-2 ~3 ~10 ~2 air []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-6 ~0 ~-2 ~-6 ~8 ~-2 basalt []
fill ~-6 ~0 ~2 ~-6 ~8 ~2 basalt []
fill ~6 ~0 ~-2 ~6 ~8 ~-2 basalt []
fill ~6 ~0 ~2 ~6 ~8 ~2 basalt []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x5) ---
fill ~-7 ~0 ~0 ~-7 ~7 ~0 bone_block []
fill ~7 ~0 ~0 ~7 ~7 ~0 bone_block []
fill ~-7 ~8 ~0 ~7 ~8 ~0 bone_block []
setblock ~0 ~9 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 coal 19
replaceitem block ~4 ~1 ~2 slot.container 1 arrow 24
replaceitem block ~4 ~1 ~2 slot.container 2 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 3 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 4 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~2 slot.container 5 bone 16
replaceitem block ~4 ~1 ~2 slot.container 9 soul_sand 22
replaceitem block ~4 ~1 ~2 slot.container 10 soul_soil 16
replaceitem block ~4 ~1 ~2 slot.container 11 gold_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 12 quartz 18
replaceitem block ~4 ~1 ~2 slot.container 13 obsidian 11
replaceitem block ~4 ~1 ~2 slot.container 14 crying_obsidian 10
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 1 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~3 slot.container 3 bone 19
replaceitem block ~-4 ~1 ~3 slot.container 4 ghast_tear 10
replaceitem block ~-4 ~1 ~3 slot.container 5 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 9 soul_sand 20
replaceitem block ~-4 ~1 ~3 slot.container 10 soul_soil 21
replaceitem block ~-4 ~1 ~3 slot.container 11 gold_ingot 14
replaceitem block ~-4 ~1 ~3 slot.container 12 quartz 16
replaceitem block ~-4 ~1 ~3 slot.container 13 obsidian 9
replaceitem block ~-4 ~1 ~3 slot.container 14 crying_obsidian 8
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3869/4224 | 主题内编号: b029/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·奥术星象琉璃塔 (soulsand_valley_tower_mage_observatory)
# 建筑构造: 主体[arcane_observatory] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 10格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~13 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 nether_brick [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-5 ~-4 ~-5 ~5 ~-1 ~5 nether_brick []
fill ~-4 ~-5 ~-4 ~4 ~-1 ~4 air []
setblock ~-4 ~-5 ~0 blast_furnace []
setblock ~4 ~-5 ~0 smithing_table []
setblock ~0 ~-5 ~4 anvil []
fill ~0 ~-5 ~-4 ~0 ~0 ~-4 ladder ["facing_direction"=3]
setblock ~0 ~-6 ~0 soul_lantern []
setblock ~4 ~-3 ~4 barrel ["facing_direction"=1]
replaceitem block ~4 ~-3 ~4 slot.container 0 ghast_tear 12
replaceitem block ~4 ~-3 ~4 slot.container 1 blaze_rod 13
replaceitem block ~4 ~-3 ~4 slot.container 2 coal 16
replaceitem block ~4 ~-3 ~4 slot.container 3 arrow 21
replaceitem block ~4 ~-3 ~4 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-3 ~4 slot.container 5 rotten_flesh 13
replaceitem block ~4 ~-3 ~4 slot.container 9 obsidian 10
replaceitem block ~4 ~-3 ~4 slot.container 10 crying_obsidian 9
replaceitem block ~4 ~-3 ~4 slot.container 11 netherite_scrap 5
replaceitem block ~4 ~-3 ~4 slot.container 12 golden_apple 7
replaceitem block ~4 ~-3 ~4 slot.container 13 soul_lantern 12
replaceitem block ~4 ~-3 ~4 slot.container 14 bone_block 12
loot insert ~4 ~-3 ~4 loot "rsf/soulsand_valley"
loot insert ~4 ~-3 ~4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (arcane_observatory) ---
fill ~-5 ~1 ~-4 ~5 ~10 ~4 nether_brick []
fill ~-4 ~1 ~-3 ~4 ~9 ~3 air []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 blackstone_slab []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~3 ~0 ~10 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~10 ~-4 ~5 ~10 ~4 bone_block []
fill ~-4 ~11 ~-3 ~4 ~12 ~3 glass []
fill ~-3 ~11 ~-2 ~3 ~11 ~2 air []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 basalt []
setblock ~0 ~4 ~-6 ancient_debris []
setblock ~0 ~5 ~-6 soul_lantern []
fill ~0 ~0 ~6 ~0 ~3 ~6 basalt []
setblock ~0 ~4 ~6 ancient_debris []
setblock ~0 ~5 ~6 soul_lantern []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 basalt []
setblock ~-7 ~4 ~0 ancient_debris []
setblock ~-7 ~5 ~0 soul_lantern []
fill ~7 ~0 ~0 ~7 ~3 ~0 basalt []
setblock ~7 ~4 ~0 ancient_debris []
setblock ~7 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x2) ---
fill ~-7 ~0 ~-2 ~-7 ~4 ~-2 bone_block []
fill ~7 ~0 ~-2 ~7 ~4 ~-2 bone_block []
fill ~-7 ~5 ~-2 ~7 ~5 ~-2 bone_block []
setblock ~0 ~6 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 2 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~2 slot.container 3 bone 16
replaceitem block ~4 ~1 ~2 slot.container 4 ghast_tear 7
replaceitem block ~4 ~1 ~2 slot.container 5 blaze_rod 8
replaceitem block ~4 ~1 ~2 slot.container 9 netherite_scrap 6
replaceitem block ~4 ~1 ~2 slot.container 10 golden_apple 8
replaceitem block ~4 ~1 ~2 slot.container 11 soul_lantern 6
replaceitem block ~4 ~1 ~2 slot.container 12 bone_block 13
replaceitem block ~4 ~1 ~2 slot.container 13 soul_sand 18
replaceitem block ~4 ~1 ~2 slot.container 14 soul_soil 19
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 19
replaceitem block ~-4 ~1 ~3 slot.container 2 ghast_tear 10
replaceitem block ~-4 ~1 ~3 slot.container 3 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 4 coal 22
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 27
replaceitem block ~-4 ~1 ~3 slot.container 9 netherite_scrap 4
replaceitem block ~-4 ~1 ~3 slot.container 10 golden_apple 6
replaceitem block ~-4 ~1 ~3 slot.container 11 soul_lantern 11
replaceitem block ~-4 ~1 ~3 slot.container 12 bone_block 18
replaceitem block ~-4 ~1 ~3 slot.container 13 soul_sand 16
replaceitem block ~-4 ~1 ~3 slot.container 14 soul_soil 17
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

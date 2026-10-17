# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3863/4224 | 主题内编号: b023/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双层露台阁楼宝室 (soulsand_valley_chamber_terrace_loft)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[portal_chamber] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 8格 | 地下深度 2格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~11 ~7 air [] replace fire
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-6 ~-3 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 soul_soil []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

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

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-5 ~5 ~4 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-6 ~4 ~-6 ~6 ~4 ~6 polished_blackstone_brick_slab []
fill ~-4 ~5 ~-4 ~4 ~8 ~4 bone_block []
fill ~-3 ~5 ~-3 ~3 ~7 ~3 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
fill ~0 ~1 ~3 ~0 ~5 ~3 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-6 ~6 ~8 ~6 polished_blackstone_brick_slab []
fill ~-4 ~9 ~-4 ~4 ~10 ~4 bone_block []
fill ~-5 ~11 ~-5 ~5 ~11 ~5 nether_brick_slab []
setblock ~0 ~12 ~0 crying_obsidian []
setblock ~0 ~13 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~6 ~0 ~-2 ~8 ~10 ~2 bone_block []
fill ~6 ~1 ~-1 ~7 ~9 ~1 air []
fill ~5 ~1 ~0 ~6 ~2 ~0 air []
setblock ~7 ~11 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~1 ~-7 ~8 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~8 ~1 bone_block []
fill ~-7 ~9 ~1 ~7 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~3 slot.container 1 bone 16
replaceitem block ~4 ~1 ~3 slot.container 2 ghast_tear 7
replaceitem block ~4 ~1 ~3 slot.container 3 blaze_rod 8
replaceitem block ~4 ~1 ~3 slot.container 4 coal 19
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 24
replaceitem block ~4 ~1 ~3 slot.container 9 soul_lantern 12
replaceitem block ~4 ~1 ~3 slot.container 10 bone_block 12
replaceitem block ~4 ~1 ~3 slot.container 11 soul_sand 17
replaceitem block ~4 ~1 ~3 slot.container 12 soul_soil 18
replaceitem block ~4 ~1 ~3 slot.container 13 gold_ingot 11
replaceitem block ~4 ~1 ~3 slot.container 14 quartz 20
loot insert ~4 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ghast_tear 10
replaceitem block ~-4 ~1 ~4 slot.container 1 blaze_rod 11
replaceitem block ~-4 ~1 ~4 slot.container 2 coal 22
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 27
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 9 soul_lantern 10
replaceitem block ~-4 ~1 ~4 slot.container 10 bone_block 17
replaceitem block ~-4 ~1 ~4 slot.container 11 soul_sand 22
replaceitem block ~-4 ~1 ~4 slot.container 12 soul_soil 16
replaceitem block ~-4 ~1 ~4 slot.container 13 gold_ingot 9
replaceitem block ~-4 ~1 ~4 slot.container 14 quartz 18
loot insert ~-4 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~4 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~2 ~0

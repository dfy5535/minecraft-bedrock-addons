# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3919/4224 | 主题内编号: b079/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·四角结界守护柱阵 (soulsand_valley_totem_citadel_ward)
# 建筑构造: 主体[fortress_citadel] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_storage]
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

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bone_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 coal 16
replaceitem block ~4 ~-2 ~3 slot.container 1 arrow 21
replaceitem block ~4 ~-2 ~3 slot.container 2 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~4 ~-2 ~3 slot.container 4 wither_skeleton_skull 5
replaceitem block ~4 ~-2 ~3 slot.container 5 bone 21
replaceitem block ~4 ~-2 ~3 slot.container 9 soul_sand 18
replaceitem block ~4 ~-2 ~3 slot.container 10 soul_soil 19
replaceitem block ~4 ~-2 ~3 slot.container 11 gold_ingot 12
replaceitem block ~4 ~-2 ~3 slot.container 12 quartz 21
replaceitem block ~4 ~-2 ~3 slot.container 13 obsidian 14
replaceitem block ~4 ~-2 ~3 slot.container 14 crying_obsidian 6
loot insert ~4 ~-2 ~3 loot "rsf/soulsand_valley"
loot insert ~4 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-6 ~1 ~-5 ~6 ~7 ~5 polished_blackstone_bricks []
fill ~-5 ~1 ~-4 ~5 ~6 ~4 air []
fill ~-6 ~1 ~-5 ~-5 ~9 ~-4 bone_block []
setblock ~-6 ~10 ~-5 soul_lantern []
fill ~-6 ~1 ~4 ~-5 ~9 ~5 bone_block []
setblock ~-6 ~10 ~4 soul_lantern []
fill ~5 ~1 ~-5 ~6 ~9 ~-4 bone_block []
setblock ~5 ~10 ~-5 soul_lantern []
fill ~5 ~1 ~4 ~6 ~9 ~5 bone_block []
setblock ~5 ~10 ~4 soul_lantern []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-6 ~7 ~-5 ~-6 ~9 ~-5 basalt []
setblock ~-6 ~10 ~-5 soul_lantern []
fill ~-6 ~7 ~5 ~-6 ~9 ~5 basalt []
setblock ~-6 ~10 ~5 soul_lantern []
fill ~6 ~7 ~-5 ~6 ~9 ~-5 basalt []
setblock ~6 ~10 ~-5 soul_lantern []
fill ~6 ~7 ~5 ~6 ~9 ~5 basalt []
setblock ~6 ~10 ~5 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-8 ~3 ~0 ~-6 soul_soil []
setblock ~-2 ~1 ~-7 campfire []
setblock ~2 ~1 ~-7 hay_block []
setblock ~3 ~1 ~-7 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~2 ~-8 ~4 ~2 bone_block []
fill ~8 ~0 ~2 ~8 ~4 ~2 bone_block []
fill ~-8 ~5 ~2 ~8 ~5 ~2 bone_block []
setblock ~0 ~6 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_storage) ---
setblock ~0 ~5 ~0 soul_lantern []
fill ~-5 ~1 ~4 ~-1 ~2 ~4 barrel ["facing_direction"=2]
setblock ~0 ~1 ~4 crafting_table []
setblock ~0 ~1 ~0 ancient_debris []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~3 slot.container 1 bone 16
replaceitem block ~5 ~1 ~3 slot.container 2 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 3 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 4 coal 19
replaceitem block ~5 ~1 ~3 slot.container 5 arrow 24
replaceitem block ~5 ~1 ~3 slot.container 9 netherite_scrap 7
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 2
replaceitem block ~5 ~1 ~3 slot.container 11 soul_lantern 7
replaceitem block ~5 ~1 ~3 slot.container 12 bone_block 14
replaceitem block ~5 ~1 ~3 slot.container 13 soul_sand 19
replaceitem block ~5 ~1 ~3 slot.container 14 soul_soil 20
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ghast_tear 10
replaceitem block ~-5 ~1 ~4 slot.container 1 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 2 coal 22
replaceitem block ~-5 ~1 ~4 slot.container 3 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 9 netherite_scrap 5
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 7
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_lantern 12
replaceitem block ~-5 ~1 ~4 slot.container 12 bone_block 12
replaceitem block ~-5 ~1 ~4 slot.container 13 soul_sand 17
replaceitem block ~-5 ~1 ~4 slot.container 14 soul_soil 18
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

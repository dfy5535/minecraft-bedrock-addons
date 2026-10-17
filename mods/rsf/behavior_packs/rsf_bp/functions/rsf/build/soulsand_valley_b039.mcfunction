# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3879/4224 | 主题内编号: b039/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·永恒圣火图腾方尖塔 (soulsand_valley_obelisk_flame_pylon)
# 建筑构造: 主体[rect_hall] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 11x9 | 地上高度 10格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~13 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~13 ~5 air [] replace fire
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks [] replace air
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 soul_soil []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 nether_brick []
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

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~10 ~3 polished_blackstone_bricks []
fill ~-3 ~1 ~-2 ~3 ~9 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~10 ~-3 basalt []
fill ~-4 ~1 ~3 ~-4 ~10 ~3 basalt []
fill ~4 ~1 ~-3 ~4 ~10 ~-3 basalt []
fill ~4 ~1 ~3 ~4 ~10 ~3 basalt []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 polished_blackstone_wall []
setblock ~4 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 bone_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 polished_blackstone_bricks []
fill ~0 ~16 ~0 ~0 ~19 ~0 crying_obsidian []
setblock ~0 ~20 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-5 ~0 ~3 ~-5 basalt []
setblock ~0 ~4 ~-5 gold_block []
setblock ~0 ~5 ~-5 soul_lantern []
fill ~0 ~0 ~5 ~0 ~3 ~5 basalt []
setblock ~0 ~4 ~5 gold_block []
setblock ~0 ~5 ~5 soul_lantern []
fill ~-6 ~0 ~0 ~-6 ~3 ~0 basalt []
setblock ~-6 ~4 ~0 gold_block []
setblock ~-6 ~5 ~0 soul_lantern []
fill ~6 ~0 ~0 ~6 ~3 ~0 basalt []
setblock ~6 ~4 ~0 gold_block []
setblock ~6 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 6x5x2) ---
fill ~-6 ~0 ~1 ~-6 ~4 ~1 bone_block []
fill ~6 ~0 ~1 ~6 ~4 ~1 bone_block []
fill ~-6 ~5 ~1 ~6 ~5 ~1 bone_block []
setblock ~0 ~6 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-3 ~1 ~2 smoker []
setblock ~3 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 wither_skeleton_skull 8
replaceitem block ~3 ~1 ~1 slot.container 1 bone 16
replaceitem block ~3 ~1 ~1 slot.container 2 ghast_tear 7
replaceitem block ~3 ~1 ~1 slot.container 3 blaze_rod 8
replaceitem block ~3 ~1 ~1 slot.container 4 coal 19
replaceitem block ~3 ~1 ~1 slot.container 5 arrow 24
replaceitem block ~3 ~1 ~1 slot.container 9 netherite_scrap 2
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 4
replaceitem block ~3 ~1 ~1 slot.container 11 soul_lantern 9
replaceitem block ~3 ~1 ~1 slot.container 12 bone_block 16
replaceitem block ~3 ~1 ~1 slot.container 13 soul_sand 21
replaceitem block ~3 ~1 ~1 slot.container 14 soul_soil 22
loot insert ~3 ~1 ~1 loot "rsf/soulsand_valley"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 ghast_tear 10
replaceitem block ~-3 ~1 ~2 slot.container 1 blaze_rod 11
replaceitem block ~-3 ~1 ~2 slot.container 2 coal 22
replaceitem block ~-3 ~1 ~2 slot.container 3 arrow 27
replaceitem block ~-3 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-3 ~1 ~2 slot.container 9 netherite_scrap 7
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 2
replaceitem block ~-3 ~1 ~2 slot.container 11 soul_lantern 7
replaceitem block ~-3 ~1 ~2 slot.container 12 bone_block 14
replaceitem block ~-3 ~1 ~2 slot.container 13 soul_sand 19
replaceitem block ~-3 ~1 ~2 slot.container 14 soul_soil 20
loot insert ~-3 ~1 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~1 ~2 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

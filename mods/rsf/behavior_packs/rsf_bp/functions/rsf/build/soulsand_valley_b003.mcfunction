# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3843/4224 | 主题内编号: b003/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·环柱巨石方尖祭坛 (soulsand_valley_altar_rotunda_monolith)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 9格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~12 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 soul_soil []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bone_block []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_campfire []
setblock ~4 ~-6 ~0 soul_campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 blaze_rod 13
replaceitem block ~0 ~-4 ~3 slot.container 1 coal 16
replaceitem block ~0 ~-4 ~3 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~3 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-4 ~3 slot.container 5 wither_skeleton_skull 5
replaceitem block ~0 ~-4 ~3 slot.container 9 soul_soil 16
replaceitem block ~0 ~-4 ~3 slot.container 10 gold_ingot 9
replaceitem block ~0 ~-4 ~3 slot.container 11 quartz 18
replaceitem block ~0 ~-4 ~3 slot.container 12 obsidian 11
replaceitem block ~0 ~-4 ~3 slot.container 13 crying_obsidian 10
replaceitem block ~0 ~-4 ~3 slot.container 14 netherite_scrap 6
loot insert ~0 ~-4 ~3 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~3 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 blaze_rod 11
replaceitem block ~0 ~-4 ~-3 slot.container 1 coal 22
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 27
replaceitem block ~0 ~-4 ~-3 slot.container 3 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 11
replaceitem block ~0 ~-4 ~-3 slot.container 5 wither_skeleton_skull 3
replaceitem block ~0 ~-4 ~-3 slot.container 9 soul_soil 22
replaceitem block ~0 ~-4 ~-3 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 quartz 17
replaceitem block ~0 ~-4 ~-3 slot.container 12 obsidian 10
replaceitem block ~0 ~-4 ~-3 slot.container 13 crying_obsidian 9
replaceitem block ~0 ~-4 ~-3 slot.container 14 netherite_scrap 5
loot insert ~0 ~-4 ~-3 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~9 ~-5 ~6 ~9 ~5 bone_block []
fill ~-6 ~1 ~-5 ~-6 ~8 ~-5 basalt []
fill ~-6 ~1 ~5 ~-6 ~8 ~5 basalt []
fill ~-4 ~1 ~-5 ~-4 ~8 ~-5 basalt []
fill ~-4 ~1 ~5 ~-4 ~8 ~5 basalt []
fill ~-2 ~1 ~-5 ~-2 ~8 ~-5 basalt []
fill ~-2 ~1 ~5 ~-2 ~8 ~5 basalt []
fill ~0 ~1 ~-5 ~0 ~8 ~-5 basalt []
fill ~0 ~1 ~5 ~0 ~8 ~5 basalt []
fill ~2 ~1 ~-5 ~2 ~8 ~-5 basalt []
fill ~2 ~1 ~5 ~2 ~8 ~5 basalt []
fill ~4 ~1 ~-5 ~4 ~8 ~-5 basalt []
fill ~4 ~1 ~5 ~4 ~8 ~5 basalt []
fill ~6 ~1 ~-5 ~6 ~8 ~-5 basalt []
fill ~6 ~1 ~5 ~6 ~8 ~5 basalt []
fill ~-6 ~1 ~-3 ~-6 ~8 ~-3 basalt []
fill ~6 ~1 ~-3 ~6 ~8 ~-3 basalt []
fill ~-6 ~1 ~-1 ~-6 ~8 ~-1 basalt []
fill ~6 ~1 ~-1 ~6 ~8 ~-1 basalt []
fill ~-6 ~1 ~1 ~-6 ~8 ~1 basalt []
fill ~6 ~1 ~1 ~6 ~8 ~1 basalt []
fill ~-6 ~1 ~3 ~-6 ~8 ~3 basalt []
fill ~6 ~1 ~3 ~6 ~8 ~3 basalt []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 bone_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 polished_blackstone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 crying_obsidian []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 basalt []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 basalt []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 basalt []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 basalt []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x6) ---
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
replaceitem block ~5 ~1 ~3 slot.container 0 coal 19
replaceitem block ~5 ~1 ~3 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~3 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 4 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~3 slot.container 5 bone 16
replaceitem block ~5 ~1 ~3 slot.container 9 soul_lantern 6
replaceitem block ~5 ~1 ~3 slot.container 10 bone_block 13
replaceitem block ~5 ~1 ~3 slot.container 11 soul_sand 18
replaceitem block ~5 ~1 ~3 slot.container 12 soul_soil 19
replaceitem block ~5 ~1 ~3 slot.container 13 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 14 quartz 21
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~4 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~4 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~4 slot.container 3 bone 19
replaceitem block ~-5 ~1 ~4 slot.container 4 ghast_tear 10
replaceitem block ~-5 ~1 ~4 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_lantern 11
replaceitem block ~-5 ~1 ~4 slot.container 10 bone_block 18
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_sand 16
replaceitem block ~-5 ~1 ~4 slot.container 12 soul_soil 17
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 14 quartz 19
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

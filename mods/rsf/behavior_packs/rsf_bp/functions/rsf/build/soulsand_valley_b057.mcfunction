# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3897/4224 | 主题内编号: b057/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·中央石棺帝王地下陵寝 (soulsand_valley_crypt_sarcophagus_hall)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[pyramid_stepped] + 地宫[ossuary_tomb] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x15 | 地上高度 5格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~8 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~8 ~8 air [] replace fire
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 nether_brick [] replace air
fill ~-7 ~-5 ~-7 ~7 ~-1 ~7 nether_brick [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 nether_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 blackstone []
fill ~-5 ~-5 ~-5 ~5 ~-1 ~5 air []
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 bone_block []
setblock ~0 ~-6 ~0 ancient_debris []
fill ~0 ~-5 ~5 ~0 ~0 ~5 ladder ["facing_direction"=2]
setblock ~-2 ~-5 ~0 soul_lantern []
setblock ~2 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~-4 chest ["facing_direction"=3]
replaceitem block ~0 ~-3 ~-4 slot.container 0 coal 16
replaceitem block ~0 ~-3 ~-4 slot.container 1 arrow 21
replaceitem block ~0 ~-3 ~-4 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~-4 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~-4 slot.container 4 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~-4 slot.container 5 bone 21
replaceitem block ~0 ~-3 ~-4 slot.container 9 netherite_scrap 2
replaceitem block ~0 ~-3 ~-4 slot.container 10 golden_apple 4
replaceitem block ~0 ~-3 ~-4 slot.container 11 soul_lantern 9
replaceitem block ~0 ~-3 ~-4 slot.container 12 bone_block 16
replaceitem block ~0 ~-3 ~-4 slot.container 13 soul_sand 21
replaceitem block ~0 ~-3 ~-4 slot.container 14 soul_soil 22
loot insert ~0 ~-3 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-6 ~1 ~-6 ~6 ~2 ~6 nether_brick []
fill ~-5 ~1 ~-5 ~5 ~3 ~5 air []
fill ~-6 ~1 ~0 ~6 ~2 ~0 bone_block []
fill ~0 ~1 ~-6 ~0 ~2 ~6 bone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 bone_block []
fill ~-5 ~7 ~-5 ~5 ~7 ~5 blackstone []
fill ~-1 ~8 ~-1 ~1 ~8 ~1 gilded_blackstone []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 chiseled_nether_bricks []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 chiseled_nether_bricks []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 chiseled_nether_bricks []
fill ~8 ~0 ~2 ~8 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x5) ---
fill ~-8 ~0 ~-1 ~-8 ~7 ~-1 bone_block []
fill ~8 ~0 ~-1 ~8 ~7 ~-1 bone_block []
fill ~-8 ~8 ~-1 ~8 ~8 ~-1 bone_block []
setblock ~0 ~9 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 crying_obsidian []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ghast_tear 7
replaceitem block ~5 ~1 ~4 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~4 slot.container 2 coal 19
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 24
replaceitem block ~5 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 9 soul_sand 21
replaceitem block ~5 ~1 ~4 slot.container 10 soul_soil 22
replaceitem block ~5 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~5 ~1 ~4 slot.container 12 quartz 17
replaceitem block ~5 ~1 ~4 slot.container 13 obsidian 10
replaceitem block ~5 ~1 ~4 slot.container 14 crying_obsidian 9
loot insert ~5 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 coal 22
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 27
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~5 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 19
replaceitem block ~-5 ~1 ~5 slot.container 9 soul_sand 19
replaceitem block ~-5 ~1 ~5 slot.container 10 soul_soil 20
replaceitem block ~-5 ~1 ~5 slot.container 11 gold_ingot 13
replaceitem block ~-5 ~1 ~5 slot.container 12 quartz 22
replaceitem block ~-5 ~1 ~5 slot.container 13 obsidian 8
replaceitem block ~-5 ~1 ~5 slot.container 14 crying_obsidian 7
loot insert ~-5 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~5 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

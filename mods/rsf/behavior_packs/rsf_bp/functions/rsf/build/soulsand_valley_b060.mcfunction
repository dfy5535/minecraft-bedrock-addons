# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3900/4224 | 主题内编号: b060/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·圆形穹顶万骨祠堂 (soulsand_valley_crypt_rotunda_necropoli)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[underground_forge] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 bone_block [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 bone_block [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

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

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 polished_blackstone_bricks []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 chiseled_nether_bricks []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 chiseled_nether_bricks []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 chiseled_nether_bricks []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 chiseled_nether_bricks []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 chiseled_nether_bricks []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 chiseled_nether_bricks []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 chiseled_nether_bricks []
fill ~0 ~1 ~5 ~0 ~6 ~5 chiseled_nether_bricks []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 chiseled_nether_bricks []
fill ~2 ~1 ~5 ~2 ~6 ~5 chiseled_nether_bricks []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 chiseled_nether_bricks []
fill ~4 ~1 ~5 ~4 ~6 ~5 chiseled_nether_bricks []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 chiseled_nether_bricks []
fill ~6 ~1 ~5 ~6 ~6 ~5 chiseled_nether_bricks []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 chiseled_nether_bricks []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 chiseled_nether_bricks []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 chiseled_nether_bricks []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 chiseled_nether_bricks []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 chiseled_nether_bricks []
fill ~6 ~1 ~1 ~6 ~6 ~1 chiseled_nether_bricks []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 chiseled_nether_bricks []
fill ~6 ~1 ~3 ~6 ~6 ~3 chiseled_nether_bricks []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 polished_blackstone_bricks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 chiseled_nether_bricks []
setblock ~0 ~4 ~-7 gilded_blackstone []
setblock ~0 ~5 ~-7 soul_campfire []
fill ~0 ~0 ~7 ~0 ~3 ~7 chiseled_nether_bricks []
setblock ~0 ~4 ~7 gilded_blackstone []
setblock ~0 ~5 ~7 soul_campfire []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 chiseled_nether_bricks []
setblock ~-8 ~4 ~0 gilded_blackstone []
setblock ~-8 ~5 ~0 soul_campfire []
fill ~8 ~0 ~0 ~8 ~3 ~0 chiseled_nether_bricks []
setblock ~8 ~4 ~0 gilded_blackstone []
setblock ~8 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 bone_block []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 bone_block []
fill ~-8 ~6 ~-2 ~8 ~6 ~-2 bone_block []
setblock ~0 ~7 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 gold_block []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 9 bone_block 13
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_sand 18
replaceitem block ~-5 ~1 ~3 slot.container 11 soul_soil 19
replaceitem block ~-5 ~1 ~3 slot.container 12 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 13 quartz 21
replaceitem block ~-5 ~1 ~3 slot.container 14 obsidian 14
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

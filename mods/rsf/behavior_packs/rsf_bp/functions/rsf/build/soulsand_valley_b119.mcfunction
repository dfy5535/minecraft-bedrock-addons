# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3959/4224 | 主题内编号: b119/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·半地下恒温洞穴苗圃 (soulsand_valley_conservatory_sunken_grove)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x13 | 地上高度 5格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~8 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~8 ~7 air [] replace fire
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-6 ~6 ~-1 ~6 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 soul_soil []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 nether_brick []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-3 ~2 slot.container 0 arrow 21
replaceitem block ~3 ~-3 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-3 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-3 ~2 slot.container 3 wither_skeleton_skull 5
replaceitem block ~3 ~-3 ~2 slot.container 4 bone 21
replaceitem block ~3 ~-3 ~2 slot.container 5 ghast_tear 12
replaceitem block ~3 ~-3 ~2 slot.container 9 soul_soil 16
replaceitem block ~3 ~-3 ~2 slot.container 10 gold_ingot 9
replaceitem block ~3 ~-3 ~2 slot.container 11 quartz 18
replaceitem block ~3 ~-3 ~2 slot.container 12 obsidian 11
replaceitem block ~3 ~-3 ~2 slot.container 13 crying_obsidian 10
replaceitem block ~3 ~-3 ~2 slot.container 14 netherite_scrap 6
loot insert ~3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-5 ~5 ~2 ~5 polished_blackstone_bricks []
fill ~-4 ~1 ~-4 ~4 ~3 ~4 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 bone_block []
fill ~0 ~1 ~-5 ~0 ~2 ~5 bone_block []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-5 ~5 ~-5 ~5 ~5 ~5 bone_block []
fill ~-4 ~6 ~-4 ~4 ~7 ~4 glass []
fill ~-3 ~6 ~-3 ~3 ~6 ~3 air []
setblock ~0 ~7 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-7 ~7 ~2 ~7 polished_blackstone_wall []
fill ~-6 ~1 ~-6 ~6 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~2 ~-7 ~4 ~2 bone_block []
fill ~7 ~0 ~2 ~7 ~4 ~2 bone_block []
fill ~-7 ~5 ~2 ~7 ~5 ~2 bone_block []
setblock ~0 ~6 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~3 slot.container 1 bone 16
replaceitem block ~4 ~1 ~3 slot.container 2 ghast_tear 7
replaceitem block ~4 ~1 ~3 slot.container 3 blaze_rod 8
replaceitem block ~4 ~1 ~3 slot.container 4 coal 19
replaceitem block ~4 ~1 ~3 slot.container 5 arrow 24
replaceitem block ~4 ~1 ~3 slot.container 9 netherite_scrap 5
replaceitem block ~4 ~1 ~3 slot.container 10 golden_apple 7
replaceitem block ~4 ~1 ~3 slot.container 11 soul_lantern 12
replaceitem block ~4 ~1 ~3 slot.container 12 bone_block 12
replaceitem block ~4 ~1 ~3 slot.container 13 soul_sand 17
replaceitem block ~4 ~1 ~3 slot.container 14 soul_soil 18
loot insert ~4 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 ghast_tear 10
replaceitem block ~-4 ~1 ~4 slot.container 1 blaze_rod 11
replaceitem block ~-4 ~1 ~4 slot.container 2 coal 22
replaceitem block ~-4 ~1 ~4 slot.container 3 arrow 27
replaceitem block ~-4 ~1 ~4 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 9 netherite_scrap 3
replaceitem block ~-4 ~1 ~4 slot.container 10 golden_apple 5
replaceitem block ~-4 ~1 ~4 slot.container 11 soul_lantern 10
replaceitem block ~-4 ~1 ~4 slot.container 12 bone_block 17
replaceitem block ~-4 ~1 ~4 slot.container 13 soul_sand 22
replaceitem block ~-4 ~1 ~4 slot.container 14 soul_soil 16
loot insert ~-4 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~4 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-3 ~0

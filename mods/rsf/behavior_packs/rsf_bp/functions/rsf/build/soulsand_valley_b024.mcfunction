# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3864/4224 | 主题内编号: b024/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·半地下掩体储藏室 (soulsand_valley_chamber_sunken_bunker)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[battlement_flat] + 地宫[underground_forge] + 外翼[buttress_ribs] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 13x11 | 地上高度 5格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~8 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~8 ~6 air [] replace fire
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 bone_block [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 bone_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (underground_forge) ---
fill ~-4 ~-5 ~-3 ~4 ~-1 ~3 bone_block []
fill ~-3 ~-6 ~-2 ~3 ~-1 ~2 air []
setblock ~-3 ~-6 ~0 blast_furnace []
setblock ~3 ~-6 ~0 smithing_table []
setblock ~0 ~-6 ~2 anvil []
fill ~0 ~-6 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-7 ~0 soul_lantern []
setblock ~3 ~-4 ~2 barrel ["facing_direction"=1]
replaceitem block ~3 ~-4 ~2 slot.container 0 arrow 21
replaceitem block ~3 ~-4 ~2 slot.container 1 ender_pearl 6
replaceitem block ~3 ~-4 ~2 slot.container 2 rotten_flesh 13
replaceitem block ~3 ~-4 ~2 slot.container 3 wither_skeleton_skull 5
replaceitem block ~3 ~-4 ~2 slot.container 4 bone 21
replaceitem block ~3 ~-4 ~2 slot.container 5 ghast_tear 12
replaceitem block ~3 ~-4 ~2 slot.container 9 golden_apple 8
replaceitem block ~3 ~-4 ~2 slot.container 10 soul_lantern 6
replaceitem block ~3 ~-4 ~2 slot.container 11 bone_block 13
replaceitem block ~3 ~-4 ~2 slot.container 12 soul_sand 18
replaceitem block ~3 ~-4 ~2 slot.container 13 soul_soil 19
replaceitem block ~3 ~-4 ~2 slot.container 14 gold_ingot 12
loot insert ~3 ~-4 ~2 loot "rsf/soulsand_valley"
loot insert ~3 ~-4 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 bone_block []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-5 ~5 ~-4 ~5 ~5 ~4 polished_blackstone_bricks []
fill ~-5 ~6 ~-4 ~5 ~6 ~4 nether_brick_fence []
fill ~-4 ~6 ~-3 ~4 ~6 ~3 air []
setblock ~-5 ~6 ~-4 chiseled_nether_bricks []
setblock ~-5 ~7 ~-4 soul_campfire []
setblock ~-5 ~6 ~4 chiseled_nether_bricks []
setblock ~-5 ~7 ~4 soul_campfire []
setblock ~5 ~6 ~-4 chiseled_nether_bricks []
setblock ~5 ~7 ~-4 soul_campfire []
setblock ~5 ~6 ~4 chiseled_nether_bricks []
setblock ~5 ~7 ~4 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (buttress_ribs) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 chiseled_nether_bricks []
fill ~-8 ~0 ~2 ~-8 ~5 ~2 chiseled_nether_bricks []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 chiseled_nether_bricks []
fill ~8 ~0 ~2 ~8 ~5 ~2 chiseled_nether_bricks []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x2) ---
fill ~-7 ~0 ~1 ~-7 ~4 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~4 ~1 bone_block []
fill ~-7 ~5 ~1 ~7 ~5 ~1 bone_block []
setblock ~0 ~6 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~3 composter []
setblock ~2 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 soul_soil 16
replaceitem block ~-4 ~1 ~2 slot.container 10 gold_ingot 9
replaceitem block ~-4 ~1 ~2 slot.container 11 quartz 18
replaceitem block ~-4 ~1 ~2 slot.container 12 obsidian 11
replaceitem block ~-4 ~1 ~2 slot.container 13 crying_obsidian 10
replaceitem block ~-4 ~1 ~2 slot.container 14 netherite_scrap 6
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

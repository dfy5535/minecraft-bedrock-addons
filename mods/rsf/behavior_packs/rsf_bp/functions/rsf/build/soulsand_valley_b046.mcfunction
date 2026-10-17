# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3886/4224 | 主题内编号: b046/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·要塞校场比武演武台 (soulsand_valley_arena_fortress_yard)
# 建筑构造: 主体[fortress_citadel] + 屋顶[battlement_flat] + 地宫[aquifer_cistern] + 外翼[side_watchtower] + 地形专有结构 + 内饰[kit_alchemy]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 blackstone [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 blackstone [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 blackstone_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone_bricks []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

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

# --- [阶段 3] 主体平面与空间几何 (fortress_citadel) ---
fill ~-7 ~1 ~-6 ~7 ~6 ~6 blackstone []
fill ~-6 ~1 ~-5 ~6 ~5 ~5 air []
fill ~-7 ~1 ~-6 ~-6 ~8 ~-5 bone_block []
setblock ~-7 ~9 ~-6 soul_campfire []
fill ~-7 ~1 ~5 ~-6 ~8 ~6 bone_block []
setblock ~-7 ~9 ~5 soul_campfire []
fill ~6 ~1 ~-6 ~7 ~8 ~-5 bone_block []
setblock ~6 ~9 ~-6 soul_campfire []
fill ~6 ~1 ~5 ~7 ~8 ~6 bone_block []
setblock ~6 ~9 ~5 soul_campfire []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 bone_block []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 polished_blackstone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 chiseled_polished_blackstone []
setblock ~-7 ~8 ~-6 soul_campfire []
setblock ~-7 ~7 ~6 chiseled_polished_blackstone []
setblock ~-7 ~8 ~6 soul_campfire []
setblock ~7 ~7 ~-6 chiseled_polished_blackstone []
setblock ~7 ~8 ~-6 soul_campfire []
setblock ~7 ~7 ~6 chiseled_polished_blackstone []
setblock ~7 ~8 ~6 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (side_watchtower) ---
fill ~8 ~0 ~-2 ~10 ~8 ~2 polished_blackstone_bricks []
fill ~8 ~1 ~-1 ~9 ~7 ~1 air []
fill ~7 ~1 ~0 ~8 ~2 ~0 air []
setblock ~9 ~9 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~0 ~0 ~-9 ~6 ~0 bone_block []
fill ~9 ~0 ~0 ~9 ~6 ~0 bone_block []
fill ~-9 ~7 ~0 ~9 ~7 ~0 bone_block []
setblock ~0 ~8 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_alchemy) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-1 ~1 ~4 brewing_stand []
setblock ~1 ~1 ~4 cauldron []
setblock ~0 ~1 ~4 crying_obsidian []
setblock ~-5 ~1 ~0 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~4 slot.container 0 rotten_flesh 16
replaceitem block ~-6 ~1 ~4 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~4 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~4 slot.container 3 ghast_tear 7
replaceitem block ~-6 ~1 ~4 slot.container 4 blaze_rod 8
replaceitem block ~-6 ~1 ~4 slot.container 5 coal 19
replaceitem block ~-6 ~1 ~4 slot.container 9 golden_apple 3
replaceitem block ~-6 ~1 ~4 slot.container 10 soul_lantern 8
replaceitem block ~-6 ~1 ~4 slot.container 11 bone_block 15
replaceitem block ~-6 ~1 ~4 slot.container 12 soul_sand 20
replaceitem block ~-6 ~1 ~4 slot.container 13 soul_soil 21
replaceitem block ~-6 ~1 ~4 slot.container 14 gold_ingot 14
loot insert ~-6 ~1 ~4 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1

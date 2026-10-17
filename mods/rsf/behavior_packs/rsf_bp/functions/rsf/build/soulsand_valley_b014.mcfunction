# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3854/4224 | 主题内编号: b014/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·暗渠蓄水池秘境地牢 (soulsand_valley_dungeon_flooded_cistern)
# 建筑构造: 主体[u_courtyard] + 屋顶[pyramid_stepped] + 地宫[aquifer_cistern] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 5格 | 地下深度 6格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~8 ~7 air [] replace fire
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 blackstone [] replace air
fill ~-7 ~-7 ~-6 ~7 ~-1 ~6 blackstone [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 blackstone_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 bone_block []
fill ~-4 ~-7 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 lava []
fill ~0 ~-7 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-4 ~-5 ~3 barrel ["facing_direction"=1]
replaceitem block ~-4 ~-5 ~3 slot.container 0 bone 21
replaceitem block ~-4 ~-5 ~3 slot.container 1 ghast_tear 12
replaceitem block ~-4 ~-5 ~3 slot.container 2 blaze_rod 13
replaceitem block ~-4 ~-5 ~3 slot.container 3 coal 16
replaceitem block ~-4 ~-5 ~3 slot.container 4 arrow 21
replaceitem block ~-4 ~-5 ~3 slot.container 5 ender_pearl 6
replaceitem block ~-4 ~-5 ~3 slot.container 9 golden_apple 7
replaceitem block ~-4 ~-5 ~3 slot.container 10 soul_lantern 12
replaceitem block ~-4 ~-5 ~3 slot.container 11 bone_block 12
replaceitem block ~-4 ~-5 ~3 slot.container 12 soul_sand 17
replaceitem block ~-4 ~-5 ~3 slot.container 13 soul_soil 18
replaceitem block ~-4 ~-5 ~3 slot.container 14 gold_ingot 11
loot insert ~-4 ~-5 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~-5 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~5 ~5 blackstone []
fill ~-5 ~1 ~-4 ~5 ~4 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~5 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 soul_soil []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 bone_block []
fill ~-5 ~9 ~-4 ~5 ~9 ~4 polished_blackstone_bricks []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 ancient_debris []
setblock ~0 ~11 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 bone_block []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_campfire []
setblock ~2 ~4 ~-8 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~2 ~-8 ~4 ~2 bone_block []
fill ~8 ~0 ~2 ~8 ~4 ~2 bone_block []
fill ~-8 ~5 ~2 ~8 ~5 ~2 bone_block []
setblock ~0 ~6 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~4 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 2 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 3 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 4 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 5 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 9 soul_soil 20
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 13
replaceitem block ~-5 ~1 ~3 slot.container 11 quartz 22
replaceitem block ~-5 ~1 ~3 slot.container 12 obsidian 8
replaceitem block ~-5 ~1 ~3 slot.container 13 crying_obsidian 7
replaceitem block ~-5 ~1 ~3 slot.container 14 netherite_scrap 3
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-5 ~0

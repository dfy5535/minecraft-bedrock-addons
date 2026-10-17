# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3956/4224 | 主题内编号: b116/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·U型围合秘密花园驿站 (soulsand_valley_conservatory_u_garden)
# 建筑构造: 主体[u_courtyard] + 屋顶[dome_glass] + 地宫[catacomb_crypt] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bone_block [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 bone_block [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 blackstone []
fill ~-6 ~-7 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-7 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-7 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-7 ~0 soul_campfire []
setblock ~5 ~-7 ~0 soul_campfire []
setblock ~0 ~-5 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-5 ~4 slot.container 0 bone 21
replaceitem block ~0 ~-5 ~4 slot.container 1 ghast_tear 12
replaceitem block ~0 ~-5 ~4 slot.container 2 blaze_rod 13
replaceitem block ~0 ~-5 ~4 slot.container 3 coal 16
replaceitem block ~0 ~-5 ~4 slot.container 4 arrow 21
replaceitem block ~0 ~-5 ~4 slot.container 5 ender_pearl 6
replaceitem block ~0 ~-5 ~4 slot.container 9 soul_soil 22
replaceitem block ~0 ~-5 ~4 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-5 ~4 slot.container 11 quartz 17
replaceitem block ~0 ~-5 ~4 slot.container 12 obsidian 10
replaceitem block ~0 ~-5 ~4 slot.container 13 crying_obsidian 9
replaceitem block ~0 ~-5 ~4 slot.container 14 netherite_scrap 5
loot insert ~0 ~-5 ~4 loot "rsf/soulsand_valley"
loot insert ~0 ~-5 ~4 loot "chests/nether_bridge"
setblock ~0 ~-5 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-5 ~-4 slot.container 0 bone 19
replaceitem block ~0 ~-5 ~-4 slot.container 1 ghast_tear 10
replaceitem block ~0 ~-5 ~-4 slot.container 2 blaze_rod 11
replaceitem block ~0 ~-5 ~-4 slot.container 3 coal 22
replaceitem block ~0 ~-5 ~-4 slot.container 4 arrow 27
replaceitem block ~0 ~-5 ~-4 slot.container 5 ender_pearl 4
replaceitem block ~0 ~-5 ~-4 slot.container 9 soul_soil 21
replaceitem block ~0 ~-5 ~-4 slot.container 10 gold_ingot 14
replaceitem block ~0 ~-5 ~-4 slot.container 11 quartz 16
replaceitem block ~0 ~-5 ~-4 slot.container 12 obsidian 9
replaceitem block ~0 ~-5 ~-4 slot.container 13 crying_obsidian 8
replaceitem block ~0 ~-5 ~-4 slot.container 14 netherite_scrap 4
loot insert ~0 ~-5 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-5 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 bone_block []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 polished_blackstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~6 ~-5 ~6 ~6 ~5 polished_blackstone_bricks []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 glass []
fill ~-4 ~7 ~-3 ~4 ~7 ~3 air []
setblock ~0 ~8 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-8 ~2 ~4 ~-6 polished_blackstone_bricks []
fill ~-1 ~1 ~-8 ~1 ~3 ~-6 air []
setblock ~-2 ~4 ~-8 soul_campfire []
setblock ~2 ~4 ~-8 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-1 ~-8 ~6 ~-1 bone_block []
fill ~8 ~0 ~-1 ~8 ~6 ~-1 bone_block []
fill ~-8 ~7 ~-1 ~8 ~7 ~-1 bone_block []
setblock ~0 ~8 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~5 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-5 ~1 ~3 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 5 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 9 golden_apple 3
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_lantern 8
replaceitem block ~-5 ~1 ~3 slot.container 11 bone_block 15
replaceitem block ~-5 ~1 ~3 slot.container 12 soul_sand 20
replaceitem block ~-5 ~1 ~3 slot.container 13 soul_soil 21
replaceitem block ~-5 ~1 ~3 slot.container 14 gold_ingot 14
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~2 ~0

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3857/4224 | 主题内编号: b017/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双坡顶皇家藏宝室 (soulsand_valley_chamber_gabled_treasury)
# 建筑构造: 主体[rect_hall] + 屋顶[gabled_stairs] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_tailor]
# 建筑规模: 平面 13x13 | 地上高度 6格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace lava
fill ~-7 ~0 ~-7 ~7 ~9 ~7 air [] replace fire
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 nether_brick [] replace air
fill ~-6 ~-4 ~-6 ~6 ~-1 ~6 nether_brick [] replace lava
fill ~-6 ~0 ~-6 ~6 ~0 ~6 nether_brick_slab [] replace air
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone []
fill ~-4 ~0 ~-4 ~4 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-4 ~-3 ~-4 ~4 ~-1 ~4 blackstone []
fill ~-3 ~-4 ~-3 ~3 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~3 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~3 ~-2 ~3 slot.container 0 ender_pearl 6
replaceitem block ~3 ~-2 ~3 slot.container 1 rotten_flesh 13
replaceitem block ~3 ~-2 ~3 slot.container 2 wither_skeleton_skull 5
replaceitem block ~3 ~-2 ~3 slot.container 3 bone 21
replaceitem block ~3 ~-2 ~3 slot.container 4 ghast_tear 12
replaceitem block ~3 ~-2 ~3 slot.container 5 blaze_rod 13
replaceitem block ~3 ~-2 ~3 slot.container 9 obsidian 11
replaceitem block ~3 ~-2 ~3 slot.container 10 crying_obsidian 10
replaceitem block ~3 ~-2 ~3 slot.container 11 netherite_scrap 6
replaceitem block ~3 ~-2 ~3 slot.container 12 golden_apple 8
replaceitem block ~3 ~-2 ~3 slot.container 13 soul_lantern 6
replaceitem block ~3 ~-2 ~3 slot.container 14 bone_block 13
loot insert ~3 ~-2 ~3 loot "rsf/soulsand_valley"
loot insert ~3 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-5 ~1 ~-5 ~5 ~6 ~5 nether_brick []
fill ~-4 ~1 ~-4 ~4 ~5 ~4 air []
fill ~-5 ~1 ~-5 ~-5 ~6 ~-5 basalt []
fill ~-5 ~1 ~5 ~-5 ~6 ~5 basalt []
fill ~5 ~1 ~-5 ~5 ~6 ~-5 basalt []
fill ~5 ~1 ~5 ~5 ~6 ~5 basalt []
fill ~0 ~1 ~-5 ~0 ~2 ~-5 air []
setblock ~-5 ~2 ~0 nether_brick_fence []
setblock ~5 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-6 ~7 ~-6 ~-6 ~7 ~6 polished_blackstone_stairs ["weirdo_direction"=0]
fill ~6 ~7 ~-6 ~6 ~7 ~6 polished_blackstone_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~-5 ~8 ~5 polished_blackstone_stairs ["weirdo_direction"=0]
fill ~5 ~8 ~-5 ~5 ~8 ~5 polished_blackstone_stairs ["weirdo_direction"=1]
fill ~-4 ~8 ~-5 ~4 ~8 ~5 nether_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 bone_block []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x5) ---
fill ~-7 ~0 ~0 ~-7 ~7 ~0 bone_block []
fill ~7 ~0 ~0 ~7 ~7 ~0 bone_block []
fill ~-7 ~8 ~0 ~7 ~8 ~0 bone_block []
setblock ~0 ~9 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_tailor) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-4 ~1 ~4 loom []
setblock ~0 ~1 ~4 crafting_table []
setblock ~4 ~1 ~0 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~3 slot.container 0 ghast_tear 7
replaceitem block ~4 ~1 ~3 slot.container 1 blaze_rod 8
replaceitem block ~4 ~1 ~3 slot.container 2 coal 19
replaceitem block ~4 ~1 ~3 slot.container 3 arrow 24
replaceitem block ~4 ~1 ~3 slot.container 4 ender_pearl 9
replaceitem block ~4 ~1 ~3 slot.container 5 rotten_flesh 16
replaceitem block ~4 ~1 ~3 slot.container 9 soul_sand 16
replaceitem block ~4 ~1 ~3 slot.container 10 soul_soil 17
replaceitem block ~4 ~1 ~3 slot.container 11 gold_ingot 10
replaceitem block ~4 ~1 ~3 slot.container 12 quartz 19
replaceitem block ~4 ~1 ~3 slot.container 13 obsidian 12
replaceitem block ~4 ~1 ~3 slot.container 14 crying_obsidian 11
loot insert ~4 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~4 slot.container 0 coal 22
replaceitem block ~-4 ~1 ~4 slot.container 1 arrow 27
replaceitem block ~-4 ~1 ~4 slot.container 2 ender_pearl 4
replaceitem block ~-4 ~1 ~4 slot.container 3 rotten_flesh 11
replaceitem block ~-4 ~1 ~4 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~4 slot.container 5 bone 19
replaceitem block ~-4 ~1 ~4 slot.container 9 soul_sand 21
replaceitem block ~-4 ~1 ~4 slot.container 10 soul_soil 22
replaceitem block ~-4 ~1 ~4 slot.container 11 gold_ingot 8
replaceitem block ~-4 ~1 ~4 slot.container 12 quartz 17
replaceitem block ~-4 ~1 ~4 slot.container 13 obsidian 10
replaceitem block ~-4 ~1 ~4 slot.container 14 crying_obsidian 9
loot insert ~-4 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~4 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

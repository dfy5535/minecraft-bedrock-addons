# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3905/4224 | 主题内编号: b065/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·断柱露天古神庙废墟 (soulsand_valley_ruin_fallen_temple)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_ritual]
# 建筑规模: 平面 15x15 | 地上高度 6格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-8 ~8 ~9 ~8 air [] replace lava
fill ~-8 ~0 ~-8 ~8 ~9 ~8 air [] replace fire
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 nether_brick [] replace air
fill ~-7 ~-4 ~-7 ~7 ~-1 ~7 nether_brick [] replace lava
fill ~-7 ~0 ~-7 ~7 ~0 ~7 nether_brick_slab [] replace air
fill ~-6 ~0 ~-6 ~6 ~0 ~6 polished_blackstone []
fill ~-5 ~0 ~-5 ~5 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 bone_block []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 bone_block []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-2 ~-3 slot.container 2 wither_skeleton_skull 5
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 21
replaceitem block ~0 ~-2 ~-3 slot.container 4 ghast_tear 12
replaceitem block ~0 ~-2 ~-3 slot.container 5 blaze_rod 13
replaceitem block ~0 ~-2 ~-3 slot.container 9 obsidian 11
replaceitem block ~0 ~-2 ~-3 slot.container 10 crying_obsidian 10
replaceitem block ~0 ~-2 ~-3 slot.container 11 netherite_scrap 6
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 soul_lantern 6
replaceitem block ~0 ~-2 ~-3 slot.container 14 bone_block 13
loot insert ~0 ~-2 ~-3 loot "rsf/soulsand_valley"
loot insert ~0 ~-2 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 bone_block []
fill ~-6 ~1 ~-6 ~-6 ~5 ~-6 basalt []
fill ~-6 ~1 ~6 ~-6 ~5 ~6 basalt []
fill ~-4 ~1 ~-6 ~-4 ~5 ~-6 basalt []
fill ~-4 ~1 ~6 ~-4 ~5 ~6 basalt []
fill ~-2 ~1 ~-6 ~-2 ~5 ~-6 basalt []
fill ~-2 ~1 ~6 ~-2 ~5 ~6 basalt []
fill ~0 ~1 ~-6 ~0 ~5 ~-6 basalt []
fill ~0 ~1 ~6 ~0 ~5 ~6 basalt []
fill ~2 ~1 ~-6 ~2 ~5 ~-6 basalt []
fill ~2 ~1 ~6 ~2 ~5 ~6 basalt []
fill ~4 ~1 ~-6 ~4 ~5 ~-6 basalt []
fill ~4 ~1 ~6 ~4 ~5 ~6 basalt []
fill ~6 ~1 ~-6 ~6 ~5 ~-6 basalt []
fill ~6 ~1 ~6 ~6 ~5 ~6 basalt []
fill ~-6 ~1 ~-4 ~-6 ~5 ~-4 basalt []
fill ~6 ~1 ~-4 ~6 ~5 ~-4 basalt []
fill ~-6 ~1 ~-2 ~-6 ~5 ~-2 basalt []
fill ~6 ~1 ~-2 ~6 ~5 ~-2 basalt []
fill ~-6 ~1 ~0 ~-6 ~5 ~0 basalt []
fill ~6 ~1 ~0 ~6 ~5 ~0 basalt []
fill ~-6 ~1 ~2 ~-6 ~5 ~2 basalt []
fill ~6 ~1 ~2 ~6 ~5 ~2 basalt []
fill ~-6 ~1 ~4 ~-6 ~5 ~4 basalt []
fill ~6 ~1 ~4 ~6 ~5 ~4 basalt []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-6 ~6 ~-6 ~6 ~6 ~6 nether_brick_slab []
fill ~-1 ~5 ~-1 ~2 ~6 ~2 air []
fill ~-6 ~5 ~-1 ~-6 ~6 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-8 ~0 ~-8 ~-8 ~4 ~-8 basalt []
setblock ~-8 ~5 ~-8 soul_lantern []
fill ~-8 ~0 ~8 ~-8 ~4 ~8 basalt []
setblock ~-8 ~5 ~8 soul_lantern []
fill ~8 ~0 ~-8 ~8 ~4 ~-8 basalt []
setblock ~8 ~5 ~-8 soul_lantern []
fill ~8 ~0 ~8 ~8 ~4 ~8 basalt []
setblock ~8 ~5 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~1 ~-8 ~5 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~5 ~1 bone_block []
fill ~-8 ~6 ~1 ~8 ~6 ~1 bone_block []
setblock ~0 ~7 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_ritual) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 gilded_blackstone []
setblock ~0 ~2 ~0 soul_lantern []
setblock ~-2 ~1 ~2 brewing_stand []
setblock ~2 ~1 ~2 cauldron []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~4 slot.container 0 ghast_tear 7
replaceitem block ~5 ~1 ~4 slot.container 1 blaze_rod 8
replaceitem block ~5 ~1 ~4 slot.container 2 coal 19
replaceitem block ~5 ~1 ~4 slot.container 3 arrow 24
replaceitem block ~5 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~5 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~5 ~1 ~4 slot.container 9 obsidian 14
replaceitem block ~5 ~1 ~4 slot.container 10 crying_obsidian 6
replaceitem block ~5 ~1 ~4 slot.container 11 netherite_scrap 2
replaceitem block ~5 ~1 ~4 slot.container 12 golden_apple 4
replaceitem block ~5 ~1 ~4 slot.container 13 soul_lantern 9
replaceitem block ~5 ~1 ~4 slot.container 14 bone_block 16
loot insert ~5 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~5 slot.container 0 coal 22
replaceitem block ~-5 ~1 ~5 slot.container 1 arrow 27
replaceitem block ~-5 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-5 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-5 ~1 ~5 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~5 slot.container 5 bone 19
replaceitem block ~-5 ~1 ~5 slot.container 9 obsidian 12
replaceitem block ~-5 ~1 ~5 slot.container 10 crying_obsidian 11
replaceitem block ~-5 ~1 ~5 slot.container 11 netherite_scrap 7
replaceitem block ~-5 ~1 ~5 slot.container 12 golden_apple 2
replaceitem block ~-5 ~1 ~5 slot.container 13 soul_lantern 7
replaceitem block ~-5 ~1 ~5 slot.container 14 bone_block 14
loot insert ~-5 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~5 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~-2 ~0

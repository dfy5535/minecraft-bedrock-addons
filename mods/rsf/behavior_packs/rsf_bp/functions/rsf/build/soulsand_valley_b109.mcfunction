# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3949/4224 | 主题内编号: b109/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·环柱能量矩阵奥术厅 (soulsand_valley_arcane_rotunda_nexus)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 15x13 | 地上高度 8格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~11 ~7 air [] replace fire
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick [] replace air
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 blackstone []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-4 ~0 soul_lantern []
setblock ~4 ~-2 ~3 barrel ["facing_direction"=1]
replaceitem block ~4 ~-2 ~3 slot.container 0 ghast_tear 12
replaceitem block ~4 ~-2 ~3 slot.container 1 blaze_rod 13
replaceitem block ~4 ~-2 ~3 slot.container 2 coal 16
replaceitem block ~4 ~-2 ~3 slot.container 3 arrow 21
replaceitem block ~4 ~-2 ~3 slot.container 4 ender_pearl 6
replaceitem block ~4 ~-2 ~3 slot.container 5 rotten_flesh 13
replaceitem block ~4 ~-2 ~3 slot.container 9 soul_sand 20
replaceitem block ~4 ~-2 ~3 slot.container 10 soul_soil 21
replaceitem block ~4 ~-2 ~3 slot.container 11 gold_ingot 14
replaceitem block ~4 ~-2 ~3 slot.container 12 quartz 16
replaceitem block ~4 ~-2 ~3 slot.container 13 obsidian 9
replaceitem block ~4 ~-2 ~3 slot.container 14 crying_obsidian 8
loot insert ~4 ~-2 ~3 loot "rsf/soulsand_valley"
loot insert ~4 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 bone_block []
fill ~-6 ~1 ~-5 ~-6 ~7 ~-5 basalt []
fill ~-6 ~1 ~5 ~-6 ~7 ~5 basalt []
fill ~-4 ~1 ~-5 ~-4 ~7 ~-5 basalt []
fill ~-4 ~1 ~5 ~-4 ~7 ~5 basalt []
fill ~-2 ~1 ~-5 ~-2 ~7 ~-5 basalt []
fill ~-2 ~1 ~5 ~-2 ~7 ~5 basalt []
fill ~0 ~1 ~-5 ~0 ~7 ~-5 basalt []
fill ~0 ~1 ~5 ~0 ~7 ~5 basalt []
fill ~2 ~1 ~-5 ~2 ~7 ~-5 basalt []
fill ~2 ~1 ~5 ~2 ~7 ~5 basalt []
fill ~4 ~1 ~-5 ~4 ~7 ~-5 basalt []
fill ~4 ~1 ~5 ~4 ~7 ~5 basalt []
fill ~6 ~1 ~-5 ~6 ~7 ~-5 basalt []
fill ~6 ~1 ~5 ~6 ~7 ~5 basalt []
fill ~-6 ~1 ~-3 ~-6 ~7 ~-3 basalt []
fill ~6 ~1 ~-3 ~6 ~7 ~-3 basalt []
fill ~-6 ~1 ~-1 ~-6 ~7 ~-1 basalt []
fill ~6 ~1 ~-1 ~6 ~7 ~-1 basalt []
fill ~-6 ~1 ~1 ~-6 ~7 ~1 basalt []
fill ~6 ~1 ~1 ~6 ~7 ~1 basalt []
fill ~-6 ~1 ~3 ~-6 ~7 ~3 basalt []
fill ~6 ~1 ~3 ~6 ~7 ~3 basalt []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 polished_blackstone_bricks []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 basalt []
setblock ~0 ~4 ~-7 ancient_debris []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 basalt []
setblock ~0 ~4 ~7 ancient_debris []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 basalt []
setblock ~-8 ~4 ~0 ancient_debris []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 basalt []
setblock ~8 ~4 ~0 ancient_debris []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~2 ~-8 ~4 ~2 bone_block []
fill ~8 ~0 ~2 ~8 ~4 ~2 bone_block []
fill ~-8 ~5 ~2 ~8 ~5 ~2 bone_block []
setblock ~0 ~6 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gilded_blackstone []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 2 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~3 slot.container 3 bone 16
replaceitem block ~5 ~1 ~3 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 9 netherite_scrap 2
replaceitem block ~5 ~1 ~3 slot.container 10 golden_apple 4
replaceitem block ~5 ~1 ~3 slot.container 11 soul_lantern 9
replaceitem block ~5 ~1 ~3 slot.container 12 bone_block 16
replaceitem block ~5 ~1 ~3 slot.container 13 soul_sand 21
replaceitem block ~5 ~1 ~3 slot.container 14 soul_soil 22
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 19
replaceitem block ~-5 ~1 ~4 slot.container 2 ghast_tear 10
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 4 coal 22
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 9 netherite_scrap 7
replaceitem block ~-5 ~1 ~4 slot.container 10 golden_apple 2
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_lantern 7
replaceitem block ~-5 ~1 ~4 slot.container 12 bone_block 14
replaceitem block ~-5 ~1 ~4 slot.container 13 soul_sand 19
replaceitem block ~-5 ~1 ~4 slot.container 14 soul_soil 20
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

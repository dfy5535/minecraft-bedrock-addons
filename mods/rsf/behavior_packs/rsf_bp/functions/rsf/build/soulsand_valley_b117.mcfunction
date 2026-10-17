# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3957/4224 | 主题内编号: b117/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·环柱生态标本采集馆 (soulsand_valley_conservatory_rotunda_bio)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[dome_glass] + 地宫[secret_cellar] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_armory]
# 建筑规模: 平面 15x13 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~10 ~7 air [] replace fire
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
replaceitem block ~4 ~-2 ~3 slot.container 9 obsidian 13
replaceitem block ~4 ~-2 ~3 slot.container 10 crying_obsidian 12
replaceitem block ~4 ~-2 ~3 slot.container 11 netherite_scrap 1
replaceitem block ~4 ~-2 ~3 slot.container 12 golden_apple 3
replaceitem block ~4 ~-2 ~3 slot.container 13 soul_lantern 8
replaceitem block ~4 ~-2 ~3 slot.container 14 bone_block 15
loot insert ~4 ~-2 ~3 loot "rsf/soulsand_valley"
loot insert ~4 ~-2 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bone_block []
fill ~-6 ~1 ~-5 ~-6 ~6 ~-5 basalt []
fill ~-6 ~1 ~5 ~-6 ~6 ~5 basalt []
fill ~-4 ~1 ~-5 ~-4 ~6 ~-5 basalt []
fill ~-4 ~1 ~5 ~-4 ~6 ~5 basalt []
fill ~-2 ~1 ~-5 ~-2 ~6 ~-5 basalt []
fill ~-2 ~1 ~5 ~-2 ~6 ~5 basalt []
fill ~0 ~1 ~-5 ~0 ~6 ~-5 basalt []
fill ~0 ~1 ~5 ~0 ~6 ~5 basalt []
fill ~2 ~1 ~-5 ~2 ~6 ~-5 basalt []
fill ~2 ~1 ~5 ~2 ~6 ~5 basalt []
fill ~4 ~1 ~-5 ~4 ~6 ~-5 basalt []
fill ~4 ~1 ~5 ~4 ~6 ~5 basalt []
fill ~6 ~1 ~-5 ~6 ~6 ~-5 basalt []
fill ~6 ~1 ~5 ~6 ~6 ~5 basalt []
fill ~-6 ~1 ~-3 ~-6 ~6 ~-3 basalt []
fill ~6 ~1 ~-3 ~6 ~6 ~-3 basalt []
fill ~-6 ~1 ~-1 ~-6 ~6 ~-1 basalt []
fill ~6 ~1 ~-1 ~6 ~6 ~-1 basalt []
fill ~-6 ~1 ~1 ~-6 ~6 ~1 basalt []
fill ~6 ~1 ~1 ~6 ~6 ~1 basalt []
fill ~-6 ~1 ~3 ~-6 ~6 ~3 basalt []
fill ~6 ~1 ~3 ~6 ~6 ~3 basalt []

# --- [阶段 4] 屋顶与天际线构造 (dome_glass) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 bone_block []
fill ~-5 ~8 ~-4 ~5 ~9 ~4 glass []
fill ~-4 ~8 ~-3 ~4 ~8 ~3 air []
setblock ~0 ~9 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x5) ---
fill ~-8 ~0 ~0 ~-8 ~7 ~0 bone_block []
fill ~8 ~0 ~0 ~8 ~7 ~0 bone_block []
fill ~-8 ~8 ~0 ~8 ~8 ~0 bone_block []
setblock ~0 ~9 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_armory) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-5 ~1 ~3 smithing_table []
setblock ~-4 ~1 ~3 anvil []
setblock ~4 ~1 ~3 grindstone []
setblock ~0 ~1 ~0 target []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 2 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~3 slot.container 3 bone 16
replaceitem block ~5 ~1 ~3 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 9 soul_sand 18
replaceitem block ~5 ~1 ~3 slot.container 10 soul_soil 19
replaceitem block ~5 ~1 ~3 slot.container 11 gold_ingot 12
replaceitem block ~5 ~1 ~3 slot.container 12 quartz 21
replaceitem block ~5 ~1 ~3 slot.container 13 obsidian 14
replaceitem block ~5 ~1 ~3 slot.container 14 crying_obsidian 6
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 19
replaceitem block ~-5 ~1 ~4 slot.container 2 ghast_tear 10
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 4 coal 22
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_sand 16
replaceitem block ~-5 ~1 ~4 slot.container 10 soul_soil 17
replaceitem block ~-5 ~1 ~4 slot.container 11 gold_ingot 10
replaceitem block ~-5 ~1 ~4 slot.container 12 quartz 19
replaceitem block ~-5 ~1 ~4 slot.container 13 obsidian 12
replaceitem block ~-5 ~1 ~4 slot.container 14 crying_obsidian 11
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

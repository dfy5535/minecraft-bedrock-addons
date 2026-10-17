# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3885/4224 | 主题内编号: b045/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·十二柱神殿试炼场 (soulsand_valley_arena_pillared_pantheon)
# 建筑构造: 主体[pillared_rotunda] + 屋顶[open_colonnade] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~10 ~8 air [] replace fire
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 nether_brick [] replace air
fill ~-8 ~-4 ~-7 ~8 ~-1 ~7 nether_brick [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 nether_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 bone_block []
fill ~-5 ~-6 ~-1 ~5 ~-2 ~1 air []
fill ~-1 ~-6 ~-4 ~1 ~-2 ~4 air []
fill ~0 ~-6 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-4 ~-6 ~0 soul_campfire []
setblock ~4 ~-6 ~0 soul_campfire []
setblock ~0 ~-4 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-4 ~3 slot.container 0 blaze_rod 13
replaceitem block ~0 ~-4 ~3 slot.container 1 coal 16
replaceitem block ~0 ~-4 ~3 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~3 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~3 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-4 ~3 slot.container 5 wither_skeleton_skull 5
replaceitem block ~0 ~-4 ~3 slot.container 9 soul_soil 16
replaceitem block ~0 ~-4 ~3 slot.container 10 gold_ingot 9
replaceitem block ~0 ~-4 ~3 slot.container 11 quartz 18
replaceitem block ~0 ~-4 ~3 slot.container 12 obsidian 11
replaceitem block ~0 ~-4 ~3 slot.container 13 crying_obsidian 10
replaceitem block ~0 ~-4 ~3 slot.container 14 netherite_scrap 6
loot insert ~0 ~-4 ~3 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~3 loot "chests/nether_bridge"
setblock ~0 ~-4 ~-3 barrel ["facing_direction"=1]
replaceitem block ~0 ~-4 ~-3 slot.container 0 blaze_rod 11
replaceitem block ~0 ~-4 ~-3 slot.container 1 coal 22
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 27
replaceitem block ~0 ~-4 ~-3 slot.container 3 ender_pearl 4
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 11
replaceitem block ~0 ~-4 ~-3 slot.container 5 wither_skeleton_skull 3
replaceitem block ~0 ~-4 ~-3 slot.container 9 soul_soil 22
replaceitem block ~0 ~-4 ~-3 slot.container 10 gold_ingot 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 quartz 17
replaceitem block ~0 ~-4 ~-3 slot.container 12 obsidian 10
replaceitem block ~0 ~-4 ~-3 slot.container 13 crying_obsidian 9
replaceitem block ~0 ~-4 ~-3 slot.container 14 netherite_scrap 5
loot insert ~0 ~-4 ~-3 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (pillared_rotunda) ---
fill ~-7 ~7 ~-6 ~7 ~7 ~6 bone_block []
fill ~-7 ~1 ~-6 ~-7 ~6 ~-6 basalt []
fill ~-7 ~1 ~6 ~-7 ~6 ~6 basalt []
fill ~-5 ~1 ~-6 ~-5 ~6 ~-6 basalt []
fill ~-5 ~1 ~6 ~-5 ~6 ~6 basalt []
fill ~-3 ~1 ~-6 ~-3 ~6 ~-6 basalt []
fill ~-3 ~1 ~6 ~-3 ~6 ~6 basalt []
fill ~-1 ~1 ~-6 ~-1 ~6 ~-6 basalt []
fill ~-1 ~1 ~6 ~-1 ~6 ~6 basalt []
fill ~1 ~1 ~-6 ~1 ~6 ~-6 basalt []
fill ~1 ~1 ~6 ~1 ~6 ~6 basalt []
fill ~3 ~1 ~-6 ~3 ~6 ~-6 basalt []
fill ~3 ~1 ~6 ~3 ~6 ~6 basalt []
fill ~5 ~1 ~-6 ~5 ~6 ~-6 basalt []
fill ~5 ~1 ~6 ~5 ~6 ~6 basalt []
fill ~7 ~1 ~-6 ~7 ~6 ~-6 basalt []
fill ~7 ~1 ~6 ~7 ~6 ~6 basalt []
fill ~-7 ~1 ~-4 ~-7 ~6 ~-4 basalt []
fill ~7 ~1 ~-4 ~7 ~6 ~-4 basalt []
fill ~-7 ~1 ~-2 ~-7 ~6 ~-2 basalt []
fill ~7 ~1 ~-2 ~7 ~6 ~-2 basalt []
fill ~-7 ~1 ~0 ~-7 ~6 ~0 basalt []
fill ~7 ~1 ~0 ~7 ~6 ~0 basalt []
fill ~-7 ~1 ~2 ~-7 ~6 ~2 basalt []
fill ~7 ~1 ~2 ~7 ~6 ~2 basalt []
fill ~-7 ~1 ~4 ~-7 ~6 ~4 basalt []
fill ~7 ~1 ~4 ~7 ~6 ~4 basalt []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~7 ~-6 ~-7 ~9 ~-6 basalt []
setblock ~-7 ~10 ~-6 soul_lantern []
fill ~-7 ~7 ~6 ~-7 ~9 ~6 basalt []
setblock ~-7 ~10 ~6 soul_lantern []
fill ~7 ~7 ~-6 ~7 ~9 ~-6 basalt []
setblock ~7 ~10 ~-6 soul_lantern []
fill ~7 ~7 ~6 ~7 ~9 ~6 basalt []
setblock ~7 ~10 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-8 ~0 ~3 ~-8 basalt []
setblock ~0 ~4 ~-8 ancient_debris []
setblock ~0 ~5 ~-8 soul_lantern []
fill ~0 ~0 ~8 ~0 ~3 ~8 basalt []
setblock ~0 ~4 ~8 ancient_debris []
setblock ~0 ~5 ~8 soul_lantern []
fill ~-9 ~0 ~0 ~-9 ~3 ~0 basalt []
setblock ~-9 ~4 ~0 ancient_debris []
setblock ~-9 ~5 ~0 soul_lantern []
fill ~9 ~0 ~0 ~9 ~3 ~0 basalt []
setblock ~9 ~4 ~0 ancient_debris []
setblock ~9 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x8x3) ---
fill ~-9 ~0 ~-1 ~-9 ~5 ~-1 bone_block []
fill ~9 ~0 ~-1 ~9 ~5 ~-1 bone_block []
fill ~-9 ~6 ~-1 ~9 ~6 ~-1 bone_block []
setblock ~0 ~7 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gilded_blackstone []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 1 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 2 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~4 slot.container 3 bone 16
replaceitem block ~6 ~1 ~4 slot.container 4 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 5 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 9 obsidian 8
replaceitem block ~6 ~1 ~4 slot.container 10 crying_obsidian 7
replaceitem block ~6 ~1 ~4 slot.container 11 netherite_scrap 3
replaceitem block ~6 ~1 ~4 slot.container 12 golden_apple 5
replaceitem block ~6 ~1 ~4 slot.container 13 soul_lantern 10
replaceitem block ~6 ~1 ~4 slot.container 14 bone_block 17
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~5 slot.container 1 bone 19
replaceitem block ~-6 ~1 ~5 slot.container 2 ghast_tear 10
replaceitem block ~-6 ~1 ~5 slot.container 3 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 4 coal 22
replaceitem block ~-6 ~1 ~5 slot.container 5 arrow 27
replaceitem block ~-6 ~1 ~5 slot.container 9 obsidian 13
replaceitem block ~-6 ~1 ~5 slot.container 10 crying_obsidian 12
replaceitem block ~-6 ~1 ~5 slot.container 11 netherite_scrap 1
replaceitem block ~-6 ~1 ~5 slot.container 12 golden_apple 3
replaceitem block ~-6 ~1 ~5 slot.container 13 soul_lantern 8
replaceitem block ~-6 ~1 ~5 slot.container 14 bone_block 15
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3961/4224 | 主题内编号: b121/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·卫城廊柱王座大殿与地宫 (soulsand_valley_grand_acropolis_palace)
# 建筑构造: 主体[grand_acropolis] + 屋顶[pagoda_double] + 地宫[catacomb_crypt] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 8格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~11 ~8 air [] replace fire
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 nether_brick [] replace air
fill ~-8 ~-5 ~-7 ~8 ~-1 ~7 nether_brick [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 nether_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 polished_blackstone []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-7 ~-4 ~-6 ~7 ~-1 ~6 nether_brick []
fill ~-6 ~-5 ~-1 ~6 ~-2 ~1 air []
fill ~-1 ~-5 ~-5 ~1 ~-2 ~5 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-5 ~-5 ~0 soul_lantern []
setblock ~5 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~4 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~4 slot.container 0 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~4 slot.container 1 bone 21
replaceitem block ~0 ~-3 ~4 slot.container 2 ghast_tear 12
replaceitem block ~0 ~-3 ~4 slot.container 3 blaze_rod 13
replaceitem block ~0 ~-3 ~4 slot.container 4 coal 16
replaceitem block ~0 ~-3 ~4 slot.container 5 arrow 21
replaceitem block ~0 ~-3 ~4 slot.container 9 obsidian 13
replaceitem block ~0 ~-3 ~4 slot.container 10 crying_obsidian 12
replaceitem block ~0 ~-3 ~4 slot.container 11 netherite_scrap 1
replaceitem block ~0 ~-3 ~4 slot.container 12 golden_apple 3
replaceitem block ~0 ~-3 ~4 slot.container 13 soul_lantern 8
replaceitem block ~0 ~-3 ~4 slot.container 14 bone_block 15
loot insert ~0 ~-3 ~4 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~4 loot "chests/nether_bridge"
setblock ~0 ~-3 ~-4 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-4 slot.container 0 wither_skeleton_skull 3
replaceitem block ~0 ~-3 ~-4 slot.container 1 bone 19
replaceitem block ~0 ~-3 ~-4 slot.container 2 ghast_tear 10
replaceitem block ~0 ~-3 ~-4 slot.container 3 blaze_rod 11
replaceitem block ~0 ~-3 ~-4 slot.container 4 coal 22
replaceitem block ~0 ~-3 ~-4 slot.container 5 arrow 27
replaceitem block ~0 ~-3 ~-4 slot.container 9 obsidian 12
replaceitem block ~0 ~-3 ~-4 slot.container 10 crying_obsidian 11
replaceitem block ~0 ~-3 ~-4 slot.container 11 netherite_scrap 7
replaceitem block ~0 ~-3 ~-4 slot.container 12 golden_apple 2
replaceitem block ~0 ~-3 ~-4 slot.container 13 soul_lantern 7
replaceitem block ~0 ~-3 ~-4 slot.container 14 bone_block 14
loot insert ~0 ~-3 ~-4 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~-4 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (grand_acropolis) ---
fill ~-7 ~1 ~-1 ~7 ~8 ~6 nether_brick []
fill ~-6 ~1 ~0 ~6 ~7 ~5 air []
fill ~-7 ~1 ~-6 ~-7 ~8 ~-6 basalt []
fill ~-5 ~1 ~-6 ~-5 ~8 ~-6 basalt []
fill ~-3 ~1 ~-6 ~-3 ~8 ~-6 basalt []
fill ~-1 ~1 ~-6 ~-1 ~8 ~-6 basalt []
fill ~1 ~1 ~-6 ~1 ~8 ~-6 basalt []
fill ~3 ~1 ~-6 ~3 ~8 ~-6 basalt []
fill ~5 ~1 ~-6 ~5 ~8 ~-6 basalt []
fill ~7 ~1 ~-6 ~7 ~8 ~-6 basalt []
fill ~-7 ~8 ~-6 ~7 ~8 ~-1 bone_block []
fill ~0 ~1 ~-1 ~0 ~3 ~-1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~8 ~-5 ~6 ~8 ~5 blackstone_slab []
fill ~-4 ~9 ~-3 ~4 ~10 ~3 polished_blackstone_bricks []
fill ~-5 ~11 ~-4 ~5 ~11 ~4 polished_blackstone_brick_slab []
setblock ~0 ~12 ~0 ancient_debris []
setblock ~0 ~13 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 basalt []
setblock ~-9 ~5 ~-8 soul_lantern []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 basalt []
setblock ~-9 ~5 ~8 soul_lantern []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 basalt []
setblock ~9 ~5 ~-8 soul_lantern []
fill ~9 ~0 ~8 ~9 ~4 ~8 basalt []
setblock ~9 ~5 ~8 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x9x4) ---
fill ~-9 ~0 ~-3 ~-9 ~6 ~-3 bone_block []
fill ~9 ~0 ~-3 ~9 ~6 ~-3 bone_block []
fill ~-9 ~7 ~-3 ~9 ~7 ~-3 bone_block []
setblock ~0 ~8 ~-3 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~7 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 gilded_blackstone []
setblock ~0 ~1 ~0 ancient_debris []
setblock ~0 ~2 ~0 soul_lantern []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 ghast_tear 7
replaceitem block ~6 ~1 ~4 slot.container 1 blaze_rod 8
replaceitem block ~6 ~1 ~4 slot.container 2 coal 19
replaceitem block ~6 ~1 ~4 slot.container 3 arrow 24
replaceitem block ~6 ~1 ~4 slot.container 4 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 5 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 9 gold_ingot 14
replaceitem block ~6 ~1 ~4 slot.container 10 quartz 16
replaceitem block ~6 ~1 ~4 slot.container 11 obsidian 9
replaceitem block ~6 ~1 ~4 slot.container 12 crying_obsidian 8
replaceitem block ~6 ~1 ~4 slot.container 13 netherite_scrap 4
replaceitem block ~6 ~1 ~4 slot.container 14 golden_apple 6
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 coal 22
replaceitem block ~-6 ~1 ~5 slot.container 1 arrow 27
replaceitem block ~-6 ~1 ~5 slot.container 2 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 3 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~5 slot.container 5 bone 19
replaceitem block ~-6 ~1 ~5 slot.container 9 gold_ingot 12
replaceitem block ~-6 ~1 ~5 slot.container 10 quartz 21
replaceitem block ~-6 ~1 ~5 slot.container 11 obsidian 14
replaceitem block ~-6 ~1 ~5 slot.container 12 crying_obsidian 6
replaceitem block ~-6 ~1 ~5 slot.container 13 netherite_scrap 2
replaceitem block ~-6 ~1 ~5 slot.container 14 golden_apple 4
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

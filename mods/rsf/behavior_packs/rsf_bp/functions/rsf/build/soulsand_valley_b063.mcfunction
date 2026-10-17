# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3903/4224 | 主题内编号: b063/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·方尖碑镇压古墓穴 (soulsand_valley_crypt_obelisk_tomb)
# 建筑构造: 主体[octagonal_keep] + 屋顶[spire_obelisk] + 地宫[catacomb_crypt] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace fire
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace air
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 soul_soil []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (catacomb_crypt) ---
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 polished_blackstone_bricks []
fill ~-4 ~-5 ~-1 ~4 ~-2 ~1 air []
fill ~-1 ~-5 ~-3 ~1 ~-2 ~3 air []
fill ~0 ~-5 ~0 ~0 ~0 ~0 ladder ["facing_direction"=2]
setblock ~-3 ~-5 ~0 soul_lantern []
setblock ~3 ~-5 ~0 soul_lantern []
setblock ~0 ~-3 ~2 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~2 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-3 ~2 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-3 ~2 slot.container 2 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~2 slot.container 3 bone 21
replaceitem block ~0 ~-3 ~2 slot.container 4 ghast_tear 12
replaceitem block ~0 ~-3 ~2 slot.container 5 blaze_rod 13
replaceitem block ~0 ~-3 ~2 slot.container 9 soul_sand 19
replaceitem block ~0 ~-3 ~2 slot.container 10 soul_soil 20
replaceitem block ~0 ~-3 ~2 slot.container 11 gold_ingot 13
replaceitem block ~0 ~-3 ~2 slot.container 12 quartz 22
replaceitem block ~0 ~-3 ~2 slot.container 13 obsidian 8
replaceitem block ~0 ~-3 ~2 slot.container 14 crying_obsidian 7
loot insert ~0 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~2 loot "chests/nether_bridge"
setblock ~0 ~-3 ~-2 barrel ["facing_direction"=1]
replaceitem block ~0 ~-3 ~-2 slot.container 0 ender_pearl 4
replaceitem block ~0 ~-3 ~-2 slot.container 1 rotten_flesh 11
replaceitem block ~0 ~-3 ~-2 slot.container 2 wither_skeleton_skull 3
replaceitem block ~0 ~-3 ~-2 slot.container 3 bone 19
replaceitem block ~0 ~-3 ~-2 slot.container 4 ghast_tear 10
replaceitem block ~0 ~-3 ~-2 slot.container 5 blaze_rod 11
replaceitem block ~0 ~-3 ~-2 slot.container 9 soul_sand 18
replaceitem block ~0 ~-3 ~-2 slot.container 10 soul_soil 19
replaceitem block ~0 ~-3 ~-2 slot.container 11 gold_ingot 12
replaceitem block ~0 ~-3 ~-2 slot.container 12 quartz 21
replaceitem block ~0 ~-3 ~-2 slot.container 13 obsidian 14
replaceitem block ~0 ~-3 ~-2 slot.container 14 crying_obsidian 6
loot insert ~0 ~-3 ~-2 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~-2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~9 ~4 polished_blackstone_bricks []
fill ~-4 ~1 ~-3 ~4 ~8 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~10 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~10 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~10 ~4 air []
fill ~5 ~1 ~4 ~5 ~10 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~9 ~-3 basalt []
fill ~4 ~1 ~-3 ~4 ~9 ~-3 basalt []
fill ~-4 ~1 ~3 ~-4 ~9 ~3 basalt []
fill ~4 ~1 ~3 ~4 ~9 ~3 basalt []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 bone_block []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 polished_blackstone_bricks []
fill ~0 ~15 ~0 ~0 ~18 ~0 crying_obsidian []
setblock ~0 ~19 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-7 ~0 ~3 ~-7 basalt []
setblock ~0 ~4 ~-7 gold_block []
setblock ~0 ~5 ~-7 soul_lantern []
fill ~0 ~0 ~7 ~0 ~3 ~7 basalt []
setblock ~0 ~4 ~7 gold_block []
setblock ~0 ~5 ~7 soul_lantern []
fill ~-8 ~0 ~0 ~-8 ~3 ~0 basalt []
setblock ~-8 ~4 ~0 gold_block []
setblock ~-8 ~5 ~0 soul_lantern []
fill ~8 ~0 ~0 ~8 ~3 ~0 basalt []
setblock ~8 ~4 ~0 gold_block []
setblock ~8 ~5 ~0 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x6) ---
fill ~-7 ~0 ~0 ~-7 ~8 ~0 bone_block []
fill ~7 ~0 ~0 ~7 ~8 ~0 bone_block []
fill ~-7 ~9 ~0 ~7 ~9 ~0 bone_block []
setblock ~0 ~10 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~3 ~2 ~2 ~3 bookshelf []
setblock ~-4 ~1 ~0 lectern []
setblock ~4 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~2 slot.container 1 bone 16
replaceitem block ~4 ~1 ~2 slot.container 2 ghast_tear 7
replaceitem block ~4 ~1 ~2 slot.container 3 blaze_rod 8
replaceitem block ~4 ~1 ~2 slot.container 4 coal 19
replaceitem block ~4 ~1 ~2 slot.container 5 arrow 24
replaceitem block ~4 ~1 ~2 slot.container 9 soul_lantern 10
replaceitem block ~4 ~1 ~2 slot.container 10 bone_block 17
replaceitem block ~4 ~1 ~2 slot.container 11 soul_sand 22
replaceitem block ~4 ~1 ~2 slot.container 12 soul_soil 16
replaceitem block ~4 ~1 ~2 slot.container 13 gold_ingot 9
replaceitem block ~4 ~1 ~2 slot.container 14 quartz 18
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 ghast_tear 10
replaceitem block ~-4 ~1 ~3 slot.container 1 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 2 coal 22
replaceitem block ~-4 ~1 ~3 slot.container 3 arrow 27
replaceitem block ~-4 ~1 ~3 slot.container 4 ender_pearl 4
replaceitem block ~-4 ~1 ~3 slot.container 5 rotten_flesh 11
replaceitem block ~-4 ~1 ~3 slot.container 9 soul_lantern 8
replaceitem block ~-4 ~1 ~3 slot.container 10 bone_block 15
replaceitem block ~-4 ~1 ~3 slot.container 11 soul_sand 20
replaceitem block ~-4 ~1 ~3 slot.container 12 soul_soil 21
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 14
replaceitem block ~-4 ~1 ~3 slot.container 14 quartz 16
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

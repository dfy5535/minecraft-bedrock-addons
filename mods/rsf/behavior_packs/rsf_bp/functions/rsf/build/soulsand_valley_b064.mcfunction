# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3904/4224 | 主题内编号: b064/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·U型冥庭守墓人陵园 (soulsand_valley_crypt_courtyard_graveyard)
# 建筑构造: 主体[u_courtyard] + 屋顶[gabled_stairs] + 地宫[ossuary_tomb] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 bone_block [] replace air
fill ~-7 ~-6 ~-6 ~7 ~-1 ~6 bone_block [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-5 ~-5 ~6 ~-1 ~5 nether_brick []
fill ~-5 ~-6 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 polished_blackstone_bricks []
setblock ~0 ~-7 ~0 gilded_blackstone []
fill ~0 ~-6 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-6 ~0 soul_campfire []
setblock ~2 ~-6 ~0 soul_campfire []
setblock ~0 ~-4 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-4 ~-3 slot.container 0 blaze_rod 13
replaceitem block ~0 ~-4 ~-3 slot.container 1 coal 16
replaceitem block ~0 ~-4 ~-3 slot.container 2 arrow 21
replaceitem block ~0 ~-4 ~-3 slot.container 3 ender_pearl 6
replaceitem block ~0 ~-4 ~-3 slot.container 4 rotten_flesh 13
replaceitem block ~0 ~-4 ~-3 slot.container 5 wither_skeleton_skull 5
replaceitem block ~0 ~-4 ~-3 slot.container 9 golden_apple 3
replaceitem block ~0 ~-4 ~-3 slot.container 10 soul_lantern 8
replaceitem block ~0 ~-4 ~-3 slot.container 11 bone_block 15
replaceitem block ~0 ~-4 ~-3 slot.container 12 soul_sand 20
replaceitem block ~0 ~-4 ~-3 slot.container 13 soul_soil 21
replaceitem block ~0 ~-4 ~-3 slot.container 14 gold_ingot 14
loot insert ~0 ~-4 ~-3 loot "rsf/soulsand_valley"
loot insert ~0 ~-4 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 bone_block []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 polished_blackstone []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (gabled_stairs) ---
fill ~-7 ~7 ~-6 ~-7 ~7 ~6 nether_brick_stairs ["weirdo_direction"=0]
fill ~7 ~7 ~-6 ~7 ~7 ~6 nether_brick_stairs ["weirdo_direction"=1]
fill ~-6 ~8 ~-5 ~-6 ~8 ~5 nether_brick_stairs ["weirdo_direction"=0]
fill ~6 ~8 ~-5 ~6 ~8 ~5 nether_brick_stairs ["weirdo_direction"=1]
fill ~-5 ~8 ~-5 ~5 ~8 ~5 nether_brick_slab []
fill ~0 ~9 ~-6 ~0 ~9 ~6 polished_blackstone_bricks []

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

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x8x2) ---
fill ~-8 ~0 ~2 ~-8 ~4 ~2 bone_block []
fill ~8 ~0 ~2 ~8 ~4 ~2 bone_block []
fill ~-8 ~5 ~2 ~8 ~5 ~2 bone_block []
setblock ~0 ~6 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~4 composter []
setblock ~2 ~1 ~4 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 bone 16
replaceitem block ~-5 ~1 ~3 slot.container 1 ghast_tear 7
replaceitem block ~-5 ~1 ~3 slot.container 2 blaze_rod 8
replaceitem block ~-5 ~1 ~3 slot.container 3 coal 19
replaceitem block ~-5 ~1 ~3 slot.container 4 arrow 24
replaceitem block ~-5 ~1 ~3 slot.container 5 ender_pearl 9
replaceitem block ~-5 ~1 ~3 slot.container 9 soul_soil 21
replaceitem block ~-5 ~1 ~3 slot.container 10 gold_ingot 14
replaceitem block ~-5 ~1 ~3 slot.container 11 quartz 16
replaceitem block ~-5 ~1 ~3 slot.container 12 obsidian 9
replaceitem block ~-5 ~1 ~3 slot.container 13 crying_obsidian 8
replaceitem block ~-5 ~1 ~3 slot.container 14 netherite_scrap 4
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1

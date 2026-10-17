# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3876/4224 | 主题内编号: b036/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·下沉碑林地宫方尖碑 (soulsand_valley_obelisk_sunken_stele)
# 建筑构造: 主体[sunken_labyrinth] + 屋顶[spire_obelisk] + 地宫[portal_chamber] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_spawner_den]
# 建筑规模: 平面 13x11 | 地上高度 9格 | 地下深度 5格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~12 ~6 air [] replace fire
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 bone_block [] replace air
fill ~-6 ~-6 ~-5 ~6 ~-1 ~5 bone_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (portal_chamber) ---
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 bone_block []
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 obsidian []
setblock ~0 ~-4 ~0 crying_obsidian []
setblock ~0 ~-5 ~0 soul_lantern []
fill ~0 ~-4 ~-3 ~0 ~0 ~-3 ladder ["facing_direction"=3]
setblock ~4 ~-2 ~0 chest ["facing_direction"=4]
replaceitem block ~4 ~-2 ~0 slot.container 0 wither_skeleton_skull 5
replaceitem block ~4 ~-2 ~0 slot.container 1 bone 21
replaceitem block ~4 ~-2 ~0 slot.container 2 ghast_tear 12
replaceitem block ~4 ~-2 ~0 slot.container 3 blaze_rod 13
replaceitem block ~4 ~-2 ~0 slot.container 4 coal 16
replaceitem block ~4 ~-2 ~0 slot.container 5 arrow 21
replaceitem block ~4 ~-2 ~0 slot.container 9 netherite_scrap 3
replaceitem block ~4 ~-2 ~0 slot.container 10 golden_apple 5
replaceitem block ~4 ~-2 ~0 slot.container 11 soul_lantern 10
replaceitem block ~4 ~-2 ~0 slot.container 12 bone_block 17
replaceitem block ~4 ~-2 ~0 slot.container 13 soul_sand 22
replaceitem block ~4 ~-2 ~0 slot.container 14 soul_soil 16
loot insert ~4 ~-2 ~0 loot "rsf/soulsand_valley"
loot insert ~4 ~-2 ~0 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (sunken_labyrinth) ---
fill ~-5 ~1 ~-4 ~5 ~2 ~4 bone_block []
fill ~-4 ~1 ~-3 ~4 ~3 ~3 air []
fill ~-5 ~1 ~0 ~5 ~2 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~-4 ~0 ~2 ~4 polished_blackstone_bricks []
fill ~-1 ~1 ~-1 ~1 ~2 ~1 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~10 ~-2 ~2 ~11 ~2 polished_blackstone_bricks []
fill ~-1 ~12 ~-1 ~1 ~14 ~1 bone_block []
fill ~0 ~15 ~0 ~0 ~18 ~0 gold_block []
setblock ~0 ~19 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x6x4) ---
fill ~-7 ~0 ~1 ~-7 ~6 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~6 ~1 bone_block []
fill ~-7 ~7 ~1 ~7 ~7 ~1 bone_block []
setblock ~0 ~8 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_spawner_den) ---
setblock ~0 ~8 ~0 soul_lantern []
setblock ~0 ~1 ~0 gold_block []
setblock ~-2 ~1 ~2 cobblestone_wall []
setblock ~2 ~1 ~2 cobblestone_wall []
setblock ~0 ~2 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-4 ~1 ~2 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-4 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 9 golden_apple 7
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_lantern 12
replaceitem block ~-4 ~1 ~2 slot.container 11 bone_block 12
replaceitem block ~-4 ~1 ~2 slot.container 12 soul_sand 17
replaceitem block ~-4 ~1 ~2 slot.container 13 soul_soil 18
replaceitem block ~-4 ~1 ~2 slot.container 14 gold_ingot 11
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon wither_skeleton ~0 ~1 ~-1
summon skeleton ~-1 ~1 ~1

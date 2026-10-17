# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3874/4224 | 主题内编号: b034/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子对称铭文方尖碑 (soulsand_valley_obelisk_twin_monolith)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x9 | 地上高度 10格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-5 ~8 ~13 ~5 air [] replace lava
fill ~-8 ~0 ~-5 ~8 ~13 ~5 air [] replace fire
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 blackstone [] replace air
fill ~-7 ~-5 ~-4 ~7 ~-1 ~4 blackstone [] replace lava
fill ~-7 ~0 ~-4 ~7 ~0 ~4 blackstone_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone_bricks []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~11 ~3 blackstone []
fill ~2 ~1 ~-3 ~6 ~11 ~3 blackstone []
fill ~-5 ~1 ~-2 ~-3 ~10 ~2 air []
fill ~3 ~1 ~-2 ~5 ~10 ~2 air []
fill ~-2 ~8 ~-1 ~2 ~10 ~1 bone_block []
fill ~-3 ~9 ~0 ~3 ~9 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~11 ~-2 ~2 ~12 ~2 bone_block []
fill ~-1 ~13 ~-1 ~1 ~15 ~1 blackstone []
fill ~0 ~16 ~0 ~0 ~19 ~0 ancient_debris []
setblock ~0 ~20 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 bone_block []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 soul_campfire []
setblock ~2 ~4 ~-6 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x2) ---
fill ~-8 ~0 ~-1 ~-8 ~4 ~-1 bone_block []
fill ~8 ~0 ~-1 ~8 ~4 ~-1 bone_block []
fill ~-8 ~5 ~-1 ~8 ~5 ~-1 bone_block []
setblock ~0 ~6 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~9 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-5 ~1 ~1 ~-5 ~2 ~2 bookshelf []
setblock ~5 ~1 ~2 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~1 slot.container 0 blaze_rod 8
replaceitem block ~-5 ~1 ~1 slot.container 1 coal 19
replaceitem block ~-5 ~1 ~1 slot.container 2 arrow 24
replaceitem block ~-5 ~1 ~1 slot.container 3 ender_pearl 9
replaceitem block ~-5 ~1 ~1 slot.container 4 rotten_flesh 16
replaceitem block ~-5 ~1 ~1 slot.container 5 wither_skeleton_skull 8
replaceitem block ~-5 ~1 ~1 slot.container 9 soul_soil 19
replaceitem block ~-5 ~1 ~1 slot.container 10 gold_ingot 12
replaceitem block ~-5 ~1 ~1 slot.container 11 quartz 21
replaceitem block ~-5 ~1 ~1 slot.container 12 obsidian 14
replaceitem block ~-5 ~1 ~1 slot.container 13 crying_obsidian 6
replaceitem block ~-5 ~1 ~1 slot.container 14 netherite_scrap 2
loot insert ~-5 ~1 ~1 loot "rsf/soulsand_valley"
summon blaze ~0 ~1 ~-1
summon strider ~-1 ~1 ~1
summon wither_skeleton ~1 ~1 ~1

# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3935/4224 | 主题内编号: b095/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子灯笼守卫神龛 (soulsand_valley_shrine_twin_lantern_gate)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-5 ~8 ~10 ~5 air [] replace lava
fill ~-8 ~0 ~-5 ~8 ~10 ~5 air [] replace fire
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks [] replace air
fill ~-7 ~-3 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 soul_soil []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-3 ~6 ~-1 ~3 bone_block []

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-3 ~-2 ~8 ~3 polished_blackstone_bricks []
fill ~2 ~1 ~-3 ~6 ~8 ~3 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~-3 ~7 ~2 air []
fill ~3 ~1 ~-2 ~5 ~7 ~2 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 bone_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-3 ~-3 ~2 ~-3 air []
fill ~3 ~1 ~-3 ~3 ~2 ~-3 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 polished_blackstone_brick_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 bone_block []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 nether_brick_slab []
setblock ~0 ~11 ~0 crying_obsidian []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x4x3) ---
fill ~-8 ~0 ~0 ~-8 ~5 ~0 bone_block []
fill ~8 ~0 ~0 ~8 ~5 ~0 bone_block []
fill ~-8 ~6 ~0 ~8 ~6 ~0 bone_block []
setblock ~0 ~7 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~1 slot.container 1 bone 16
replaceitem block ~5 ~1 ~1 slot.container 2 ghast_tear 7
replaceitem block ~5 ~1 ~1 slot.container 3 blaze_rod 8
replaceitem block ~5 ~1 ~1 slot.container 4 coal 19
replaceitem block ~5 ~1 ~1 slot.container 5 arrow 24
replaceitem block ~5 ~1 ~1 slot.container 9 obsidian 9
replaceitem block ~5 ~1 ~1 slot.container 10 crying_obsidian 8
replaceitem block ~5 ~1 ~1 slot.container 11 netherite_scrap 4
replaceitem block ~5 ~1 ~1 slot.container 12 golden_apple 6
replaceitem block ~5 ~1 ~1 slot.container 13 soul_lantern 11
replaceitem block ~5 ~1 ~1 slot.container 14 bone_block 18
loot insert ~5 ~1 ~1 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ghast_tear 10
replaceitem block ~-5 ~1 ~2 slot.container 1 blaze_rod 11
replaceitem block ~-5 ~1 ~2 slot.container 2 coal 22
replaceitem block ~-5 ~1 ~2 slot.container 3 arrow 27
replaceitem block ~-5 ~1 ~2 slot.container 4 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 5 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 9 obsidian 14
replaceitem block ~-5 ~1 ~2 slot.container 10 crying_obsidian 6
replaceitem block ~-5 ~1 ~2 slot.container 11 netherite_scrap 2
replaceitem block ~-5 ~1 ~2 slot.container 12 golden_apple 4
replaceitem block ~-5 ~1 ~2 slot.container 13 soul_lantern 9
replaceitem block ~-5 ~1 ~2 slot.container 14 bone_block 16
loot insert ~-5 ~1 ~2 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~2 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~2 ~0

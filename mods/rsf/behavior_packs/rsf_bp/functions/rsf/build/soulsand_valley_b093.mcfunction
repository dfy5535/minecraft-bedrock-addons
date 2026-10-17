# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3933/4224 | 主题内编号: b093/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·U型庭院神道祈福祠 (soulsand_valley_shrine_courtyard_torii)
# 建筑构造: 主体[u_courtyard] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_lectern]
# 建筑规模: 平面 15x13 | 地上高度 6格 | 地下深度 2格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace lava
fill ~-8 ~0 ~-7 ~8 ~9 ~7 air [] replace fire
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 nether_brick [] replace air
fill ~-7 ~-3 ~-6 ~7 ~-1 ~6 nether_brick [] replace lava
fill ~-7 ~0 ~-6 ~7 ~0 ~6 nether_brick_slab [] replace air
fill ~-6 ~0 ~-5 ~6 ~0 ~5 polished_blackstone []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-5 ~6 ~-1 ~5 bone_block []

# --- [阶段 3] 主体平面与空间几何 (u_courtyard) ---
fill ~-6 ~1 ~-5 ~6 ~6 ~5 nether_brick []
fill ~-5 ~1 ~-4 ~5 ~5 ~4 air []
fill ~-2 ~1 ~-5 ~2 ~6 ~0 air []
fill ~-2 ~0 ~-5 ~2 ~0 ~0 polished_blackstone_bricks []
fill ~0 ~1 ~1 ~0 ~2 ~1 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 nether_brick_slab []
fill ~-5 ~7 ~-4 ~5 ~8 ~4 blackstone []
fill ~-6 ~9 ~-5 ~6 ~9 ~5 blackstone_slab []
setblock ~0 ~10 ~0 gilded_blackstone []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-8 ~1 ~-7 ~8 ~2 ~7 nether_brick_fence []
fill ~-7 ~1 ~-6 ~7 ~2 ~6 air []
fill ~-1 ~1 ~-7 ~1 ~2 ~-7 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x6) ---
fill ~-8 ~0 ~1 ~-8 ~8 ~1 bone_block []
fill ~8 ~0 ~1 ~8 ~8 ~1 bone_block []
fill ~-8 ~9 ~1 ~8 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_lectern) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~0 ~1 ~0 lectern []
fill ~-4 ~1 ~1 ~-4 ~2 ~3 bookshelf []
setblock ~4 ~1 ~3 cartography_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~3 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~3 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~3 slot.container 2 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~3 slot.container 3 bone 16
replaceitem block ~5 ~1 ~3 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~3 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~3 slot.container 9 soul_lantern 12
replaceitem block ~5 ~1 ~3 slot.container 10 bone_block 12
replaceitem block ~5 ~1 ~3 slot.container 11 soul_sand 17
replaceitem block ~5 ~1 ~3 slot.container 12 soul_soil 18
replaceitem block ~5 ~1 ~3 slot.container 13 gold_ingot 11
replaceitem block ~5 ~1 ~3 slot.container 14 quartz 20
loot insert ~5 ~1 ~3 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~4 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~4 slot.container 1 bone 19
replaceitem block ~-5 ~1 ~4 slot.container 2 ghast_tear 10
replaceitem block ~-5 ~1 ~4 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~4 slot.container 4 coal 22
replaceitem block ~-5 ~1 ~4 slot.container 5 arrow 27
replaceitem block ~-5 ~1 ~4 slot.container 9 soul_lantern 10
replaceitem block ~-5 ~1 ~4 slot.container 10 bone_block 17
replaceitem block ~-5 ~1 ~4 slot.container 11 soul_sand 22
replaceitem block ~-5 ~1 ~4 slot.container 12 soul_soil 16
replaceitem block ~-5 ~1 ~4 slot.container 13 gold_ingot 9
replaceitem block ~-5 ~1 ~4 slot.container 14 quartz 18
loot insert ~-5 ~1 ~4 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~4 loot "chests/nether_bridge"
summon zombie_pigman ~0 ~1 ~-1
summon blaze ~-1 ~1 ~1

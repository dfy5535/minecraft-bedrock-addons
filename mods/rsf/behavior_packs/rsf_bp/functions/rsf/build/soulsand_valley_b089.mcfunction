# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3929/4224 | 主题内编号: b089/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·四柱挑檐祈愿凉亭 (soulsand_valley_shrine_four_pillar_pavilion)
# 建筑构造: 主体[rect_hall] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 11x9 | 地上高度 7格 | 地下深度 2格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-6 ~0 ~-5 ~6 ~10 ~5 air [] replace lava
fill ~-6 ~0 ~-5 ~6 ~10 ~5 air [] replace fire
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 nether_brick [] replace air
fill ~-5 ~-3 ~-4 ~5 ~-1 ~4 nether_brick [] replace lava
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick_slab [] replace air
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
fill ~-3 ~0 ~-2 ~3 ~0 ~2 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-4 ~-2 ~-3 ~4 ~-1 ~3 bone_block []

# --- [阶段 3] 主体平面与空间几何 (rect_hall) ---
fill ~-4 ~1 ~-3 ~4 ~7 ~3 nether_brick []
fill ~-3 ~1 ~-2 ~3 ~6 ~2 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 basalt []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 basalt []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 basalt []
fill ~4 ~1 ~3 ~4 ~7 ~3 basalt []
fill ~0 ~1 ~-3 ~0 ~2 ~-3 air []
setblock ~-4 ~2 ~0 nether_brick_fence []
setblock ~4 ~2 ~0 nether_brick_fence []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-5 ~7 ~-4 ~5 ~7 ~4 nether_brick_slab []
fill ~-3 ~8 ~-2 ~3 ~9 ~2 blackstone []
fill ~-4 ~10 ~-3 ~4 ~10 ~3 blackstone_slab []
setblock ~0 ~11 ~0 gilded_blackstone []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 6x4x2) ---
fill ~-6 ~0 ~0 ~-6 ~4 ~0 bone_block []
fill ~6 ~0 ~0 ~6 ~4 ~0 bone_block []
fill ~-6 ~5 ~0 ~6 ~5 ~0 bone_block []
setblock ~0 ~6 ~0 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~5 blast_furnace []
setblock ~-4 ~1 ~5 furnace []
setblock ~0 ~1 ~5 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~3 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~3 ~1 ~1 slot.container 0 ghast_tear 7
replaceitem block ~3 ~1 ~1 slot.container 1 blaze_rod 8
replaceitem block ~3 ~1 ~1 slot.container 2 coal 19
replaceitem block ~3 ~1 ~1 slot.container 3 arrow 24
replaceitem block ~3 ~1 ~1 slot.container 4 ender_pearl 9
replaceitem block ~3 ~1 ~1 slot.container 5 rotten_flesh 16
replaceitem block ~3 ~1 ~1 slot.container 9 netherite_scrap 3
replaceitem block ~3 ~1 ~1 slot.container 10 golden_apple 5
replaceitem block ~3 ~1 ~1 slot.container 11 soul_lantern 10
replaceitem block ~3 ~1 ~1 slot.container 12 bone_block 17
replaceitem block ~3 ~1 ~1 slot.container 13 soul_sand 22
replaceitem block ~3 ~1 ~1 slot.container 14 soul_soil 16
loot insert ~3 ~1 ~1 loot "rsf/soulsand_valley"
setblock ~-3 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-3 ~1 ~2 slot.container 0 coal 22
replaceitem block ~-3 ~1 ~2 slot.container 1 arrow 27
replaceitem block ~-3 ~1 ~2 slot.container 2 ender_pearl 4
replaceitem block ~-3 ~1 ~2 slot.container 3 rotten_flesh 11
replaceitem block ~-3 ~1 ~2 slot.container 4 wither_skeleton_skull 3
replaceitem block ~-3 ~1 ~2 slot.container 5 bone 19
replaceitem block ~-3 ~1 ~2 slot.container 9 netherite_scrap 1
replaceitem block ~-3 ~1 ~2 slot.container 10 golden_apple 3
replaceitem block ~-3 ~1 ~2 slot.container 11 soul_lantern 8
replaceitem block ~-3 ~1 ~2 slot.container 12 bone_block 15
replaceitem block ~-3 ~1 ~2 slot.container 13 soul_sand 20
replaceitem block ~-3 ~1 ~2 slot.container 14 soul_soil 21
loot insert ~-3 ~1 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~1 ~2 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~2 ~0

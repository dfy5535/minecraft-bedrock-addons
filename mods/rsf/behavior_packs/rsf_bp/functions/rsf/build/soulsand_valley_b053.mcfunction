# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3893/4224 | 主题内编号: b053/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·测绘师观景制图站 (soulsand_valley_outpost_cartographer_post)
# 建筑构造: 主体[octagonal_keep] + 屋顶[pyramid_stepped] + 地宫[none] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_living]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 nether_brick [] replace air
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 nether_brick [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 polished_blackstone []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-5 ~-2 ~-4 ~5 ~-1 ~4 bone_block []

# --- [阶段 3] 主体平面与空间几何 (octagonal_keep) ---
fill ~-5 ~1 ~-4 ~5 ~7 ~4 nether_brick []
fill ~-4 ~1 ~-3 ~4 ~6 ~3 air []
fill ~-5 ~1 ~-4 ~-5 ~8 ~-4 air []
fill ~5 ~1 ~-4 ~5 ~8 ~-4 air []
fill ~-5 ~1 ~4 ~-5 ~8 ~4 air []
fill ~5 ~1 ~4 ~5 ~8 ~4 air []
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 basalt []
fill ~4 ~1 ~-3 ~4 ~7 ~-3 basalt []
fill ~-4 ~1 ~3 ~-4 ~7 ~3 basalt []
fill ~4 ~1 ~3 ~4 ~7 ~3 basalt []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pyramid_stepped) ---
fill ~-5 ~8 ~-4 ~5 ~8 ~4 bone_block []
fill ~-4 ~9 ~-3 ~4 ~9 ~3 blackstone []
fill ~-1 ~10 ~-1 ~1 ~10 ~1 gilded_blackstone []
setblock ~0 ~11 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x6) ---
fill ~-7 ~0 ~-2 ~-7 ~8 ~-2 bone_block []
fill ~7 ~0 ~-2 ~7 ~8 ~-2 bone_block []
fill ~-7 ~9 ~-2 ~7 ~9 ~-2 bone_block []
setblock ~0 ~10 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_living) ---
setblock ~0 ~5 ~0 soul_lantern []
setblock ~-5 ~1 ~4 crafting_table []
setblock ~-4 ~1 ~4 furnace []
setblock ~5 ~1 ~0 bookshelf []
setblock ~0 ~1 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~4 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~4 ~1 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~4 ~1 ~2 slot.container 2 wither_skeleton_skull 8
replaceitem block ~4 ~1 ~2 slot.container 3 bone 16
replaceitem block ~4 ~1 ~2 slot.container 4 ghast_tear 7
replaceitem block ~4 ~1 ~2 slot.container 5 blaze_rod 8
replaceitem block ~4 ~1 ~2 slot.container 9 soul_lantern 7
replaceitem block ~4 ~1 ~2 slot.container 10 bone_block 14
replaceitem block ~4 ~1 ~2 slot.container 11 soul_sand 19
replaceitem block ~4 ~1 ~2 slot.container 12 soul_soil 20
replaceitem block ~4 ~1 ~2 slot.container 13 gold_ingot 13
replaceitem block ~4 ~1 ~2 slot.container 14 quartz 22
loot insert ~4 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-4 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~3 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-4 ~1 ~3 slot.container 1 bone 19
replaceitem block ~-4 ~1 ~3 slot.container 2 ghast_tear 10
replaceitem block ~-4 ~1 ~3 slot.container 3 blaze_rod 11
replaceitem block ~-4 ~1 ~3 slot.container 4 coal 22
replaceitem block ~-4 ~1 ~3 slot.container 5 arrow 27
replaceitem block ~-4 ~1 ~3 slot.container 9 soul_lantern 12
replaceitem block ~-4 ~1 ~3 slot.container 10 bone_block 12
replaceitem block ~-4 ~1 ~3 slot.container 11 soul_sand 17
replaceitem block ~-4 ~1 ~3 slot.container 12 soul_soil 18
replaceitem block ~-4 ~1 ~3 slot.container 13 gold_ingot 11
replaceitem block ~-4 ~1 ~3 slot.container 14 quartz 20
loot insert ~-4 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-4 ~1 ~3 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~2 ~0

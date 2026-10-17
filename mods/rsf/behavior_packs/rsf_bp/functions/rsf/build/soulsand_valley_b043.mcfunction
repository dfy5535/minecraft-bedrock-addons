# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3883/4224 | 主题内编号: b043/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·十字四门试炼擂台 (soulsand_valley_arena_cross_gauntlet)
# 建筑构造: 主体[cross_sanctuary] + 屋顶[battlement_flat] + 地宫[none] + 外翼[four_corner_pylons] + 地形专有结构 + 内饰[kit_beacon_base]
# 建筑规模: 平面 17x15 | 地上高度 6格 | 地下深度 2格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace lava
fill ~-9 ~0 ~-8 ~9 ~9 ~8 air [] replace fire
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace air
fill ~-8 ~-3 ~-7 ~8 ~-1 ~7 polished_blackstone_bricks [] replace lava
fill ~-8 ~0 ~-7 ~8 ~0 ~7 polished_blackstone_brick_slab [] replace air
fill ~-7 ~0 ~-6 ~7 ~0 ~6 soul_soil []
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

# --- [阶段 2] 地下结构 (none) ---
fill ~-7 ~-2 ~-6 ~7 ~-1 ~6 bone_block []

# --- [阶段 3] 主体平面与空间几何 (cross_sanctuary) ---
fill ~-2 ~1 ~-6 ~2 ~6 ~6 polished_blackstone_bricks []
fill ~-7 ~1 ~-2 ~7 ~6 ~2 polished_blackstone_bricks []
fill ~-1 ~1 ~-5 ~1 ~5 ~5 air []
fill ~-6 ~1 ~-1 ~6 ~5 ~1 air []
fill ~0 ~1 ~-6 ~0 ~2 ~-6 air []
fill ~0 ~1 ~6 ~0 ~2 ~6 air []
setblock ~-7 ~2 ~0 polished_blackstone_wall []
setblock ~7 ~2 ~0 polished_blackstone_wall []

# --- [阶段 4] 屋顶与天际线构造 (battlement_flat) ---
fill ~-7 ~6 ~-6 ~7 ~6 ~6 bone_block []
fill ~-7 ~7 ~-6 ~7 ~7 ~6 polished_blackstone_wall []
fill ~-6 ~7 ~-5 ~6 ~7 ~5 air []
setblock ~-7 ~7 ~-6 basalt []
setblock ~-7 ~8 ~-6 soul_lantern []
setblock ~-7 ~7 ~6 basalt []
setblock ~-7 ~8 ~6 soul_lantern []
setblock ~7 ~7 ~-6 basalt []
setblock ~7 ~8 ~-6 soul_lantern []
setblock ~7 ~7 ~6 basalt []
setblock ~7 ~8 ~6 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (four_corner_pylons) ---
fill ~-9 ~0 ~-8 ~-9 ~4 ~-8 chiseled_polished_blackstone []
setblock ~-9 ~5 ~-8 soul_campfire []
fill ~-9 ~0 ~8 ~-9 ~4 ~8 chiseled_polished_blackstone []
setblock ~-9 ~5 ~8 soul_campfire []
fill ~9 ~0 ~-8 ~9 ~4 ~-8 chiseled_polished_blackstone []
setblock ~9 ~5 ~-8 soul_campfire []
fill ~9 ~0 ~8 ~9 ~4 ~8 chiseled_polished_blackstone []
setblock ~9 ~5 ~8 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x9x6) ---
fill ~-9 ~0 ~-3 ~-9 ~8 ~-3 bone_block []
fill ~9 ~0 ~-3 ~9 ~8 ~-3 bone_block []
fill ~-9 ~9 ~-3 ~9 ~9 ~-3 bone_block []
setblock ~0 ~10 ~-3 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_beacon_base) ---
setblock ~0 ~6 ~0 soul_lantern []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 ancient_debris []
setblock ~0 ~1 ~0 crying_obsidian []
setblock ~0 ~2 ~0 soul_campfire []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~6 ~1 ~4 chest ["facing_direction"=2]
replaceitem block ~6 ~1 ~4 slot.container 0 coal 19
replaceitem block ~6 ~1 ~4 slot.container 1 arrow 24
replaceitem block ~6 ~1 ~4 slot.container 2 ender_pearl 9
replaceitem block ~6 ~1 ~4 slot.container 3 rotten_flesh 16
replaceitem block ~6 ~1 ~4 slot.container 4 wither_skeleton_skull 8
replaceitem block ~6 ~1 ~4 slot.container 5 bone 16
replaceitem block ~6 ~1 ~4 slot.container 9 soul_lantern 11
replaceitem block ~6 ~1 ~4 slot.container 10 bone_block 18
replaceitem block ~6 ~1 ~4 slot.container 11 soul_sand 16
replaceitem block ~6 ~1 ~4 slot.container 12 soul_soil 17
replaceitem block ~6 ~1 ~4 slot.container 13 gold_ingot 10
replaceitem block ~6 ~1 ~4 slot.container 14 quartz 19
loot insert ~6 ~1 ~4 loot "rsf/soulsand_valley"
setblock ~-6 ~1 ~5 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~5 slot.container 0 ender_pearl 4
replaceitem block ~-6 ~1 ~5 slot.container 1 rotten_flesh 11
replaceitem block ~-6 ~1 ~5 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-6 ~1 ~5 slot.container 3 bone 19
replaceitem block ~-6 ~1 ~5 slot.container 4 ghast_tear 10
replaceitem block ~-6 ~1 ~5 slot.container 5 blaze_rod 11
replaceitem block ~-6 ~1 ~5 slot.container 9 soul_lantern 9
replaceitem block ~-6 ~1 ~5 slot.container 10 bone_block 16
replaceitem block ~-6 ~1 ~5 slot.container 11 soul_sand 21
replaceitem block ~-6 ~1 ~5 slot.container 12 soul_soil 22
replaceitem block ~-6 ~1 ~5 slot.container 13 gold_ingot 8
replaceitem block ~-6 ~1 ~5 slot.container 14 quartz 17
loot insert ~-6 ~1 ~5 loot "rsf/soulsand_valley"
loot insert ~-6 ~1 ~5 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

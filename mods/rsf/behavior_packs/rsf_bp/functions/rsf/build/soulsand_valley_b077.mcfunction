# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3917/4224 | 主题内编号: b077/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子鸟居图腾神道 (soulsand_valley_totem_twin_spirit_gate)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[none] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_enchant]
# 建筑规模: 平面 15x11 | 地上高度 7格 | 地下深度 2格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~10 ~6 air [] replace fire
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 nether_brick [] replace air
fill ~-7 ~-3 ~-5 ~7 ~-1 ~5 nether_brick [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 nether_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (none) ---
fill ~-6 ~-2 ~-4 ~6 ~-1 ~4 bone_block []

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-6 ~1 ~-4 ~6 ~7 ~4 nether_brick []
fill ~-5 ~1 ~-3 ~5 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-5 ~7 ~7 ~5 nether_brick_slab []
fill ~-5 ~8 ~-3 ~5 ~9 ~3 blackstone []
fill ~-6 ~10 ~-4 ~6 ~10 ~4 blackstone_slab []
setblock ~0 ~11 ~0 gilded_blackstone []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x5x5) ---
fill ~-8 ~0 ~-2 ~-8 ~7 ~-2 bone_block []
fill ~8 ~0 ~-2 ~8 ~7 ~-2 bone_block []
fill ~-8 ~8 ~-2 ~8 ~8 ~-2 bone_block []
setblock ~0 ~9 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_enchant) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 enchanting_table []
fill ~-2 ~1 ~4 ~2 ~2 ~4 bookshelf []
setblock ~-5 ~1 ~0 lectern []
setblock ~5 ~1 ~0 amethyst_block []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~2 slot.container 2 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~2 slot.container 3 bone 16
replaceitem block ~5 ~1 ~2 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~2 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~2 slot.container 9 soul_sand 20
replaceitem block ~5 ~1 ~2 slot.container 10 soul_soil 21
replaceitem block ~5 ~1 ~2 slot.container 11 gold_ingot 14
replaceitem block ~5 ~1 ~2 slot.container 12 quartz 16
replaceitem block ~5 ~1 ~2 slot.container 13 obsidian 9
replaceitem block ~5 ~1 ~2 slot.container 14 crying_obsidian 8
loot insert ~5 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 19
replaceitem block ~-5 ~1 ~3 slot.container 2 ghast_tear 10
replaceitem block ~-5 ~1 ~3 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~3 slot.container 4 coal 22
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 27
replaceitem block ~-5 ~1 ~3 slot.container 9 soul_sand 18
replaceitem block ~-5 ~1 ~3 slot.container 10 soul_soil 19
replaceitem block ~-5 ~1 ~3 slot.container 11 gold_ingot 12
replaceitem block ~-5 ~1 ~3 slot.container 12 quartz 21
replaceitem block ~-5 ~1 ~3 slot.container 13 obsidian 14
replaceitem block ~-5 ~1 ~3 slot.container 14 crying_obsidian 6
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~3 loot "chests/nether_bridge"
summon strider ~0 ~1 ~-1
summon wither_skeleton ~-1 ~1 ~1
summon skeleton ~1 ~1 ~1
summon enderman ~0 ~2 ~0

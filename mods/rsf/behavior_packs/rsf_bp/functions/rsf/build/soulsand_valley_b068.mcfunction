# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3908/4224 | 主题内编号: b068/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·断裂凯旋高架拱廊 (soulsand_valley_ruin_broken_aqueduct)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[ruined_skylight] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cartography]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace fire
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 bone_block [] replace air
fill ~-8 ~-4 ~-5 ~8 ~-1 ~5 bone_block [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 nether_brick_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 nether_brick []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (ossuary_tomb) ---
fill ~-6 ~-3 ~-5 ~6 ~-1 ~5 bone_block []
fill ~-5 ~-4 ~-4 ~5 ~-1 ~4 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 bone_block []
setblock ~0 ~-5 ~0 gold_block []
fill ~0 ~-4 ~4 ~0 ~0 ~4 ladder ["facing_direction"=2]
setblock ~-2 ~-4 ~0 soul_lantern []
setblock ~2 ~-4 ~0 soul_lantern []
setblock ~0 ~-2 ~-3 chest ["facing_direction"=3]
replaceitem block ~0 ~-2 ~-3 slot.container 0 ender_pearl 6
replaceitem block ~0 ~-2 ~-3 slot.container 1 rotten_flesh 13
replaceitem block ~0 ~-2 ~-3 slot.container 2 wither_skeleton_skull 5
replaceitem block ~0 ~-2 ~-3 slot.container 3 bone 21
replaceitem block ~0 ~-2 ~-3 slot.container 4 ghast_tear 12
replaceitem block ~0 ~-2 ~-3 slot.container 5 blaze_rod 13
replaceitem block ~0 ~-2 ~-3 slot.container 9 obsidian 11
replaceitem block ~0 ~-2 ~-3 slot.container 10 crying_obsidian 10
replaceitem block ~0 ~-2 ~-3 slot.container 11 netherite_scrap 6
replaceitem block ~0 ~-2 ~-3 slot.container 12 golden_apple 8
replaceitem block ~0 ~-2 ~-3 slot.container 13 soul_lantern 6
replaceitem block ~0 ~-2 ~-3 slot.container 14 bone_block 13
loot insert ~0 ~-2 ~-3 loot "rsf/soulsand_valley"
loot insert ~0 ~-2 ~-3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (bridge_gatehouse) ---
fill ~-7 ~1 ~-4 ~7 ~7 ~4 bone_block []
fill ~-6 ~1 ~-3 ~6 ~6 ~3 air []
fill ~-1 ~1 ~-4 ~1 ~3 ~4 air []
fill ~-1 ~3 ~-4 ~1 ~3 ~-4 iron_bars []
fill ~-1 ~3 ~4 ~1 ~3 ~4 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (ruined_skylight) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 nether_brick_slab []
fill ~-1 ~6 ~-1 ~2 ~7 ~2 air []
fill ~-7 ~6 ~-1 ~-7 ~7 ~1 air []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-7 ~2 ~4 ~-5 polished_blackstone_bricks []
fill ~-1 ~1 ~-7 ~1 ~3 ~-5 air []
setblock ~-2 ~4 ~-7 soul_campfire []
setblock ~2 ~4 ~-7 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x5x6) ---
fill ~-9 ~0 ~1 ~-9 ~8 ~1 bone_block []
fill ~9 ~0 ~1 ~9 ~8 ~1 bone_block []
fill ~-9 ~9 ~1 ~9 ~9 ~1 bone_block []
setblock ~0 ~10 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cartography) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~-6 ~1 ~3 cartography_table []
setblock ~0 ~1 ~3 lectern []
setblock ~6 ~1 ~0 loom []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 arrow 24
replaceitem block ~-6 ~1 ~2 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~2 slot.container 2 rotten_flesh 16
replaceitem block ~-6 ~1 ~2 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~2 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 5 ghast_tear 7
replaceitem block ~-6 ~1 ~2 slot.container 9 quartz 18
replaceitem block ~-6 ~1 ~2 slot.container 10 obsidian 11
replaceitem block ~-6 ~1 ~2 slot.container 11 crying_obsidian 10
replaceitem block ~-6 ~1 ~2 slot.container 12 netherite_scrap 6
replaceitem block ~-6 ~1 ~2 slot.container 13 golden_apple 8
replaceitem block ~-6 ~1 ~2 slot.container 14 soul_lantern 6
loot insert ~-6 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~2 ~0

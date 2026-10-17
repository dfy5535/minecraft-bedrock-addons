# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3931/4224 | 主题内编号: b091/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·跨水拱桥水神小祠 (soulsand_valley_shrine_bridge_sanctum)
# 建筑构造: 主体[bridge_gatehouse] + 屋顶[pagoda_double] + 地宫[ossuary_tomb] + 外翼[archway_corridor] + 地形专有结构 + 内饰[kit_cauldron]
# 建筑规模: 平面 15x9 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-5 ~8 ~10 ~5 air [] replace lava
fill ~-8 ~0 ~-5 ~8 ~10 ~5 air [] replace fire
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks [] replace air
fill ~-7 ~-4 ~-4 ~7 ~-1 ~4 polished_blackstone_bricks [] replace lava
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone_brick_slab [] replace air
fill ~-6 ~0 ~-3 ~6 ~0 ~3 soul_soil []
fill ~-5 ~0 ~-2 ~5 ~0 ~2 nether_brick []
setblock ~0 ~0 ~0 crying_obsidian []

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
fill ~-6 ~1 ~-3 ~6 ~7 ~3 polished_blackstone_bricks []
fill ~-5 ~1 ~-2 ~5 ~6 ~2 air []
fill ~-1 ~1 ~-3 ~1 ~3 ~3 air []
fill ~-1 ~3 ~-3 ~1 ~3 ~-3 iron_bars []
fill ~-1 ~3 ~3 ~1 ~3 ~3 iron_bars []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-7 ~7 ~-4 ~7 ~7 ~4 polished_blackstone_brick_slab []
fill ~-5 ~8 ~-2 ~5 ~9 ~2 bone_block []
fill ~-6 ~10 ~-3 ~6 ~10 ~3 nether_brick_slab []
setblock ~0 ~11 ~0 crying_obsidian []
setblock ~0 ~12 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (archway_corridor) ---
fill ~-2 ~0 ~-6 ~2 ~4 ~-4 bone_block []
fill ~-1 ~1 ~-6 ~1 ~3 ~-4 air []
setblock ~-2 ~4 ~-6 soul_lantern []
setblock ~2 ~4 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x6x4) ---
fill ~-8 ~0 ~-1 ~-8 ~6 ~-1 bone_block []
fill ~8 ~0 ~-1 ~8 ~6 ~-1 bone_block []
fill ~-8 ~7 ~-1 ~8 ~7 ~-1 bone_block []
setblock ~0 ~8 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_cauldron) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 cauldron []
setblock ~-2 ~1 ~2 composter []
setblock ~2 ~1 ~2 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~1 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~1 slot.container 0 coal 19
replaceitem block ~5 ~1 ~1 slot.container 1 arrow 24
replaceitem block ~5 ~1 ~1 slot.container 2 ender_pearl 9
replaceitem block ~5 ~1 ~1 slot.container 3 rotten_flesh 16
replaceitem block ~5 ~1 ~1 slot.container 4 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~1 slot.container 5 bone 16
replaceitem block ~5 ~1 ~1 slot.container 9 gold_ingot 12
replaceitem block ~5 ~1 ~1 slot.container 10 quartz 21
replaceitem block ~5 ~1 ~1 slot.container 11 obsidian 14
replaceitem block ~5 ~1 ~1 slot.container 12 crying_obsidian 6
replaceitem block ~5 ~1 ~1 slot.container 13 netherite_scrap 2
replaceitem block ~5 ~1 ~1 slot.container 14 golden_apple 4
loot insert ~5 ~1 ~1 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~2 slot.container 0 ender_pearl 4
replaceitem block ~-5 ~1 ~2 slot.container 1 rotten_flesh 11
replaceitem block ~-5 ~1 ~2 slot.container 2 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~2 slot.container 3 bone 19
replaceitem block ~-5 ~1 ~2 slot.container 4 ghast_tear 10
replaceitem block ~-5 ~1 ~2 slot.container 5 blaze_rod 11
replaceitem block ~-5 ~1 ~2 slot.container 9 gold_ingot 10
replaceitem block ~-5 ~1 ~2 slot.container 10 quartz 19
replaceitem block ~-5 ~1 ~2 slot.container 11 obsidian 12
replaceitem block ~-5 ~1 ~2 slot.container 12 crying_obsidian 11
replaceitem block ~-5 ~1 ~2 slot.container 13 netherite_scrap 7
replaceitem block ~-5 ~1 ~2 slot.container 14 golden_apple 2
loot insert ~-5 ~1 ~2 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~2 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

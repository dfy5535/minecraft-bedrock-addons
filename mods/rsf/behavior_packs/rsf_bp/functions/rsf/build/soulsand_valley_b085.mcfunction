# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3925/4224 | 主题内编号: b085/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子烟囱砖石窑厂 (soulsand_valley_mine_twin_kiln)
# 建筑构造: 主体[twin_towers] + 屋顶[spire_obelisk] + 地宫[aquifer_cistern] + 外翼[front_porch] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 15x11 | 地上高度 8格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace lava
fill ~-8 ~0 ~-6 ~8 ~11 ~6 air [] replace fire
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 nether_brick [] replace air
fill ~-7 ~-4 ~-5 ~7 ~-1 ~5 nether_brick [] replace lava
fill ~-7 ~0 ~-5 ~7 ~0 ~5 nether_brick_slab [] replace air
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone []
fill ~-5 ~0 ~-3 ~5 ~0 ~3 polished_blackstone_bricks []
setblock ~0 ~0 ~0 gilded_blackstone []

# --- [阶段 2] 地下结构 (aquifer_cistern) ---
fill ~-4 ~-4 ~-3 ~4 ~-1 ~3 bone_block []
fill ~-3 ~-5 ~-2 ~3 ~-1 ~2 air []
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 lava []
fill ~0 ~-5 ~-2 ~0 ~0 ~-2 ladder ["facing_direction"=3]
setblock ~0 ~-1 ~0 soul_lantern []
setblock ~-3 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~-3 ~-3 ~2 slot.container 0 wither_skeleton_skull 5
replaceitem block ~-3 ~-3 ~2 slot.container 1 bone 21
replaceitem block ~-3 ~-3 ~2 slot.container 2 ghast_tear 12
replaceitem block ~-3 ~-3 ~2 slot.container 3 blaze_rod 13
replaceitem block ~-3 ~-3 ~2 slot.container 4 coal 16
replaceitem block ~-3 ~-3 ~2 slot.container 5 arrow 21
replaceitem block ~-3 ~-3 ~2 slot.container 9 soul_sand 19
replaceitem block ~-3 ~-3 ~2 slot.container 10 soul_soil 20
replaceitem block ~-3 ~-3 ~2 slot.container 11 gold_ingot 13
replaceitem block ~-3 ~-3 ~2 slot.container 12 quartz 22
replaceitem block ~-3 ~-3 ~2 slot.container 13 obsidian 8
replaceitem block ~-3 ~-3 ~2 slot.container 14 crying_obsidian 7
loot insert ~-3 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~-3 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-6 ~1 ~-4 ~-2 ~9 ~4 nether_brick []
fill ~2 ~1 ~-4 ~6 ~9 ~4 nether_brick []
fill ~-5 ~1 ~-3 ~-3 ~8 ~3 air []
fill ~3 ~1 ~-3 ~5 ~8 ~3 air []
fill ~-2 ~6 ~-1 ~2 ~8 ~1 bone_block []
fill ~-3 ~7 ~0 ~3 ~7 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (spire_obelisk) ---
fill ~-2 ~9 ~-2 ~2 ~10 ~2 bone_block []
fill ~-1 ~11 ~-1 ~1 ~13 ~1 nether_brick []
fill ~0 ~14 ~0 ~0 ~17 ~0 gilded_blackstone []
setblock ~0 ~18 ~0 soul_lantern []

# --- [阶段 5] 外部附属建筑与护卫设施 (front_porch) ---
fill ~-2 ~0 ~-6 ~2 ~0 ~-5 bone_block []
fill ~-2 ~1 ~-6 ~-2 ~3 ~-6 basalt []
fill ~2 ~1 ~-6 ~2 ~3 ~-6 basalt []
fill ~-2 ~4 ~-6 ~2 ~4 ~-5 nether_brick_slab []
setblock ~0 ~3 ~-6 soul_lantern []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 8x7x3) ---
fill ~-8 ~0 ~-2 ~-8 ~5 ~-2 bone_block []
fill ~8 ~0 ~-2 ~8 ~5 ~-2 bone_block []
fill ~-8 ~6 ~-2 ~8 ~6 ~-2 bone_block []
setblock ~0 ~7 ~-2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~5 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~5 ~1 ~2 slot.container 0 ender_pearl 9
replaceitem block ~5 ~1 ~2 slot.container 1 rotten_flesh 16
replaceitem block ~5 ~1 ~2 slot.container 2 wither_skeleton_skull 8
replaceitem block ~5 ~1 ~2 slot.container 3 bone 16
replaceitem block ~5 ~1 ~2 slot.container 4 ghast_tear 7
replaceitem block ~5 ~1 ~2 slot.container 5 blaze_rod 8
replaceitem block ~5 ~1 ~2 slot.container 9 obsidian 13
replaceitem block ~5 ~1 ~2 slot.container 10 crying_obsidian 12
replaceitem block ~5 ~1 ~2 slot.container 11 netherite_scrap 1
replaceitem block ~5 ~1 ~2 slot.container 12 golden_apple 3
replaceitem block ~5 ~1 ~2 slot.container 13 soul_lantern 8
replaceitem block ~5 ~1 ~2 slot.container 14 bone_block 15
loot insert ~5 ~1 ~2 loot "rsf/soulsand_valley"
setblock ~-5 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-5 ~1 ~3 slot.container 0 wither_skeleton_skull 3
replaceitem block ~-5 ~1 ~3 slot.container 1 bone 19
replaceitem block ~-5 ~1 ~3 slot.container 2 ghast_tear 10
replaceitem block ~-5 ~1 ~3 slot.container 3 blaze_rod 11
replaceitem block ~-5 ~1 ~3 slot.container 4 coal 22
replaceitem block ~-5 ~1 ~3 slot.container 5 arrow 27
replaceitem block ~-5 ~1 ~3 slot.container 9 obsidian 11
replaceitem block ~-5 ~1 ~3 slot.container 10 crying_obsidian 10
replaceitem block ~-5 ~1 ~3 slot.container 11 netherite_scrap 6
replaceitem block ~-5 ~1 ~3 slot.container 12 golden_apple 8
replaceitem block ~-5 ~1 ~3 slot.container 13 soul_lantern 6
replaceitem block ~-5 ~1 ~3 slot.container 14 bone_block 13
loot insert ~-5 ~1 ~3 loot "rsf/soulsand_valley"
loot insert ~-5 ~1 ~3 loot "chests/nether_bridge"
summon skeleton ~0 ~1 ~-1
summon enderman ~-1 ~1 ~1
summon zombie_pigman ~1 ~1 ~1

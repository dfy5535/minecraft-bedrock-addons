# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3950/4224 | 主题内编号: b110/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子附魔与酿造实验楼 (soulsand_valley_arcane_twin_laboratory)
# 建筑构造: 主体[twin_towers] + 屋顶[pagoda_double] + 地宫[secret_cellar] + 外翼[perimeter_wall] + 地形专有结构 + 内饰[kit_foundry]
# 建筑规模: 平面 17x11 | 地上高度 7格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace lava
fill ~-9 ~0 ~-6 ~9 ~10 ~6 air [] replace fire
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 blackstone [] replace air
fill ~-8 ~-5 ~-5 ~8 ~-1 ~5 blackstone [] replace lava
fill ~-8 ~0 ~-5 ~8 ~0 ~5 blackstone_slab [] replace air
fill ~-7 ~0 ~-4 ~7 ~0 ~4 polished_blackstone_bricks []
fill ~-6 ~0 ~-3 ~6 ~0 ~3 soul_soil []
setblock ~0 ~0 ~0 ancient_debris []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-3 ~6 ~-1 ~3 polished_blackstone_bricks []
fill ~-5 ~-5 ~-2 ~5 ~-1 ~2 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~5 ~-3 ~2 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~2 slot.container 0 blaze_rod 13
replaceitem block ~5 ~-3 ~2 slot.container 1 coal 16
replaceitem block ~5 ~-3 ~2 slot.container 2 arrow 21
replaceitem block ~5 ~-3 ~2 slot.container 3 ender_pearl 6
replaceitem block ~5 ~-3 ~2 slot.container 4 rotten_flesh 13
replaceitem block ~5 ~-3 ~2 slot.container 5 wither_skeleton_skull 5
replaceitem block ~5 ~-3 ~2 slot.container 9 quartz 21
replaceitem block ~5 ~-3 ~2 slot.container 10 obsidian 14
replaceitem block ~5 ~-3 ~2 slot.container 11 crying_obsidian 6
replaceitem block ~5 ~-3 ~2 slot.container 12 netherite_scrap 2
replaceitem block ~5 ~-3 ~2 slot.container 13 golden_apple 4
replaceitem block ~5 ~-3 ~2 slot.container 14 soul_lantern 9
loot insert ~5 ~-3 ~2 loot "rsf/soulsand_valley"
loot insert ~5 ~-3 ~2 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-4 ~-2 ~8 ~4 blackstone []
fill ~2 ~1 ~-4 ~7 ~8 ~4 blackstone []
fill ~-6 ~1 ~-3 ~-3 ~7 ~3 air []
fill ~3 ~1 ~-3 ~6 ~7 ~3 air []
fill ~-2 ~5 ~-1 ~2 ~7 ~1 bone_block []
fill ~-3 ~6 ~0 ~3 ~6 ~0 air []
fill ~-3 ~1 ~-4 ~-3 ~2 ~-4 air []
fill ~3 ~1 ~-4 ~3 ~2 ~-4 air []

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-8 ~7 ~-5 ~8 ~7 ~5 blackstone_slab []
fill ~-6 ~8 ~-3 ~6 ~9 ~3 polished_blackstone_bricks []
fill ~-7 ~10 ~-4 ~7 ~10 ~4 polished_blackstone_brick_slab []
setblock ~0 ~11 ~0 ancient_debris []
setblock ~0 ~12 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (perimeter_wall) ---
fill ~-7 ~1 ~-6 ~7 ~2 ~6 nether_brick_fence []
fill ~-6 ~1 ~-5 ~6 ~2 ~5 air []
fill ~-1 ~1 ~-6 ~1 ~2 ~-6 air []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x5x3) ---
fill ~-9 ~0 ~-1 ~-9 ~5 ~-1 bone_block []
fill ~9 ~0 ~-1 ~9 ~5 ~-1 bone_block []
fill ~-9 ~6 ~-1 ~9 ~6 ~-1 bone_block []
setblock ~0 ~7 ~-1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_foundry) ---
setblock ~0 ~7 ~0 soul_lantern []
setblock ~-5 ~1 ~3 blast_furnace []
setblock ~-4 ~1 ~3 furnace []
setblock ~0 ~1 ~3 anvil []
setblock ~0 ~1 ~0 grindstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~2 slot.container 0 rotten_flesh 16
replaceitem block ~-6 ~1 ~2 slot.container 1 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~2 slot.container 2 bone 16
replaceitem block ~-6 ~1 ~2 slot.container 3 ghast_tear 7
replaceitem block ~-6 ~1 ~2 slot.container 4 blaze_rod 8
replaceitem block ~-6 ~1 ~2 slot.container 5 coal 19
replaceitem block ~-6 ~1 ~2 slot.container 9 bone_block 14
replaceitem block ~-6 ~1 ~2 slot.container 10 soul_sand 19
replaceitem block ~-6 ~1 ~2 slot.container 11 soul_soil 20
replaceitem block ~-6 ~1 ~2 slot.container 12 gold_ingot 13
replaceitem block ~-6 ~1 ~2 slot.container 13 quartz 22
replaceitem block ~-6 ~1 ~2 slot.container 14 obsidian 8
loot insert ~-6 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0

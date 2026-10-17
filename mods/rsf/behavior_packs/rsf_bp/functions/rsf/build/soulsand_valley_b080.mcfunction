# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3920/4224 | 主题内编号: b080/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·悬灯祈福图腾花坛 (soulsand_valley_totem_lantern_pavilion)
# 建筑构造: 主体[terrace_pavilion] + 屋顶[pagoda_double] + 地宫[trial_pit] + 外翼[totem_ring] + 地形专有结构 + 内饰[kit_campfire]
# 建筑规模: 平面 13x11 | 地上高度 7格 | 地下深度 3格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace lava
fill ~-7 ~0 ~-6 ~7 ~10 ~6 air [] replace fire
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bone_block [] replace air
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 bone_block [] replace lava
fill ~-6 ~0 ~-5 ~6 ~0 ~5 nether_brick_slab [] replace air
fill ~-5 ~0 ~-4 ~5 ~0 ~4 nether_brick []
fill ~-4 ~0 ~-3 ~4 ~0 ~3 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (trial_pit) ---
fill ~-6 ~-4 ~-5 ~6 ~-1 ~5 polished_blackstone_bricks []
fill ~-5 ~-5 ~-4 ~5 ~0 ~4 air []
fill ~-5 ~0 ~-4 ~5 ~0 ~4 iron_bars []
fill ~-1 ~0 ~-1 ~1 ~0 ~1 air []
setblock ~0 ~-5 ~0 crying_obsidian []
setblock ~-4 ~-5 ~-3 soul_lantern []
setblock ~4 ~-5 ~3 soul_lantern []
setblock ~0 ~-3 ~3 chest ["facing_direction"=2]
replaceitem block ~0 ~-3 ~3 slot.container 0 coal 16
replaceitem block ~0 ~-3 ~3 slot.container 1 arrow 21
replaceitem block ~0 ~-3 ~3 slot.container 2 ender_pearl 6
replaceitem block ~0 ~-3 ~3 slot.container 3 rotten_flesh 13
replaceitem block ~0 ~-3 ~3 slot.container 4 wither_skeleton_skull 5
replaceitem block ~0 ~-3 ~3 slot.container 5 bone 21
replaceitem block ~0 ~-3 ~3 slot.container 9 obsidian 13
replaceitem block ~0 ~-3 ~3 slot.container 10 crying_obsidian 12
replaceitem block ~0 ~-3 ~3 slot.container 11 netherite_scrap 1
replaceitem block ~0 ~-3 ~3 slot.container 12 golden_apple 3
replaceitem block ~0 ~-3 ~3 slot.container 13 soul_lantern 8
replaceitem block ~0 ~-3 ~3 slot.container 14 bone_block 15
loot insert ~0 ~-3 ~3 loot "rsf/soulsand_valley"
loot insert ~0 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (terrace_pavilion) ---
fill ~-5 ~1 ~-4 ~5 ~3 ~4 bone_block []
fill ~-4 ~1 ~-3 ~4 ~2 ~3 air []
fill ~-6 ~3 ~-5 ~6 ~3 ~5 nether_brick_slab []
fill ~-4 ~4 ~-3 ~4 ~7 ~3 nether_brick []
fill ~-3 ~4 ~-2 ~3 ~6 ~2 air []
fill ~0 ~1 ~-4 ~0 ~2 ~-4 air []
fill ~0 ~1 ~2 ~0 ~4 ~2 ladder ["facing_direction"=2]

# --- [阶段 4] 屋顶与天际线构造 (pagoda_double) ---
fill ~-6 ~7 ~-5 ~6 ~7 ~5 nether_brick_slab []
fill ~-4 ~8 ~-3 ~4 ~9 ~3 nether_brick []
fill ~-5 ~10 ~-4 ~5 ~10 ~4 nether_brick_slab []
setblock ~0 ~11 ~0 gold_block []
setblock ~0 ~12 ~0 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (totem_ring) ---
fill ~0 ~0 ~-6 ~0 ~3 ~-6 chiseled_nether_bricks []
setblock ~0 ~4 ~-6 gilded_blackstone []
setblock ~0 ~5 ~-6 soul_campfire []
fill ~0 ~0 ~6 ~0 ~3 ~6 chiseled_nether_bricks []
setblock ~0 ~4 ~6 gilded_blackstone []
setblock ~0 ~5 ~6 soul_campfire []
fill ~-7 ~0 ~0 ~-7 ~3 ~0 chiseled_nether_bricks []
setblock ~-7 ~4 ~0 gilded_blackstone []
setblock ~-7 ~5 ~0 soul_campfire []
fill ~7 ~0 ~0 ~7 ~3 ~0 chiseled_nether_bricks []
setblock ~7 ~4 ~0 gilded_blackstone []
setblock ~7 ~5 ~0 soul_campfire []

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 7x5x3) ---
fill ~-7 ~0 ~1 ~-7 ~5 ~1 bone_block []
fill ~7 ~0 ~1 ~7 ~5 ~1 bone_block []
fill ~-7 ~6 ~1 ~7 ~6 ~1 bone_block []
setblock ~0 ~7 ~1 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_campfire) ---
setblock ~0 ~6 ~0 soul_lantern []
setblock ~0 ~1 ~0 campfire []
setblock ~-4 ~1 ~3 smoker []
setblock ~4 ~1 ~3 crafting_table []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-4 ~1 ~2 chest ["facing_direction"=2]
replaceitem block ~-4 ~1 ~2 slot.container 0 bone 16
replaceitem block ~-4 ~1 ~2 slot.container 1 ghast_tear 7
replaceitem block ~-4 ~1 ~2 slot.container 2 blaze_rod 8
replaceitem block ~-4 ~1 ~2 slot.container 3 coal 19
replaceitem block ~-4 ~1 ~2 slot.container 4 arrow 24
replaceitem block ~-4 ~1 ~2 slot.container 5 ender_pearl 9
replaceitem block ~-4 ~1 ~2 slot.container 9 bone_block 12
replaceitem block ~-4 ~1 ~2 slot.container 10 soul_sand 17
replaceitem block ~-4 ~1 ~2 slot.container 11 soul_soil 18
replaceitem block ~-4 ~1 ~2 slot.container 12 gold_ingot 11
replaceitem block ~-4 ~1 ~2 slot.container 13 quartz 20
replaceitem block ~-4 ~1 ~2 slot.container 14 obsidian 13
loot insert ~-4 ~1 ~2 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~2 ~0

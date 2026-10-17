# ============================================================================
# RSF v3.0 完整版 | 全局建筑唯一编号: #3884/4224 | 主题内编号: b044/128
# 地形主题 #31: 下界灵魂沙峡谷与骨骸冥殿 (soulsand_valley) —— 带巨型骨块肋骨拱廊与灵魂火祭坛
# 建筑名称: 冥谷骸骨系·双子祭台勇士角斗场 (soulsand_valley_arena_twin_champion)
# 建筑构造: 主体[twin_towers] + 屋顶[open_colonnade] + 地宫[secret_cellar] + 外翼[camp_courtyard] + 地形专有结构 + 内饰[kit_prison]
# 建筑规模: 平面 17x13 | 地上高度 6格 | 地下深度 4格
# 适用群系: soulsand_valley
# ============================================================================

# --- [阶段 1] 环境清理与防悬空阶梯地基 ---
fill ~-9 ~0 ~-7 ~9 ~9 ~7 air [] replace lava
fill ~-9 ~0 ~-7 ~9 ~9 ~7 air [] replace fire
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 bone_block [] replace air
fill ~-8 ~-5 ~-6 ~8 ~-1 ~6 bone_block [] replace lava
fill ~-8 ~0 ~-6 ~8 ~0 ~6 nether_brick_slab [] replace air
fill ~-7 ~0 ~-5 ~7 ~0 ~5 nether_brick []
fill ~-6 ~0 ~-4 ~6 ~0 ~4 polished_blackstone []
setblock ~0 ~0 ~0 gold_block []

# --- [阶段 2] 地下结构 (secret_cellar) ---
fill ~-6 ~-4 ~-4 ~6 ~-1 ~4 nether_brick []
fill ~-5 ~-5 ~-3 ~5 ~-1 ~3 air []
fill ~-1 ~-5 ~-1 ~-1 ~0 ~-1 ladder ["facing_direction"=3]
setblock ~0 ~-5 ~0 soul_lantern []
setblock ~5 ~-3 ~3 barrel ["facing_direction"=1]
replaceitem block ~5 ~-3 ~3 slot.container 0 bone 21
replaceitem block ~5 ~-3 ~3 slot.container 1 ghast_tear 12
replaceitem block ~5 ~-3 ~3 slot.container 2 blaze_rod 13
replaceitem block ~5 ~-3 ~3 slot.container 3 coal 16
replaceitem block ~5 ~-3 ~3 slot.container 4 arrow 21
replaceitem block ~5 ~-3 ~3 slot.container 5 ender_pearl 6
replaceitem block ~5 ~-3 ~3 slot.container 9 crying_obsidian 8
replaceitem block ~5 ~-3 ~3 slot.container 10 netherite_scrap 4
replaceitem block ~5 ~-3 ~3 slot.container 11 golden_apple 6
replaceitem block ~5 ~-3 ~3 slot.container 12 soul_lantern 11
replaceitem block ~5 ~-3 ~3 slot.container 13 bone_block 18
replaceitem block ~5 ~-3 ~3 slot.container 14 soul_sand 16
loot insert ~5 ~-3 ~3 loot "rsf/soulsand_valley"
loot insert ~5 ~-3 ~3 loot "chests/nether_bridge"

# --- [阶段 3] 主体平面与空间几何 (twin_towers) ---
fill ~-7 ~1 ~-5 ~-2 ~7 ~5 bone_block []
fill ~2 ~1 ~-5 ~7 ~7 ~5 bone_block []
fill ~-6 ~1 ~-4 ~-3 ~6 ~4 air []
fill ~3 ~1 ~-4 ~6 ~6 ~4 air []
fill ~-2 ~4 ~-1 ~2 ~6 ~1 polished_blackstone_bricks []
fill ~-3 ~5 ~0 ~3 ~5 ~0 air []
fill ~-3 ~1 ~-5 ~-3 ~2 ~-5 air []
fill ~3 ~1 ~-5 ~3 ~2 ~-5 air []

# --- [阶段 4] 屋顶与天际线构造 (open_colonnade) ---
fill ~-7 ~6 ~-5 ~-7 ~8 ~-5 chiseled_nether_bricks []
setblock ~-7 ~9 ~-5 soul_campfire []
fill ~-7 ~6 ~5 ~-7 ~8 ~5 chiseled_nether_bricks []
setblock ~-7 ~9 ~5 soul_campfire []
fill ~7 ~6 ~-5 ~7 ~8 ~-5 chiseled_nether_bricks []
setblock ~7 ~9 ~-5 soul_campfire []
fill ~7 ~6 ~5 ~7 ~8 ~5 chiseled_nether_bricks []
setblock ~7 ~9 ~5 soul_campfire []

# --- [阶段 5] 外部附属建筑与护卫设施 (camp_courtyard) ---
fill ~-3 ~0 ~-7 ~3 ~0 ~-5 soul_soil []
setblock ~-2 ~1 ~-6 campfire []
setblock ~2 ~1 ~-6 hay_block []
setblock ~3 ~1 ~-6 barrel ["facing_direction"=1]

# --- [阶段 5.5] 地形专属标志性结构 (soulsand_valley 独有建筑构件 | 几何特征参数 9x6x2) ---
fill ~-9 ~0 ~2 ~-9 ~4 ~2 bone_block []
fill ~9 ~0 ~2 ~9 ~4 ~2 bone_block []
fill ~-9 ~5 ~2 ~9 ~5 ~2 bone_block []
setblock ~0 ~6 ~2 soul_campfire []

# --- [阶段 6] 室内生存设施与工作站组合 (kit_prison) ---
setblock ~0 ~4 ~0 soul_lantern []
fill ~-5 ~1 ~1 ~-1 ~3 ~1 iron_bars []
setblock ~-5 ~1 ~4 cauldron []
setblock ~5 ~1 ~0 gilded_blackstone []

# --- [阶段 7] 野生建筑宝箱填充 (怪物掉落物+生存物资) 与驻守实体群 ---
setblock ~-6 ~1 ~3 chest ["facing_direction"=2]
replaceitem block ~-6 ~1 ~3 slot.container 0 arrow 24
replaceitem block ~-6 ~1 ~3 slot.container 1 ender_pearl 9
replaceitem block ~-6 ~1 ~3 slot.container 2 rotten_flesh 16
replaceitem block ~-6 ~1 ~3 slot.container 3 wither_skeleton_skull 8
replaceitem block ~-6 ~1 ~3 slot.container 4 bone 16
replaceitem block ~-6 ~1 ~3 slot.container 5 ghast_tear 7
replaceitem block ~-6 ~1 ~3 slot.container 9 soul_soil 22
replaceitem block ~-6 ~1 ~3 slot.container 10 gold_ingot 8
replaceitem block ~-6 ~1 ~3 slot.container 11 quartz 17
replaceitem block ~-6 ~1 ~3 slot.container 12 obsidian 10
replaceitem block ~-6 ~1 ~3 slot.container 13 crying_obsidian 9
replaceitem block ~-6 ~1 ~3 slot.container 14 netherite_scrap 5
loot insert ~-6 ~1 ~3 loot "rsf/soulsand_valley"
summon enderman ~0 ~1 ~-1
summon zombie_pigman ~-1 ~1 ~1
summon blaze ~1 ~1 ~1
summon strider ~0 ~-3 ~0
